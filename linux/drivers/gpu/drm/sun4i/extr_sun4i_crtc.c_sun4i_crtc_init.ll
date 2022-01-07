; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_crtc.c_sun4i_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_crtc.c_sun4i_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_crtc = type { %struct.TYPE_6__, %struct.sun4i_tcon*, %struct.sunxi_engine* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.sunxi_engine = type { i32 }
%struct.sun4i_tcon = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_plane = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't create the planes\0A\00", align 1
@sun4i_crtc_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Couldn't init DRM CRTC\0A\00", align 1
@sun4i_crtc_helper_funcs = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sun4i_crtc* @sun4i_crtc_init(%struct.drm_device* %0, %struct.sunxi_engine* %1, %struct.sun4i_tcon* %2) #0 {
  %4 = alloca %struct.sun4i_crtc*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.sunxi_engine*, align 8
  %7 = alloca %struct.sun4i_tcon*, align 8
  %8 = alloca %struct.sun4i_crtc*, align 8
  %9 = alloca %struct.drm_plane**, align 8
  %10 = alloca %struct.drm_plane*, align 8
  %11 = alloca %struct.drm_plane*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_plane*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_plane*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.sunxi_engine* %1, %struct.sunxi_engine** %6, align 8
  store %struct.sun4i_tcon* %2, %struct.sun4i_tcon** %7, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %10, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %11, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sun4i_crtc* @devm_kzalloc(i32 %19, i32 24, i32 %20)
  store %struct.sun4i_crtc* %21, %struct.sun4i_crtc** %8, align 8
  %22 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %23 = icmp ne %struct.sun4i_crtc* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.sun4i_crtc* @ERR_PTR(i32 %26)
  store %struct.sun4i_crtc* %27, %struct.sun4i_crtc** %4, align 8
  br label %135

28:                                               ; preds = %3
  %29 = load %struct.sunxi_engine*, %struct.sunxi_engine** %6, align 8
  %30 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %31 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %30, i32 0, i32 2
  store %struct.sunxi_engine* %29, %struct.sunxi_engine** %31, align 8
  %32 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %7, align 8
  %33 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %34 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %33, i32 0, i32 1
  store %struct.sun4i_tcon* %32, %struct.sun4i_tcon** %34, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = load %struct.sunxi_engine*, %struct.sunxi_engine** %6, align 8
  %37 = call %struct.drm_plane** @sunxi_engine_layers_init(%struct.drm_device* %35, %struct.sunxi_engine* %36)
  store %struct.drm_plane** %37, %struct.drm_plane*** %9, align 8
  %38 = load %struct.drm_plane**, %struct.drm_plane*** %9, align 8
  %39 = call i64 @IS_ERR(%struct.drm_plane** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.sun4i_crtc* null, %struct.sun4i_crtc** %4, align 8
  br label %135

46:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %69, %46
  %48 = load %struct.drm_plane**, %struct.drm_plane*** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %48, i64 %50
  %52 = load %struct.drm_plane*, %struct.drm_plane** %51, align 8
  %53 = icmp ne %struct.drm_plane* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = load %struct.drm_plane**, %struct.drm_plane*** %9, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %55, i64 %57
  %59 = load %struct.drm_plane*, %struct.drm_plane** %58, align 8
  store %struct.drm_plane* %59, %struct.drm_plane** %14, align 8
  %60 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %61 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %67 [
    i32 128, label %63
    i32 129, label %65
  ]

63:                                               ; preds = %54
  %64 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  store %struct.drm_plane* %64, %struct.drm_plane** %10, align 8
  br label %68

65:                                               ; preds = %54
  %66 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  store %struct.drm_plane* %66, %struct.drm_plane** %11, align 8
  br label %68

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %65, %63
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %47

72:                                               ; preds = %47
  %73 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %74 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %75 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %74, i32 0, i32 0
  %76 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %77 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %78 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %73, %struct.TYPE_6__* %75, %struct.drm_plane* %76, %struct.drm_plane* %77, i32* @sun4i_crtc_funcs, i32* null)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %12, align 4
  %87 = call %struct.sun4i_crtc* @ERR_PTR(i32 %86)
  store %struct.sun4i_crtc* %87, %struct.sun4i_crtc** %4, align 8
  br label %135

88:                                               ; preds = %72
  %89 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %90 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %89, i32 0, i32 0
  %91 = call i32 @drm_crtc_helper_add(%struct.TYPE_6__* %90, i32* @sun4i_crtc_helper_funcs)
  %92 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %93 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %92, i32 0, i32 1
  %94 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %93, align 8
  %95 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @of_graph_get_port_by_id(i32 %98, i32 1)
  %100 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %101 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %130, %88
  %104 = load %struct.drm_plane**, %struct.drm_plane*** %9, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %104, i64 %106
  %108 = load %struct.drm_plane*, %struct.drm_plane** %107, align 8
  %109 = icmp ne %struct.drm_plane* %108, null
  br i1 %109, label %110, label %133

110:                                              ; preds = %103
  %111 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %112 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %111, i32 0, i32 0
  %113 = call i32 @drm_crtc_mask(%struct.TYPE_6__* %112)
  store i32 %113, i32* %15, align 4
  %114 = load %struct.drm_plane**, %struct.drm_plane*** %9, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %114, i64 %116
  %118 = load %struct.drm_plane*, %struct.drm_plane** %117, align 8
  store %struct.drm_plane* %118, %struct.drm_plane** %16, align 8
  %119 = load %struct.drm_plane*, %struct.drm_plane** %16, align 8
  %120 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @DRM_PLANE_TYPE_OVERLAY, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %110
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.drm_plane*, %struct.drm_plane** %16, align 8
  %128 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %110
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %103

133:                                              ; preds = %103
  %134 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  store %struct.sun4i_crtc* %134, %struct.sun4i_crtc** %4, align 8
  br label %135

135:                                              ; preds = %133, %81, %41, %24
  %136 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %4, align 8
  ret %struct.sun4i_crtc* %136
}

declare dso_local %struct.sun4i_crtc* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.sun4i_crtc* @ERR_PTR(i32) #1

declare dso_local %struct.drm_plane** @sunxi_engine_layers_init(%struct.drm_device*, %struct.sunxi_engine*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane**) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.TYPE_6__*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @of_graph_get_port_by_id(i32, i32) #1

declare dso_local i32 @drm_crtc_mask(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
