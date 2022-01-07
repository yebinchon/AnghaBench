; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_plane_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic_plane.c_intel_plane_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32 }
%struct.intel_plane_state = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_plane* @intel_plane_alloc() #0 {
  %1 = alloca %struct.intel_plane*, align 8
  %2 = alloca %struct.intel_plane_state*, align 8
  %3 = alloca %struct.intel_plane*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i8* @kzalloc(i32 4, i32 %4)
  %6 = bitcast i8* %5 to %struct.intel_plane*
  store %struct.intel_plane* %6, %struct.intel_plane** %3, align 8
  %7 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %8 = icmp ne %struct.intel_plane* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.intel_plane* @ERR_PTR(i32 %11)
  store %struct.intel_plane* %12, %struct.intel_plane** %1, align 8
  br label %34

13:                                               ; preds = %0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 8, i32 %14)
  %16 = bitcast i8* %15 to %struct.intel_plane_state*
  store %struct.intel_plane_state* %16, %struct.intel_plane_state** %2, align 8
  %17 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %18 = icmp ne %struct.intel_plane_state* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %21 = call i32 @kfree(%struct.intel_plane* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.intel_plane* @ERR_PTR(i32 %23)
  store %struct.intel_plane* %24, %struct.intel_plane** %1, align 8
  br label %34

25:                                               ; preds = %13
  %26 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %27 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %26, i32 0, i32 0
  %28 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %29 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %28, i32 0, i32 1
  %30 = call i32 @__drm_atomic_helper_plane_reset(i32* %27, i32* %29)
  %31 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %32 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  %33 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  store %struct.intel_plane* %33, %struct.intel_plane** %1, align 8
  br label %34

34:                                               ; preds = %25, %19, %9
  %35 = load %struct.intel_plane*, %struct.intel_plane** %1, align 8
  ret %struct.intel_plane* %35
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.intel_plane* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.intel_plane*) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
