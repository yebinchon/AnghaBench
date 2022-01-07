; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_add_planes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_add_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.drm_plane*)* }
%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.tegra_dc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@tegra_plane_funcs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane* (%struct.drm_device*, %struct.tegra_dc*)* @tegra_dc_add_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane* @tegra_dc_add_planes(%struct.drm_device* %0, %struct.tegra_dc* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  %6 = alloca [2 x %struct.drm_plane*], align 16
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.tegra_dc* %1, %struct.tegra_dc** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %13 = call %struct.drm_plane* @tegra_primary_plane_create(%struct.drm_device* %11, %struct.tegra_dc* %12)
  store %struct.drm_plane* %13, %struct.drm_plane** %7, align 8
  %14 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %15 = call i64 @IS_ERR(%struct.drm_plane* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  store %struct.drm_plane* %18, %struct.drm_plane** %3, align 8
  br label %77

19:                                               ; preds = %2
  %20 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 2, i32* %8, align 4
  br label %28

27:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %26
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %72, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %29
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add i32 1, %36
  %38 = call %struct.drm_plane* @tegra_dc_overlay_plane_create(%struct.drm_device* %34, %struct.tegra_dc* %35, i32 %37, i32 0)
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [2 x %struct.drm_plane*], [2 x %struct.drm_plane*]* %6, i64 0, i64 %40
  store %struct.drm_plane* %38, %struct.drm_plane** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [2 x %struct.drm_plane*], [2 x %struct.drm_plane*]* %6, i64 0, i64 %43
  %45 = load %struct.drm_plane*, %struct.drm_plane** %44, align 8
  %46 = call i64 @IS_ERR(%struct.drm_plane* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %33
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [2 x %struct.drm_plane*], [2 x %struct.drm_plane*]* %6, i64 0, i64 %50
  %52 = load %struct.drm_plane*, %struct.drm_plane** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.drm_plane* %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %58, %48
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %9, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32 (%struct.drm_plane*)*, i32 (%struct.drm_plane*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tegra_plane_funcs, i32 0, i32 0), align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [2 x %struct.drm_plane*], [2 x %struct.drm_plane*]* %6, i64 0, i64 %61
  %63 = load %struct.drm_plane*, %struct.drm_plane** %62, align 8
  %64 = call i32 %59(%struct.drm_plane* %63)
  br label %54

65:                                               ; preds = %54
  %66 = load i32 (%struct.drm_plane*)*, i32 (%struct.drm_plane*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tegra_plane_funcs, i32 0, i32 0), align 8
  %67 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %68 = call i32 %66(%struct.drm_plane* %67)
  %69 = load i32, i32* %10, align 4
  %70 = call %struct.drm_plane* @ERR_PTR(i32 %69)
  store %struct.drm_plane* %70, %struct.drm_plane** %3, align 8
  br label %77

71:                                               ; preds = %33
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %29

75:                                               ; preds = %29
  %76 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  store %struct.drm_plane* %76, %struct.drm_plane** %3, align 8
  br label %77

77:                                               ; preds = %75, %65, %17
  %78 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  ret %struct.drm_plane* %78
}

declare dso_local %struct.drm_plane* @tegra_primary_plane_create(%struct.drm_device*, %struct.tegra_dc*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane*) #1

declare dso_local %struct.drm_plane* @tegra_dc_overlay_plane_create(%struct.drm_device*, %struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane*) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
