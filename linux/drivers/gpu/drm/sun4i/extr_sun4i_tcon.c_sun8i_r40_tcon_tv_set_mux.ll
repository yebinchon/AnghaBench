; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun8i_r40_tcon_tv_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun8i_r40_tcon_tv_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_encoder = type { i64 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CONFIG_DRM_SUN8I_TCON_TOP = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_tcon*, %struct.drm_encoder*)* @sun8i_r40_tcon_tv_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_r40_tcon_tv_set_mux(%struct.sun4i_tcon* %0, %struct.drm_encoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun4i_tcon*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  %11 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %12 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.device_node* @of_graph_get_port_by_id(i32 %15, i32 0)
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %86

22:                                               ; preds = %2
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i32 @sun4i_tcon_of_get_id_from_port(%struct.device_node* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i32 @of_node_put(%struct.device_node* %25)
  %27 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %28 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.device_node* @of_graph_get_remote_node(i32 %31, i32 0, i32 -1)
  store %struct.device_node* %32, %struct.device_node** %7, align 8
  %33 = load %struct.device_node*, %struct.device_node** %7, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %86

38:                                               ; preds = %22
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %39)
  store %struct.platform_device* %40, %struct.platform_device** %8, align 8
  %41 = load %struct.device_node*, %struct.device_node** %7, align 8
  %42 = call i32 @of_node_put(%struct.device_node* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %44 = icmp ne %struct.platform_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %86

48:                                               ; preds = %38
  %49 = load i32, i32* @CONFIG_DRM_SUN8I_TCON_TOP, align 4
  %50 = call i64 @IS_ENABLED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %54 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DRM_MODE_ENCODER_TMDS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @sun8i_tcon_top_set_hdmi_src(i32* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %86

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %52, %48
  %69 = load i32, i32* @CONFIG_DRM_SUN8I_TCON_TOP, align 4
  %70 = call i64 @IS_ENABLED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %76 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @sun8i_tcon_top_de_config(i32* %74, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %86

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %68
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %82, %65, %45, %35, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.device_node* @of_graph_get_port_by_id(i32, i32) #1

declare dso_local i32 @sun4i_tcon_of_get_id_from_port(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @sun8i_tcon_top_set_hdmi_src(i32*, i32) #1

declare dso_local i32 @sun8i_tcon_top_de_config(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
