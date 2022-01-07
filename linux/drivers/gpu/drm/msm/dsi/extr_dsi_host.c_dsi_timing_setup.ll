; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_timing_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_timing_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32, i32, i32, %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@REG_DSI_ACTIVE_H = common dso_local global i32 0, align 4
@REG_DSI_ACTIVE_V = common dso_local global i32 0, align 4
@REG_DSI_TOTAL = common dso_local global i32 0, align 4
@REG_DSI_ACTIVE_HSYNC = common dso_local global i32 0, align 4
@REG_DSI_ACTIVE_VSYNC_HPOS = common dso_local global i32 0, align 4
@REG_DSI_ACTIVE_VSYNC_VPOS = common dso_local global i32 0, align 4
@REG_DSI_CMD_MDP_STREAM_CTRL = common dso_local global i32 0, align 4
@MIPI_DSI_DCS_LONG_WRITE = common dso_local global i32 0, align 4
@REG_DSI_CMD_MDP_STREAM_TOTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_host*, i32)* @dsi_timing_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_timing_setup(%struct.msm_dsi_host* %0, i32 %1) #0 {
  %3 = alloca %struct.msm_dsi_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %19 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %18, i32 0, i32 3
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %19, align 8
  store %struct.drm_display_mode* %20, %struct.drm_display_mode** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %51, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %15, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %16, align 4
  %64 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %2
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sdiv i32 %74, 2
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %16, align 4
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %67, %2
  %79 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %80 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %131

85:                                               ; preds = %78
  %86 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %87 = load i32, i32* @REG_DSI_ACTIVE_H, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @DSI_ACTIVE_H_START(i32 %88)
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @DSI_ACTIVE_H_END(i32 %90)
  %92 = or i32 %89, %91
  %93 = call i32 @dsi_write(%struct.msm_dsi_host* %86, i32 %87, i32 %92)
  %94 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %95 = load i32, i32* @REG_DSI_ACTIVE_V, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @DSI_ACTIVE_V_START(i32 %96)
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @DSI_ACTIVE_V_END(i32 %98)
  %100 = or i32 %97, %99
  %101 = call i32 @dsi_write(%struct.msm_dsi_host* %94, i32 %95, i32 %100)
  %102 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %103 = load i32, i32* @REG_DSI_TOTAL, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @DSI_TOTAL_H_TOTAL(i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @DSI_TOTAL_V_TOTAL(i32 %108)
  %110 = or i32 %106, %109
  %111 = call i32 @dsi_write(%struct.msm_dsi_host* %102, i32 %103, i32 %110)
  %112 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %113 = load i32, i32* @REG_DSI_ACTIVE_HSYNC, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @DSI_ACTIVE_HSYNC_START(i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @DSI_ACTIVE_HSYNC_END(i32 %116)
  %118 = or i32 %115, %117
  %119 = call i32 @dsi_write(%struct.msm_dsi_host* %112, i32 %113, i32 %118)
  %120 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %121 = load i32, i32* @REG_DSI_ACTIVE_VSYNC_HPOS, align 4
  %122 = call i32 @dsi_write(%struct.msm_dsi_host* %120, i32 %121, i32 0)
  %123 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %124 = load i32, i32* @REG_DSI_ACTIVE_VSYNC_VPOS, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @DSI_ACTIVE_VSYNC_VPOS_START(i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @DSI_ACTIVE_VSYNC_VPOS_END(i32 %127)
  %129 = or i32 %126, %128
  %130 = call i32 @dsi_write(%struct.msm_dsi_host* %123, i32 %124, i32 %129)
  br label %163

131:                                              ; preds = %78
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %134 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dsi_get_bpp(i32 %135)
  %137 = mul nsw i32 %132, %136
  %138 = sdiv i32 %137, 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  %140 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %141 = load i32, i32* @REG_DSI_CMD_MDP_STREAM_CTRL, align 4
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @DSI_CMD_MDP_STREAM_CTRL_WORD_COUNT(i32 %142)
  %144 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %145 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @DSI_CMD_MDP_STREAM_CTRL_VIRTUAL_CHANNEL(i32 %146)
  %148 = or i32 %143, %147
  %149 = load i32, i32* @MIPI_DSI_DCS_LONG_WRITE, align 4
  %150 = call i32 @DSI_CMD_MDP_STREAM_CTRL_DATA_TYPE(i32 %149)
  %151 = or i32 %148, %150
  %152 = call i32 @dsi_write(%struct.msm_dsi_host* %140, i32 %141, i32 %151)
  %153 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %154 = load i32, i32* @REG_DSI_CMD_MDP_STREAM_TOTAL, align 4
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @DSI_CMD_MDP_STREAM_TOTAL_H_TOTAL(i32 %155)
  %157 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %158 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @DSI_CMD_MDP_STREAM_TOTAL_V_TOTAL(i32 %159)
  %161 = or i32 %156, %160
  %162 = call i32 @dsi_write(%struct.msm_dsi_host* %153, i32 %154, i32 %161)
  br label %163

163:                                              ; preds = %131, %85
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @DSI_ACTIVE_H_START(i32) #1

declare dso_local i32 @DSI_ACTIVE_H_END(i32) #1

declare dso_local i32 @DSI_ACTIVE_V_START(i32) #1

declare dso_local i32 @DSI_ACTIVE_V_END(i32) #1

declare dso_local i32 @DSI_TOTAL_H_TOTAL(i32) #1

declare dso_local i32 @DSI_TOTAL_V_TOTAL(i32) #1

declare dso_local i32 @DSI_ACTIVE_HSYNC_START(i32) #1

declare dso_local i32 @DSI_ACTIVE_HSYNC_END(i32) #1

declare dso_local i32 @DSI_ACTIVE_VSYNC_VPOS_START(i32) #1

declare dso_local i32 @DSI_ACTIVE_VSYNC_VPOS_END(i32) #1

declare dso_local i32 @dsi_get_bpp(i32) #1

declare dso_local i32 @DSI_CMD_MDP_STREAM_CTRL_WORD_COUNT(i32) #1

declare dso_local i32 @DSI_CMD_MDP_STREAM_CTRL_VIRTUAL_CHANNEL(i32) #1

declare dso_local i32 @DSI_CMD_MDP_STREAM_CTRL_DATA_TYPE(i32) #1

declare dso_local i32 @DSI_CMD_MDP_STREAM_TOTAL_H_TOTAL(i32) #1

declare dso_local i32 @DSI_CMD_MDP_STREAM_TOTAL_V_TOTAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
