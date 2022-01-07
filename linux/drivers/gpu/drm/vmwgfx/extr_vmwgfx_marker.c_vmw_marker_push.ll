; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_marker.c_vmw_marker_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_marker.c_vmw_marker_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_marker_queue = type { i32, i32 }
%struct.vmw_marker = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_marker_push(%struct.vmw_marker_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_marker_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_marker*, align 8
  store %struct.vmw_marker_queue* %0, %struct.vmw_marker_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.vmw_marker* @kmalloc(i32 12, i32 %7)
  store %struct.vmw_marker* %8, %struct.vmw_marker** %6, align 8
  %9 = load %struct.vmw_marker*, %struct.vmw_marker** %6, align 8
  %10 = icmp ne %struct.vmw_marker* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.vmw_marker*, %struct.vmw_marker** %6, align 8
  %21 = getelementptr inbounds %struct.vmw_marker, %struct.vmw_marker* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = call i32 (...) @ktime_get_raw_ns()
  %23 = load %struct.vmw_marker*, %struct.vmw_marker** %6, align 8
  %24 = getelementptr inbounds %struct.vmw_marker, %struct.vmw_marker* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.vmw_marker_queue*, %struct.vmw_marker_queue** %4, align 8
  %26 = getelementptr inbounds %struct.vmw_marker_queue, %struct.vmw_marker_queue* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.vmw_marker*, %struct.vmw_marker** %6, align 8
  %29 = getelementptr inbounds %struct.vmw_marker, %struct.vmw_marker* %28, i32 0, i32 0
  %30 = load %struct.vmw_marker_queue*, %struct.vmw_marker_queue** %4, align 8
  %31 = getelementptr inbounds %struct.vmw_marker_queue, %struct.vmw_marker_queue* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.vmw_marker_queue*, %struct.vmw_marker_queue** %4, align 8
  %34 = getelementptr inbounds %struct.vmw_marker_queue, %struct.vmw_marker_queue* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %18, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.vmw_marker* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ktime_get_raw_ns(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
