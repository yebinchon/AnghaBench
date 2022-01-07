; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c_vga_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c_vga_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vga_device = type { i32 }

@vga_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@vga_wait_queue = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_get(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vga_device*, align 8
  %9 = alloca %struct.vga_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %13 = call i32 (...) @vga_check_first_use()
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = icmp eq %struct.pci_dev* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call %struct.pci_dev* (...) @vga_default_device()
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = icmp eq %struct.pci_dev* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %74

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %69, %22
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @vga_lock, i64 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = call %struct.vga_device* @vgadev_find(%struct.pci_dev* %26)
  store %struct.vga_device* %27, %struct.vga_device** %8, align 8
  %28 = load %struct.vga_device*, %struct.vga_device** %8, align 8
  %29 = icmp eq %struct.vga_device* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %72

35:                                               ; preds = %23
  %36 = load %struct.vga_device*, %struct.vga_device** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.vga_device* @__vga_tryget(%struct.vga_device* %36, i32 %37)
  store %struct.vga_device* %38, %struct.vga_device** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %39)
  %41 = load %struct.vga_device*, %struct.vga_device** %9, align 8
  %42 = icmp eq %struct.vga_device* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %72

44:                                               ; preds = %35
  %45 = load i32, i32* @current, align 4
  %46 = call i32 @init_waitqueue_entry(i32* %11, i32 %45)
  %47 = call i32 @add_wait_queue(i32* @vga_wait_queue, i32* %11)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @set_current_state(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* @current, align 4
  %61 = call i64 @signal_pending(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @TASK_RUNNING, align 4
  %65 = call i32 @__set_current_state(i32 %64)
  %66 = call i32 @remove_wait_queue(i32* @vga_wait_queue, i32* %11)
  %67 = load i32, i32* @ERESTARTSYS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %72

69:                                               ; preds = %59, %54
  %70 = call i32 (...) @schedule()
  %71 = call i32 @remove_wait_queue(i32* @vga_wait_queue, i32* %11)
  br label %23

72:                                               ; preds = %63, %43, %30
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %21
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @vga_check_first_use(...) #1

declare dso_local %struct.pci_dev* @vga_default_device(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vga_device* @vgadev_find(%struct.pci_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.vga_device* @__vga_tryget(%struct.vga_device*, i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
