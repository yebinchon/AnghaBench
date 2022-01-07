; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_marker.c_vmw_fifo_lag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_marker.c_vmw_fifo_lag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_marker_queue = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmw_marker_queue*)* @vmw_fifo_lag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmw_fifo_lag(%struct.vmw_marker_queue* %0) #0 {
  %2 = alloca %struct.vmw_marker_queue*, align 8
  %3 = alloca i64, align 8
  store %struct.vmw_marker_queue* %0, %struct.vmw_marker_queue** %2, align 8
  %4 = load %struct.vmw_marker_queue*, %struct.vmw_marker_queue** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_marker_queue, %struct.vmw_marker_queue* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = call i64 (...) @ktime_get_raw_ns()
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.vmw_marker_queue*, %struct.vmw_marker_queue** %2, align 8
  %10 = getelementptr inbounds %struct.vmw_marker_queue, %struct.vmw_marker_queue* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = load %struct.vmw_marker_queue*, %struct.vmw_marker_queue** %2, align 8
  %14 = getelementptr inbounds %struct.vmw_marker_queue, %struct.vmw_marker_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, %12
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.vmw_marker_queue*, %struct.vmw_marker_queue** %2, align 8
  %19 = getelementptr inbounds %struct.vmw_marker_queue, %struct.vmw_marker_queue* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.vmw_marker_queue*, %struct.vmw_marker_queue** %2, align 8
  %21 = getelementptr inbounds %struct.vmw_marker_queue, %struct.vmw_marker_queue* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.vmw_marker_queue*, %struct.vmw_marker_queue** %2, align 8
  %24 = getelementptr inbounds %struct.vmw_marker_queue, %struct.vmw_marker_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  ret i64 %25
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ktime_get_raw_ns(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
