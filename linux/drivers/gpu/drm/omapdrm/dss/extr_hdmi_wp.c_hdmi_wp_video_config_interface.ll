; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_video_config_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_video_config_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Enter hdmi_wp_video_config_interface\0A\00", align 1
@DISPLAY_FLAGS_VSYNC_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_LOW = common dso_local global i32 0, align 4
@HDMI_WP_VIDEO_CFG = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_video_config_interface(%struct.hdmi_wp_data* %0, %struct.videomode* %1) #0 {
  %3 = alloca %struct.hdmi_wp_data*, align 8
  %4 = alloca %struct.videomode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %3, align 8
  store %struct.videomode* %1, %struct.videomode** %4, align 8
  %8 = call i32 @DSSDBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.videomode*, %struct.videomode** %4, align 8
  %10 = getelementptr inbounds %struct.videomode, %struct.videomode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DISPLAY_FLAGS_VSYNC_LOW, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.videomode*, %struct.videomode** %4, align 8
  %19 = getelementptr inbounds %struct.videomode, %struct.videomode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DISPLAY_FLAGS_HSYNC_LOW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %28 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HDMI_WP_VIDEO_CFG, align 4
  %31 = call i32 @hdmi_read_reg(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @FLD_MOD(i32 %32, i32 1, i32 7, i32 7)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @FLD_MOD(i32 %34, i32 1, i32 6, i32 6)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @FLD_MOD(i32 %36, i32 %37, i32 5, i32 5)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @FLD_MOD(i32 %39, i32 %40, i32 4, i32 4)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.videomode*, %struct.videomode** %4, align 8
  %44 = getelementptr inbounds %struct.videomode, %struct.videomode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @FLD_MOD(i32 %42, i32 %51, i32 3, i32 3)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @FLD_MOD(i32 %53, i32 1, i32 1, i32 0)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %56 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @HDMI_WP_VIDEO_CFG, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @hdmi_write_reg(i32 %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
