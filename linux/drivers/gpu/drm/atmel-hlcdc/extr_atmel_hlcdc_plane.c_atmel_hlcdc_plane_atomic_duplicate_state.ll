; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i64 }
%struct.drm_plane = type { i32 }
%struct.atmel_hlcdc_plane_state = type { %struct.drm_plane_state }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane_state* (%struct.drm_plane*)* @atmel_hlcdc_plane_atomic_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane_state* @atmel_hlcdc_plane_atomic_duplicate_state(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %5 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(i32 %8)
  store %struct.atmel_hlcdc_plane_state* %9, %struct.atmel_hlcdc_plane_state** %4, align 8
  %10 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.atmel_hlcdc_plane_state* @kmemdup(%struct.atmel_hlcdc_plane_state* %10, i32 8, i32 %11)
  store %struct.atmel_hlcdc_plane_state* %12, %struct.atmel_hlcdc_plane_state** %5, align 8
  %13 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %14 = icmp ne %struct.atmel_hlcdc_plane_state* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %18 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %19 = call i64 @atmel_hlcdc_plane_alloc_dscrs(%struct.drm_plane* %17, %struct.atmel_hlcdc_plane_state* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %23 = call i32 @kfree(%struct.atmel_hlcdc_plane_state* %22)
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %39

24:                                               ; preds = %16
  %25 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %32 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @drm_framebuffer_get(i64 %34)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %37, i32 0, i32 0
  store %struct.drm_plane_state* %38, %struct.drm_plane_state** %2, align 8
  br label %39

39:                                               ; preds = %36, %21, %15
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  ret %struct.drm_plane_state* %40
}

declare dso_local %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(i32) #1

declare dso_local %struct.atmel_hlcdc_plane_state* @kmemdup(%struct.atmel_hlcdc_plane_state*, i32, i32) #1

declare dso_local i64 @atmel_hlcdc_plane_alloc_dscrs(%struct.drm_plane*, %struct.atmel_hlcdc_plane_state*) #1

declare dso_local i32 @kfree(%struct.atmel_hlcdc_plane_state*) #1

declare dso_local i32 @drm_framebuffer_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
