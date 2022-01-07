; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_planes_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_planes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i32, i32, i32, %struct.rcar_du_plane*, %struct.rcar_du_device* }
%struct.rcar_du_plane = type { %struct.TYPE_7__, %struct.rcar_du_group* }
%struct.TYPE_7__ = type { i32 }
%struct.rcar_du_device = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@rcar_du_plane_funcs = common dso_local global i32 0, align 4
@formats = common dso_local global i32 0, align 4
@rcar_du_plane_helper_funcs = common dso_local global i32 0, align 4
@RCAR_DU_COLORKEY_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_du_planes_init(%struct.rcar_du_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_du_group*, align 8
  %4 = alloca %struct.rcar_du_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rcar_du_plane*, align 8
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %3, align 8
  %10 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %11 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %10, i32 0, i32 4
  %12 = load %struct.rcar_du_device*, %struct.rcar_du_device** %11, align 8
  store %struct.rcar_du_device* %12, %struct.rcar_du_device** %4, align 8
  %13 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %14 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 7
  %17 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %18 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %20 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %25 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 2, %26
  %28 = shl i32 3, %27
  %29 = and i32 %23, %28
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %96, %1
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %33 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %99

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %39 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %8, align 4
  %48 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %49 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %48, i32 0, i32 3
  %50 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %50, i64 %52
  store %struct.rcar_du_plane* %53, %struct.rcar_du_plane** %9, align 8
  %54 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %55 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %9, align 8
  %56 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %55, i32 0, i32 1
  store %struct.rcar_du_group* %54, %struct.rcar_du_group** %56, align 8
  %57 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %58 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %9, align 8
  %61 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %60, i32 0, i32 0
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @formats, align 4
  %64 = load i32, i32* @formats, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @drm_universal_plane_init(i32 %59, %struct.TYPE_7__* %61, i32 %62, i32* @rcar_du_plane_funcs, i32 %63, i32 %65, i32* null, i32 %66, i32* null)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %46
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %100

72:                                               ; preds = %46
  %73 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %9, align 8
  %74 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %73, i32 0, i32 0
  %75 = call i32 @drm_plane_helper_add(%struct.TYPE_7__* %74, i32* @rcar_du_plane_helper_funcs)
  %76 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %9, align 8
  %77 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %76, i32 0, i32 0
  %78 = call i32 @drm_plane_create_alpha_property(%struct.TYPE_7__* %77)
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %96

83:                                               ; preds = %72
  %84 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %9, align 8
  %85 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.rcar_du_device*, %struct.rcar_du_device** %4, align 8
  %88 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RCAR_DU_COLORKEY_NONE, align 4
  %92 = call i32 @drm_object_attach_property(i32* %86, i32 %90, i32 %91)
  %93 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %9, align 8
  %94 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %93, i32 0, i32 0
  %95 = call i32 @drm_plane_create_zpos_property(%struct.TYPE_7__* %94, i32 1, i32 1, i32 7)
  br label %96

96:                                               ; preds = %83, %82
  %97 = load i32, i32* %6, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %30

99:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %70
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @drm_universal_plane_init(i32, %struct.TYPE_7__*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_plane_helper_add(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @drm_plane_create_alpha_property(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i32 @drm_plane_create_zpos_property(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
