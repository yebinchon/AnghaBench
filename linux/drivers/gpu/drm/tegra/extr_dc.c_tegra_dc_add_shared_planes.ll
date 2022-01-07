; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_add_shared_planes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_add_shared_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.tegra_dc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.tegra_windowgroup_soc* }
%struct.tegra_windowgroup_soc = type { i64, i32, i32*, i32 }

@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane* (%struct.drm_device*, %struct.tegra_dc*)* @tegra_dc_add_shared_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane* @tegra_dc_add_shared_planes(%struct.drm_device* %0, %struct.tegra_dc* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_windowgroup_soc*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.tegra_dc* %1, %struct.tegra_dc** %5, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %77, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %13, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %12
  %21 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.tegra_windowgroup_soc*, %struct.tegra_windowgroup_soc** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.tegra_windowgroup_soc, %struct.tegra_windowgroup_soc* %25, i64 %27
  store %struct.tegra_windowgroup_soc* %28, %struct.tegra_windowgroup_soc** %10, align 8
  %29 = load %struct.tegra_windowgroup_soc*, %struct.tegra_windowgroup_soc** %10, align 8
  %30 = getelementptr inbounds %struct.tegra_windowgroup_soc, %struct.tegra_windowgroup_soc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %72, %36
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.tegra_windowgroup_soc*, %struct.tegra_windowgroup_soc** %10, align 8
  %40 = getelementptr inbounds %struct.tegra_windowgroup_soc, %struct.tegra_windowgroup_soc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %37
  %44 = load %struct.tegra_windowgroup_soc*, %struct.tegra_windowgroup_soc** %10, align 8
  %45 = getelementptr inbounds %struct.tegra_windowgroup_soc, %struct.tegra_windowgroup_soc* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %53 = load %struct.tegra_windowgroup_soc*, %struct.tegra_windowgroup_soc** %10, align 8
  %54 = getelementptr inbounds %struct.tegra_windowgroup_soc, %struct.tegra_windowgroup_soc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.drm_plane* @tegra_shared_plane_create(%struct.drm_device* %51, %struct.tegra_dc* %52, i32 %55, i32 %56)
  store %struct.drm_plane* %57, %struct.drm_plane** %6, align 8
  %58 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %59 = call i64 @IS_ERR(%struct.drm_plane* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  store %struct.drm_plane* %62, %struct.drm_plane** %3, align 8
  br label %82

63:                                               ; preds = %43
  %64 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %65 = icmp ne %struct.drm_plane* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %68 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %69 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  store %struct.drm_plane* %70, %struct.drm_plane** %7, align 8
  br label %71

71:                                               ; preds = %66, %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %37

75:                                               ; preds = %37
  br label %76

76:                                               ; preds = %75, %20
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %12

80:                                               ; preds = %12
  %81 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  store %struct.drm_plane* %81, %struct.drm_plane** %3, align 8
  br label %82

82:                                               ; preds = %80, %61
  %83 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  ret %struct.drm_plane* %83
}

declare dso_local %struct.drm_plane* @tegra_shared_plane_create(%struct.drm_device*, %struct.tegra_dc*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
