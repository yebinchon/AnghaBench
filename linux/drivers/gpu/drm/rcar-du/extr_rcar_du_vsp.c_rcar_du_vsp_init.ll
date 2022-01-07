; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_vsp = type { i32, %struct.rcar_du_vsp_plane*, i32*, %struct.rcar_du_device* }
%struct.rcar_du_vsp_plane = type { i32, i32, %struct.rcar_du_vsp* }
%struct.rcar_du_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@rcar_du_vsp_plane_funcs = common dso_local global i32 0, align 4
@rcar_du_vsp_formats = common dso_local global i32 0, align 4
@rcar_du_vsp_plane_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_du_vsp_init(%struct.rcar_du_vsp* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_du_vsp*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rcar_du_device*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rcar_du_vsp_plane*, align 8
  store %struct.rcar_du_vsp* %0, %struct.rcar_du_vsp** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %16 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %15, i32 0, i32 3
  %17 = load %struct.rcar_du_device*, %struct.rcar_du_device** %16, align 8
  store %struct.rcar_du_device* %17, %struct.rcar_du_device** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @hweight32(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %20)
  store %struct.platform_device* %21, %struct.platform_device** %9, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %23 = icmp ne %struct.platform_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %135

27:                                               ; preds = %3
  %28 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %31 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %33 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @vsp1_du_init(i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %135

40:                                               ; preds = %27
  %41 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %42 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 3
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 5, i32 4
  %49 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %50 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %52 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %55 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.rcar_du_vsp_plane* @devm_kcalloc(i32 %53, i32 %56, i32 16, i32 %57)
  %59 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %60 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %59, i32 0, i32 1
  store %struct.rcar_du_vsp_plane* %58, %struct.rcar_du_vsp_plane** %60, align 8
  %61 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %62 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %61, i32 0, i32 1
  %63 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %62, align 8
  %64 = icmp ne %struct.rcar_du_vsp_plane* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %40
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %135

68:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %131, %68
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %72 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %134

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %13, align 4
  %85 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %86 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %85, i32 0, i32 1
  %87 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %87, i64 %89
  store %struct.rcar_du_vsp_plane* %90, %struct.rcar_du_vsp_plane** %14, align 8
  %91 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %92 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %14, align 8
  %93 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %92, i32 0, i32 2
  store %struct.rcar_du_vsp* %91, %struct.rcar_du_vsp** %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %14, align 8
  %96 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %98 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %14, align 8
  %101 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %100, i32 0, i32 1
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @rcar_du_vsp_formats, align 4
  %104 = load i32, i32* @rcar_du_vsp_formats, align 4
  %105 = call i32 @ARRAY_SIZE(i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @drm_universal_plane_init(i32 %99, i32* %101, i32 %102, i32* @rcar_du_vsp_plane_funcs, i32 %103, i32 %105, i32* null, i32 %106, i32* null)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %83
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %4, align 4
  br label %135

112:                                              ; preds = %83
  %113 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %14, align 8
  %114 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %113, i32 0, i32 1
  %115 = call i32 @drm_plane_helper_add(i32* %114, i32* @rcar_du_vsp_plane_helper_funcs)
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %131

120:                                              ; preds = %112
  %121 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %14, align 8
  %122 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %121, i32 0, i32 1
  %123 = call i32 @drm_plane_create_alpha_property(i32* %122)
  %124 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %14, align 8
  %125 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %124, i32 0, i32 1
  %126 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %127 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @drm_plane_create_zpos_property(i32* %125, i32 1, i32 1, i32 %129)
  br label %131

131:                                              ; preds = %120, %119
  %132 = load i32, i32* %11, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %69

134:                                              ; preds = %69
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %110, %65, %38, %24
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @hweight32(i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @vsp1_du_init(i32*) #1

declare dso_local %struct.rcar_du_vsp_plane* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @drm_universal_plane_init(i32, i32*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_plane_create_alpha_property(i32*) #1

declare dso_local i32 @drm_plane_create_zpos_property(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
