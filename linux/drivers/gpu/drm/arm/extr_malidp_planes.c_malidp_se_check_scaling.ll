; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_se_check_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_se_check_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { i32 }
%struct.malidp_crtc_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@MALIDP_ROTATED_MASK = common dso_local global i32 0, align 4
@DE_SMART = common dso_local global i32 0, align 4
@DE_GRAPHICS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malidp_plane*, %struct.drm_plane_state*)* @malidp_se_check_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_se_check_scaling(%struct.malidp_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.malidp_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.malidp_crtc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.malidp_plane* %0, %struct.malidp_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %12 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %13, i32 %16)
  store %struct.drm_crtc_state* %17, %struct.drm_crtc_state** %6, align 8
  %18 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %19 = icmp ne %struct.drm_crtc_state* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %106

23:                                               ; preds = %2
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %25 = call %struct.malidp_crtc_state* @to_malidp_crtc_state(%struct.drm_crtc_state* %24)
  store %struct.malidp_crtc_state* %25, %struct.malidp_crtc_state** %7, align 8
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %27 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %26, %struct.drm_crtc_state* %27, i32 0, i32 %28, i32 1, i32 1)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %106

34:                                               ; preds = %23
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %36 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MALIDP_ROTATED_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %43 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 16
  store i32 %45, i32* %8, align 4
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %47 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 16
  store i32 %49, i32* %9, align 4
  br label %59

50:                                               ; preds = %34
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %52 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 16
  store i32 %54, i32* %8, align 4
  %55 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %56 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 16
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %50, %41
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %61 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %67 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.malidp_plane*, %struct.malidp_plane** %4, align 8
  %73 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.malidp_crtc_state*, %struct.malidp_crtc_state** %7, align 8
  %79 = getelementptr inbounds %struct.malidp_crtc_state, %struct.malidp_crtc_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %106

82:                                               ; preds = %65, %59
  %83 = load %struct.malidp_plane*, %struct.malidp_plane** %4, align 8
  %84 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DE_SMART, align 4
  %89 = load i32, i32* @DE_GRAPHICS2, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %106

96:                                               ; preds = %82
  %97 = load %struct.malidp_plane*, %struct.malidp_plane** %4, align 8
  %98 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.malidp_crtc_state*, %struct.malidp_crtc_state** %7, align 8
  %103 = getelementptr inbounds %struct.malidp_crtc_state, %struct.malidp_crtc_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %96, %93, %71, %32, %20
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, i32) #1

declare dso_local %struct.malidp_crtc_state* @to_malidp_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
