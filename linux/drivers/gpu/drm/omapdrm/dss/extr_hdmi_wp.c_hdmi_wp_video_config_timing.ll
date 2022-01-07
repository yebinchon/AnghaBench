; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_video_config_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_video_config_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32, i32 }
%struct.videomode = type { i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Enter hdmi_wp_video_config_timing\0A\00", align 1
@HDMI_WP_VIDEO_TIMING_H = common dso_local global i32 0, align 4
@HDMI_WP_VIDEO_TIMING_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_video_config_timing(%struct.hdmi_wp_data* %0, %struct.videomode* %1) #0 {
  %3 = alloca %struct.hdmi_wp_data*, align 8
  %4 = alloca %struct.videomode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %3, align 8
  store %struct.videomode* %1, %struct.videomode** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = call i32 @DSSDBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %10 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load %struct.videomode*, %struct.videomode** %4, align 8
  %16 = getelementptr inbounds %struct.videomode, %struct.videomode* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @FLD_VAL(i64 %17, i32 31, i32 20)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.videomode*, %struct.videomode** %4, align 8
  %22 = getelementptr inbounds %struct.videomode, %struct.videomode* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @FLD_VAL(i64 %23, i32 19, i32 8)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.videomode*, %struct.videomode** %4, align 8
  %28 = getelementptr inbounds %struct.videomode, %struct.videomode* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = call i32 @FLD_VAL(i64 %32, i32 7, i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %37 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HDMI_WP_VIDEO_TIMING_H, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @hdmi_write_reg(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.videomode*, %struct.videomode** %4, align 8
  %43 = getelementptr inbounds %struct.videomode, %struct.videomode* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @FLD_VAL(i64 %44, i32 31, i32 20)
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.videomode*, %struct.videomode** %4, align 8
  %49 = getelementptr inbounds %struct.videomode, %struct.videomode* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @FLD_VAL(i64 %50, i32 19, i32 8)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.videomode*, %struct.videomode** %4, align 8
  %55 = getelementptr inbounds %struct.videomode, %struct.videomode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @FLD_VAL(i64 %56, i32 7, i32 0)
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %61 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @HDMI_WP_VIDEO_TIMING_V, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @hdmi_write_reg(i32 %62, i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @FLD_VAL(i64, i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
