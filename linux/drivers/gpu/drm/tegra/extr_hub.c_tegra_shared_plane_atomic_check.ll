; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tegra_plane_state = type { i32, i32, %struct.tegra_bo_tiling }
%struct.tegra_bo_tiling = type { i64 }
%struct.tegra_shared_plane = type { i32 }
%struct.tegra_dc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TEGRA_BO_TILING_MODE_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"hardware doesn't support block linear mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unsupported UV-plane configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @tegra_shared_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_shared_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.tegra_plane_state*, align 8
  %7 = alloca %struct.tegra_shared_plane*, align 8
  %8 = alloca %struct.tegra_bo_tiling*, align 8
  %9 = alloca %struct.tegra_dc*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %12 = call %struct.tegra_plane_state* @to_tegra_plane_state(%struct.drm_plane_state* %11)
  store %struct.tegra_plane_state* %12, %struct.tegra_plane_state** %6, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %14 = call %struct.tegra_shared_plane* @to_tegra_shared_plane(%struct.drm_plane* %13)
  store %struct.tegra_shared_plane* %14, %struct.tegra_shared_plane** %7, align 8
  %15 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %16 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %15, i32 0, i32 2
  store %struct.tegra_bo_tiling* %16, %struct.tegra_bo_tiling** %8, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.tegra_dc* @to_tegra_dc(i32 %19)
  store %struct.tegra_dc* %20, %struct.tegra_dc** %9, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %2
  store i32 0, i32* %3, align 4
  br label %115

31:                                               ; preds = %25
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %39, i32 0, i32 1
  %41 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %42 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %41, i32 0, i32 0
  %43 = call i32 @tegra_plane_format(i32 %38, i32* %40, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %115

48:                                               ; preds = %31
  %49 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %50 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.tegra_bo_tiling*, %struct.tegra_bo_tiling** %8, align 8
  %53 = call i32 @tegra_fb_get_tiling(%struct.TYPE_6__* %51, %struct.tegra_bo_tiling* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %115

58:                                               ; preds = %48
  %59 = load %struct.tegra_bo_tiling*, %struct.tegra_bo_tiling** %8, align 8
  %60 = getelementptr inbounds %struct.tegra_bo_tiling, %struct.tegra_bo_tiling* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TEGRA_BO_TILING_MODE_BLOCK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.tegra_dc*, %struct.tegra_dc** %9, align 8
  %66 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %115

75:                                               ; preds = %64, %58
  %76 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %77 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %105

84:                                               ; preds = %75
  %85 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %86 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %93 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %91, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %84
  %101 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %115

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104, %75
  %106 = load %struct.tegra_shared_plane*, %struct.tegra_shared_plane** %7, align 8
  %107 = getelementptr inbounds %struct.tegra_shared_plane, %struct.tegra_shared_plane* %106, i32 0, i32 0
  %108 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %109 = call i32 @tegra_plane_state_add(i32* %107, %struct.drm_plane_state* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %112, %100, %71, %56, %46, %30
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.tegra_plane_state* @to_tegra_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.tegra_shared_plane* @to_tegra_shared_plane(%struct.drm_plane*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local i32 @tegra_plane_format(i32, i32*, i32*) #1

declare dso_local i32 @tegra_fb_get_tiling(%struct.TYPE_6__*, %struct.tegra_bo_tiling*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @tegra_plane_state_add(i32*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
