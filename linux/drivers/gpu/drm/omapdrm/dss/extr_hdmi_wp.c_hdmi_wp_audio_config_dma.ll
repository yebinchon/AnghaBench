; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_audio_config_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_audio_config_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }
%struct.hdmi_audio_dma = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Enter hdmi_wp_audio_config_dma\0A\00", align 1
@HDMI_WP_AUDIO_CFG2 = common dso_local global i32 0, align 4
@HDMI_WP_AUDIO_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_audio_config_dma(%struct.hdmi_wp_data* %0, %struct.hdmi_audio_dma* %1) #0 {
  %3 = alloca %struct.hdmi_wp_data*, align 8
  %4 = alloca %struct.hdmi_audio_dma*, align 8
  %5 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %3, align 8
  store %struct.hdmi_audio_dma* %1, %struct.hdmi_audio_dma** %4, align 8
  %6 = call i32 @DSSDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %8 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HDMI_WP_AUDIO_CFG2, align 4
  %11 = call i32 @hdmi_read_reg(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.hdmi_audio_dma*, %struct.hdmi_audio_dma** %4, align 8
  %14 = getelementptr inbounds %struct.hdmi_audio_dma, %struct.hdmi_audio_dma* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FLD_MOD(i32 %12, i32 %15, i32 15, i32 8)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hdmi_audio_dma*, %struct.hdmi_audio_dma** %4, align 8
  %19 = getelementptr inbounds %struct.hdmi_audio_dma, %struct.hdmi_audio_dma* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @FLD_MOD(i32 %17, i32 %20, i32 7, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %23 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HDMI_WP_AUDIO_CFG2, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @hdmi_write_reg(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %29 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HDMI_WP_AUDIO_CTRL, align 4
  %32 = call i32 @hdmi_read_reg(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.hdmi_audio_dma*, %struct.hdmi_audio_dma** %4, align 8
  %35 = getelementptr inbounds %struct.hdmi_audio_dma, %struct.hdmi_audio_dma* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FLD_MOD(i32 %33, i32 %36, i32 9, i32 9)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.hdmi_audio_dma*, %struct.hdmi_audio_dma** %4, align 8
  %40 = getelementptr inbounds %struct.hdmi_audio_dma, %struct.hdmi_audio_dma* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FLD_MOD(i32 %38, i32 %41, i32 8, i32 0)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %44 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HDMI_WP_AUDIO_CTRL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @hdmi_write_reg(i32 %45, i32 %46, i32 %47)
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
