; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tegra_plane_state = type { i32, i32, i32, %struct.tegra_bo_tiling }
%struct.tegra_bo_tiling = type { i64 }
%struct.tegra_plane = type { i32 }
%struct.tegra_dc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@TEGRA_BO_TILING_MODE_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"hardware doesn't support block linear mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unsupported UV-plane configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @tegra_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.tegra_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_bo_tiling*, align 8
  %9 = alloca %struct.tegra_plane*, align 8
  %10 = alloca %struct.tegra_dc*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %13 = call %struct.tegra_plane_state* @to_tegra_plane_state(%struct.drm_plane_state* %12)
  store %struct.tegra_plane_state* %13, %struct.tegra_plane_state** %6, align 8
  %14 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %15 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %17, i32 0, i32 3
  store %struct.tegra_bo_tiling* %18, %struct.tegra_bo_tiling** %8, align 8
  %19 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %20 = call %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane* %19)
  store %struct.tegra_plane* %20, %struct.tegra_plane** %9, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.tegra_dc* @to_tegra_dc(i32 %23)
  store %struct.tegra_dc* %24, %struct.tegra_dc** %10, align 8
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %145

30:                                               ; preds = %2
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %39 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %38, i32 0, i32 2
  %40 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %41 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %40, i32 0, i32 1
  %42 = call i32 @tegra_plane_format(i32 %37, i32* %39, i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %145

47:                                               ; preds = %30
  %48 = load %struct.tegra_dc*, %struct.tegra_dc** %10, align 8
  %49 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %56 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %57 = call i32 @tegra_plane_setup_legacy_state(%struct.tegra_plane* %55, %struct.tegra_plane_state* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %3, align 4
  br label %145

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %65 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.tegra_bo_tiling*, %struct.tegra_bo_tiling** %8, align 8
  %68 = call i32 @tegra_fb_get_tiling(%struct.TYPE_6__* %66, %struct.tegra_bo_tiling* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %3, align 4
  br label %145

73:                                               ; preds = %63
  %74 = load %struct.tegra_bo_tiling*, %struct.tegra_bo_tiling** %8, align 8
  %75 = getelementptr inbounds %struct.tegra_bo_tiling, %struct.tegra_bo_tiling* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TEGRA_BO_TILING_MODE_BLOCK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load %struct.tegra_dc*, %struct.tegra_dc** %10, align 8
  %81 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %145

90:                                               ; preds = %79, %73
  %91 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %92 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @drm_rotation_simplify(i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %102 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %106

103:                                              ; preds = %90
  %104 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %6, align 8
  %105 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %108 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 2
  br i1 %114, label %115, label %136

115:                                              ; preds = %106
  %116 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %117 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %124 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %122, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %115
  %132 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %145

135:                                              ; preds = %115
  br label %136

136:                                              ; preds = %135, %106
  %137 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %138 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %139 = call i32 @tegra_plane_state_add(%struct.tegra_plane* %137, %struct.drm_plane_state* %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %3, align 4
  br label %145

144:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %142, %131, %86, %71, %60, %45, %29
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.tegra_plane_state* @to_tegra_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local i32 @tegra_plane_format(i32, i32*, i32*) #1

declare dso_local i32 @tegra_plane_setup_legacy_state(%struct.tegra_plane*, %struct.tegra_plane_state*) #1

declare dso_local i32 @tegra_fb_get_tiling(%struct.TYPE_6__*, %struct.tegra_bo_tiling*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_rotation_simplify(i32, i32) #1

declare dso_local i32 @tegra_plane_state_add(%struct.tegra_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
