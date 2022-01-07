; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, i32 }

@SVGA_SYNC_FIFOFULL = common dso_local global i32 0, align 4
@SVGA_CAP_IRQMASK = common dso_local global i32 0, align 4
@SVGA_IRQFLAG_FIFO_PROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, i32, i32, i64)* @vmw_fifo_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fifo_wait(%struct.vmw_private* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 1, i64* %10, align 8
  %11 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @vmw_fifo_is_full(%struct.vmw_private* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

20:                                               ; preds = %4
  %21 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %22 = load i32, i32* @SVGA_SYNC_FIFOFULL, align 4
  %23 = call i32 @vmw_fifo_ping_host(%struct.vmw_private* %21, i32 %22)
  %24 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %25 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SVGA_CAP_IRQMASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %20
  %31 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @vmw_fifo_wait_noirq(%struct.vmw_private* %31, i32 %32, i32 %33, i64 %34)
  store i32 %35, i32* %5, align 4
  br label %93

36:                                               ; preds = %20
  %37 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %38 = load i32, i32* @SVGA_IRQFLAG_FIFO_PROGRESS, align 4
  %39 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %40 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %39, i32 0, i32 1
  %41 = call i32 @vmw_generic_waiter_add(%struct.vmw_private* %37, i32 %38, i32* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %46 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @vmw_fifo_is_full(%struct.vmw_private* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @wait_event_interruptible_timeout(i32 %47, i32 %53, i64 %54)
  store i64 %55, i64* %10, align 8
  br label %68

56:                                               ; preds = %36
  %57 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %58 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @vmw_fifo_is_full(%struct.vmw_private* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @wait_event_timeout(i32 %59, i32 %65, i64 %66)
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %56, %44
  %69 = load i64, i64* %10, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i64, i64* @EBUSY, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %10, align 8
  br label %85

77:                                               ; preds = %68
  %78 = load i64, i64* %10, align 8
  %79 = icmp sgt i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @likely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i64 0, i64* %10, align 8
  br label %84

84:                                               ; preds = %83, %77
  br label %85

85:                                               ; preds = %84, %74
  %86 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %87 = load i32, i32* @SVGA_IRQFLAG_FIFO_PROGRESS, align 4
  %88 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %89 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %88, i32 0, i32 1
  %90 = call i32 @vmw_generic_waiter_remove(%struct.vmw_private* %86, i32 %87, i32* %89)
  %91 = load i64, i64* %10, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %85, %30, %19
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vmw_fifo_is_full(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_fifo_ping_host(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_fifo_wait_noirq(%struct.vmw_private*, i32, i32, i64) #1

declare dso_local i32 @vmw_generic_waiter_add(%struct.vmw_private*, i32, i32*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_generic_waiter_remove(%struct.vmw_private*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
