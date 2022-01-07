; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-debug.c_hid_debug_events_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-debug.c_hid_debug_events_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.file = type { %struct.hid_debug_list* }
%struct.hid_debug_list = type { %struct.hid_device*, i32, i32, i32 }
%struct.hid_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_DEBUG_FIFOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hid_debug_events_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_debug_events_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_debug_list*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hid_debug_list* @kzalloc(i32 24, i32 %8)
  store %struct.hid_debug_list* %9, %struct.hid_debug_list** %6, align 8
  %10 = icmp ne %struct.hid_debug_list* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %16 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %15, i32 0, i32 3
  %17 = load i32, i32* @HID_DEBUG_FIFOSIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kfifo_alloc(i32* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %24 = call i32 @kfree(%struct.hid_debug_list* %23)
  br label %57

25:                                               ; preds = %14
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.hid_device*
  %30 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %31 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %30, i32 0, i32 0
  store %struct.hid_device* %29, %struct.hid_device** %31, align 8
  %32 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store %struct.hid_debug_list* %32, %struct.hid_debug_list** %34, align 8
  %35 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %36 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %39 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %38, i32 0, i32 0
  %40 = load %struct.hid_device*, %struct.hid_device** %39, align 8
  %41 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %45 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %44, i32 0, i32 1
  %46 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %47 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %46, i32 0, i32 0
  %48 = load %struct.hid_device*, %struct.hid_device** %47, align 8
  %49 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %45, i32* %49)
  %51 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %52 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %51, i32 0, i32 0
  %53 = load %struct.hid_device*, %struct.hid_device** %52, align 8
  %54 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %53, i32 0, i32 0
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %25, %22, %11
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.hid_debug_list* @kzalloc(i32, i32) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.hid_debug_list*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
