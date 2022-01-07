; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5_core.c_hdmi5_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5_core.c_hdmi5_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_core_data = type { i32 }
%struct.hdmi_wp_data = type { i32 }
%struct.hdmi_config = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.videomode = type { i32 }
%struct.hdmi_video_format = type { i32 }
%struct.hdmi_core_vid_config = type { i32 }

@HDMI_PACK_24b_RGB_YUV444_YUV422 = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_LIMITED = common dso_local global i32 0, align 4
@HDMI_PACKETMODE24BITPERPIXEL = common dso_local global i32 0, align 4
@HDMI_HDMI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi5_configure(%struct.hdmi_core_data* %0, %struct.hdmi_wp_data* %1, %struct.hdmi_config* %2) #0 {
  %4 = alloca %struct.hdmi_core_data*, align 8
  %5 = alloca %struct.hdmi_wp_data*, align 8
  %6 = alloca %struct.hdmi_config*, align 8
  %7 = alloca %struct.videomode, align 4
  %8 = alloca %struct.hdmi_video_format, align 4
  %9 = alloca %struct.hdmi_core_vid_config, align 4
  store %struct.hdmi_core_data* %0, %struct.hdmi_core_data** %4, align 8
  store %struct.hdmi_wp_data* %1, %struct.hdmi_wp_data** %5, align 8
  store %struct.hdmi_config* %2, %struct.hdmi_config** %6, align 8
  %10 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %4, align 8
  %11 = call i32 @hdmi_core_mask_interrupts(%struct.hdmi_core_data* %10)
  %12 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %13 = call i32 @hdmi_core_init(%struct.hdmi_core_vid_config* %9, %struct.hdmi_config* %12)
  %14 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %15 = call i32 @hdmi_wp_init_vid_fmt_timings(%struct.hdmi_video_format* %8, %struct.videomode* %7, %struct.hdmi_config* %14)
  %16 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %17 = call i32 @hdmi_wp_video_config_timing(%struct.hdmi_wp_data* %16, %struct.videomode* %7)
  %18 = load i32, i32* @HDMI_PACK_24b_RGB_YUV444_YUV422, align 4
  %19 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %21 = call i32 @hdmi_wp_video_config_format(%struct.hdmi_wp_data* %20, %struct.hdmi_video_format* %8)
  %22 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %23 = call i32 @hdmi_wp_video_config_interface(%struct.hdmi_wp_data* %22, %struct.videomode* %7)
  %24 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %4, align 8
  %25 = call i32 @hdmi_core_configure_range(%struct.hdmi_core_data* %24)
  %26 = load i32, i32* @HDMI_QUANTIZATION_RANGE_LIMITED, align 4
  %27 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %28 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @HDMI_PACKETMODE24BITPERPIXEL, align 4
  %31 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %4, align 8
  %33 = call i32 @hdmi_core_video_config(%struct.hdmi_core_data* %32, %struct.hdmi_core_vid_config* %9)
  %34 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %4, align 8
  %35 = call i32 @hdmi_core_config_video_packetizer(%struct.hdmi_core_data* %34)
  %36 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %4, align 8
  %37 = call i32 @hdmi_core_config_csc(%struct.hdmi_core_data* %36)
  %38 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %4, align 8
  %39 = call i32 @hdmi_core_config_video_sampler(%struct.hdmi_core_data* %38)
  %40 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %41 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HDMI_HDMI, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %3
  %46 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %4, align 8
  %47 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %48 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %47, i32 0, i32 1
  %49 = call i32 @hdmi_core_write_avi_infoframe(%struct.hdmi_core_data* %46, %struct.TYPE_2__* %48)
  br label %50

50:                                               ; preds = %45, %3
  %51 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %4, align 8
  %52 = call i32 @hdmi_core_enable_video_path(%struct.hdmi_core_data* %51)
  %53 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %4, align 8
  %54 = call i32 @hdmi_core_enable_interrupts(%struct.hdmi_core_data* %53)
  ret void
}

declare dso_local i32 @hdmi_core_mask_interrupts(%struct.hdmi_core_data*) #1

declare dso_local i32 @hdmi_core_init(%struct.hdmi_core_vid_config*, %struct.hdmi_config*) #1

declare dso_local i32 @hdmi_wp_init_vid_fmt_timings(%struct.hdmi_video_format*, %struct.videomode*, %struct.hdmi_config*) #1

declare dso_local i32 @hdmi_wp_video_config_timing(%struct.hdmi_wp_data*, %struct.videomode*) #1

declare dso_local i32 @hdmi_wp_video_config_format(%struct.hdmi_wp_data*, %struct.hdmi_video_format*) #1

declare dso_local i32 @hdmi_wp_video_config_interface(%struct.hdmi_wp_data*, %struct.videomode*) #1

declare dso_local i32 @hdmi_core_configure_range(%struct.hdmi_core_data*) #1

declare dso_local i32 @hdmi_core_video_config(%struct.hdmi_core_data*, %struct.hdmi_core_vid_config*) #1

declare dso_local i32 @hdmi_core_config_video_packetizer(%struct.hdmi_core_data*) #1

declare dso_local i32 @hdmi_core_config_csc(%struct.hdmi_core_data*) #1

declare dso_local i32 @hdmi_core_config_video_sampler(%struct.hdmi_core_data*) #1

declare dso_local i32 @hdmi_core_write_avi_infoframe(%struct.hdmi_core_data*, %struct.TYPE_2__*) #1

declare dso_local i32 @hdmi_core_enable_video_path(%struct.hdmi_core_data*) #1

declare dso_local i32 @hdmi_core_enable_interrupts(%struct.hdmi_core_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
