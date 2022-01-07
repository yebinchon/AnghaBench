; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_remove_from_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_remove_from_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32*, i32 }
%struct.drm_i915_file_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*)* @remove_from_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_client(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.drm_i915_file_private*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %4 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %5 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call %struct.drm_i915_file_private* @READ_ONCE(i32* %6)
  store %struct.drm_i915_file_private* %7, %struct.drm_i915_file_private** %3, align 8
  %8 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %9 = icmp ne %struct.drm_i915_file_private* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %17 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %22 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %21, i32 0, i32 1
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %25 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %20, %11
  %27 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  br label %31

31:                                               ; preds = %26, %10
  ret void
}

declare dso_local %struct.drm_i915_file_private* @READ_ONCE(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
