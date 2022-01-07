; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.tegra_dc_state = type { i32 }
%struct.tegra_dc = type { %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@SYNCPT_CNTRL_NO_STALL = common dso_local global i32 0, align 4
@DC_CMD_GENERAL_INCR_SYNCPT_CNTRL = common dso_local global i32 0, align 4
@DC_CMD_CONT_SYNCPT_VSYNC = common dso_local global i32 0, align 4
@DSC_TO_UF_INT = common dso_local global i32 0, align 4
@DSC_BBUF_UF_INT = common dso_local global i32 0, align 4
@DSC_RBUF_UF_INT = common dso_local global i32 0, align 4
@DSC_OBUF_UF_INT = common dso_local global i32 0, align 4
@DC_CMD_INT_TYPE = common dso_local global i32 0, align 4
@SD3_BUCKET_WALK_DONE_INT = common dso_local global i32 0, align 4
@HEAD_UF_INT = common dso_local global i32 0, align 4
@MSF_INT = common dso_local global i32 0, align 4
@REG_TMOUT_INT = common dso_local global i32 0, align 4
@REGION_CRC_INT = common dso_local global i32 0, align 4
@V_PULSE2_INT = common dso_local global i32 0, align 4
@V_PULSE3_INT = common dso_local global i32 0, align 4
@VBLANK_INT = common dso_local global i32 0, align 4
@FRAME_END_INT = common dso_local global i32 0, align 4
@DC_CMD_INT_POLARITY = common dso_local global i32 0, align 4
@DC_CMD_INT_ENABLE = common dso_local global i32 0, align 4
@DC_CMD_INT_MASK = common dso_local global i32 0, align 4
@READ_MUX = common dso_local global i32 0, align 4
@DC_CMD_STATE_ACCESS = common dso_local global i32 0, align 4
@WIN_A_UF_INT = common dso_local global i32 0, align 4
@WIN_B_UF_INT = common dso_local global i32 0, align 4
@WIN_C_UF_INT = common dso_local global i32 0, align 4
@WIN_A_OF_INT = common dso_local global i32 0, align 4
@WIN_B_OF_INT = common dso_local global i32 0, align 4
@WIN_C_OF_INT = common dso_local global i32 0, align 4
@DC_DISP_DISP_MEM_HIGH_PRIORITY = common dso_local global i32 0, align 4
@DC_DISP_DISP_MEM_HIGH_PRIORITY_TIMER = common dso_local global i32 0, align 4
@DC_DISP_BLEND_BACKGROUND_COLOR = common dso_local global i32 0, align 4
@DC_DISP_BORDER_COLOR = common dso_local global i32 0, align 4
@DC_DISP_INTERLACE_CONTROL = common dso_local global i32 0, align 4
@INTERLACE_ENABLE = common dso_local global i32 0, align 4
@DC_CMD_DISPLAY_COMMAND = common dso_local global i32 0, align 4
@DISP_CTRL_MODE_MASK = common dso_local global i32 0, align 4
@DISP_CTRL_MODE_C_DISPLAY = common dso_local global i32 0, align 4
@DC_CMD_DISPLAY_POWER_CONTROL = common dso_local global i32 0, align 4
@PW0_ENABLE = common dso_local global i32 0, align 4
@PW1_ENABLE = common dso_local global i32 0, align 4
@PW2_ENABLE = common dso_local global i32 0, align 4
@PW3_ENABLE = common dso_local global i32 0, align 4
@PW4_ENABLE = common dso_local global i32 0, align 4
@PM0_ENABLE = common dso_local global i32 0, align 4
@PM1_ENABLE = common dso_local global i32 0, align 4
@UNDERFLOW_MODE_RED = common dso_local global i32 0, align 4
@UNDERFLOW_REPORT_ENABLE = common dso_local global i32 0, align 4
@DC_COM_RG_UNDERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @tegra_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.tegra_dc_state*, align 8
  %7 = alloca %struct.tegra_dc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %5, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call %struct.tegra_dc_state* @to_dc_state(%struct.TYPE_4__* %17)
  store %struct.tegra_dc_state* %18, %struct.tegra_dc_state** %6, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = call %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc* %19)
  store %struct.tegra_dc* %20, %struct.tegra_dc** %7, align 8
  %21 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %22 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  %25 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %26 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %2
  %30 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %31 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @host1x_syncpt_id(i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %35 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 -2147483648, i32* %10, align 4
  br label %42

41:                                               ; preds = %29
  store i32 256, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* @SYNCPT_CNTRL_NO_STALL, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @DC_CMD_GENERAL_INCR_SYNCPT_CNTRL, align 4
  %47 = call i32 @tegra_dc_writel(%struct.tegra_dc* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @DC_CMD_CONT_SYNCPT_VSYNC, align 4
  %54 = call i32 @tegra_dc_writel(%struct.tegra_dc* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %2
  %56 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %57 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %127

62:                                               ; preds = %55
  %63 = load i32, i32* @DSC_TO_UF_INT, align 4
  %64 = load i32, i32* @DSC_BBUF_UF_INT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @DSC_RBUF_UF_INT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @DSC_OBUF_UF_INT, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @DC_CMD_INT_TYPE, align 4
  %73 = call i32 @tegra_dc_writel(%struct.tegra_dc* %70, i32 %71, i32 %72)
  %74 = load i32, i32* @DSC_TO_UF_INT, align 4
  %75 = load i32, i32* @DSC_BBUF_UF_INT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DSC_RBUF_UF_INT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @DSC_OBUF_UF_INT, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SD3_BUCKET_WALK_DONE_INT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @HEAD_UF_INT, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MSF_INT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @REG_TMOUT_INT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @REGION_CRC_INT, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @V_PULSE2_INT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @V_PULSE3_INT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @VBLANK_INT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @FRAME_END_INT, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %8, align 4
  %99 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @DC_CMD_INT_POLARITY, align 4
  %102 = call i32 @tegra_dc_writel(%struct.tegra_dc* %99, i32 %100, i32 %101)
  %103 = load i32, i32* @SD3_BUCKET_WALK_DONE_INT, align 4
  %104 = load i32, i32* @HEAD_UF_INT, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @VBLANK_INT, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @FRAME_END_INT, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %8, align 4
  %110 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @DC_CMD_INT_ENABLE, align 4
  %113 = call i32 @tegra_dc_writel(%struct.tegra_dc* %110, i32 %111, i32 %112)
  %114 = load i32, i32* @HEAD_UF_INT, align 4
  %115 = load i32, i32* @REG_TMOUT_INT, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @FRAME_END_INT, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %8, align 4
  %119 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @DC_CMD_INT_MASK, align 4
  %122 = call i32 @tegra_dc_writel(%struct.tegra_dc* %119, i32 %120, i32 %121)
  %123 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %124 = load i32, i32* @READ_MUX, align 4
  %125 = load i32, i32* @DC_CMD_STATE_ACCESS, align 4
  %126 = call i32 @tegra_dc_writel(%struct.tegra_dc* %123, i32 %124, i32 %125)
  br label %212

127:                                              ; preds = %55
  %128 = load i32, i32* @WIN_A_UF_INT, align 4
  %129 = load i32, i32* @WIN_B_UF_INT, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @WIN_C_UF_INT, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @WIN_A_OF_INT, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @WIN_B_OF_INT, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @WIN_C_OF_INT, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %8, align 4
  %139 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @DC_CMD_INT_TYPE, align 4
  %142 = call i32 @tegra_dc_writel(%struct.tegra_dc* %139, i32 %140, i32 %141)
  %143 = load i32, i32* @WIN_A_UF_INT, align 4
  %144 = load i32, i32* @WIN_B_UF_INT, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @WIN_C_UF_INT, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @WIN_A_OF_INT, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @WIN_B_OF_INT, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @WIN_C_OF_INT, align 4
  %153 = or i32 %151, %152
  store i32 %153, i32* %8, align 4
  %154 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @DC_CMD_INT_POLARITY, align 4
  %157 = call i32 @tegra_dc_writel(%struct.tegra_dc* %154, i32 %155, i32 %156)
  %158 = call i32 @CURSOR_THRESHOLD(i32 0)
  %159 = call i32 @WINDOW_A_THRESHOLD(i32 32)
  %160 = or i32 %158, %159
  %161 = call i32 @WINDOW_B_THRESHOLD(i32 32)
  %162 = or i32 %160, %161
  %163 = call i32 @WINDOW_C_THRESHOLD(i32 32)
  %164 = or i32 %162, %163
  store i32 %164, i32* %8, align 4
  %165 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @DC_DISP_DISP_MEM_HIGH_PRIORITY, align 4
  %168 = call i32 @tegra_dc_writel(%struct.tegra_dc* %165, i32 %166, i32 %167)
  %169 = call i32 @CURSOR_THRESHOLD(i32 0)
  %170 = call i32 @WINDOW_A_THRESHOLD(i32 1)
  %171 = or i32 %169, %170
  %172 = call i32 @WINDOW_B_THRESHOLD(i32 1)
  %173 = or i32 %171, %172
  %174 = call i32 @WINDOW_C_THRESHOLD(i32 1)
  %175 = or i32 %173, %174
  store i32 %175, i32* %8, align 4
  %176 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @DC_DISP_DISP_MEM_HIGH_PRIORITY_TIMER, align 4
  %179 = call i32 @tegra_dc_writel(%struct.tegra_dc* %176, i32 %177, i32 %178)
  %180 = load i32, i32* @VBLANK_INT, align 4
  %181 = load i32, i32* @WIN_A_UF_INT, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @WIN_B_UF_INT, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @WIN_C_UF_INT, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @WIN_A_OF_INT, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @WIN_B_OF_INT, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @WIN_C_OF_INT, align 4
  %192 = or i32 %190, %191
  store i32 %192, i32* %8, align 4
  %193 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @DC_CMD_INT_ENABLE, align 4
  %196 = call i32 @tegra_dc_writel(%struct.tegra_dc* %193, i32 %194, i32 %195)
  %197 = load i32, i32* @WIN_A_UF_INT, align 4
  %198 = load i32, i32* @WIN_B_UF_INT, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @WIN_C_UF_INT, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @WIN_A_OF_INT, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @WIN_B_OF_INT, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @WIN_C_OF_INT, align 4
  %207 = or i32 %205, %206
  store i32 %207, i32* %8, align 4
  %208 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @DC_CMD_INT_MASK, align 4
  %211 = call i32 @tegra_dc_writel(%struct.tegra_dc* %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %127, %62
  %213 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %214 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %213, i32 0, i32 0
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %212
  %220 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %221 = load i32, i32* @DC_DISP_BLEND_BACKGROUND_COLOR, align 4
  %222 = call i32 @tegra_dc_writel(%struct.tegra_dc* %220, i32 0, i32 %221)
  br label %227

223:                                              ; preds = %212
  %224 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %225 = load i32, i32* @DC_DISP_BORDER_COLOR, align 4
  %226 = call i32 @tegra_dc_writel(%struct.tegra_dc* %224, i32 0, i32 %225)
  br label %227

227:                                              ; preds = %223, %219
  %228 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %229 = load %struct.tegra_dc_state*, %struct.tegra_dc_state** %6, align 8
  %230 = call i32 @tegra_dc_commit_state(%struct.tegra_dc* %228, %struct.tegra_dc_state* %229)
  %231 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %232 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %233 = call i32 @tegra_dc_set_timings(%struct.tegra_dc* %231, %struct.drm_display_mode* %232)
  %234 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %235 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %234, i32 0, i32 0
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %227
  %241 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %242 = load i32, i32* @DC_DISP_INTERLACE_CONTROL, align 4
  %243 = call i32 @tegra_dc_readl(%struct.tegra_dc* %241, i32 %242)
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* @INTERLACE_ENABLE, align 4
  %245 = xor i32 %244, -1
  %246 = load i32, i32* %8, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %8, align 4
  %248 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @DC_DISP_INTERLACE_CONTROL, align 4
  %251 = call i32 @tegra_dc_writel(%struct.tegra_dc* %248, i32 %249, i32 %250)
  br label %252

252:                                              ; preds = %240, %227
  %253 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %254 = load i32, i32* @DC_CMD_DISPLAY_COMMAND, align 4
  %255 = call i32 @tegra_dc_readl(%struct.tegra_dc* %253, i32 %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* @DISP_CTRL_MODE_MASK, align 4
  %257 = xor i32 %256, -1
  %258 = load i32, i32* %8, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* @DISP_CTRL_MODE_C_DISPLAY, align 4
  %261 = load i32, i32* %8, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %8, align 4
  %263 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @DC_CMD_DISPLAY_COMMAND, align 4
  %266 = call i32 @tegra_dc_writel(%struct.tegra_dc* %263, i32 %264, i32 %265)
  %267 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %268 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %267, i32 0, i32 0
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %296, label %273

273:                                              ; preds = %252
  %274 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %275 = load i32, i32* @DC_CMD_DISPLAY_POWER_CONTROL, align 4
  %276 = call i32 @tegra_dc_readl(%struct.tegra_dc* %274, i32 %275)
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* @PW0_ENABLE, align 4
  %278 = load i32, i32* @PW1_ENABLE, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @PW2_ENABLE, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @PW3_ENABLE, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @PW4_ENABLE, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @PM0_ENABLE, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @PM1_ENABLE, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* %8, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %8, align 4
  %292 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %293 = load i32, i32* %8, align 4
  %294 = load i32, i32* @DC_CMD_DISPLAY_POWER_CONTROL, align 4
  %295 = call i32 @tegra_dc_writel(%struct.tegra_dc* %292, i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %273, %252
  %297 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %298 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %297, i32 0, i32 0
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %296
  %304 = load i32, i32* @UNDERFLOW_MODE_RED, align 4
  %305 = load i32, i32* @UNDERFLOW_REPORT_ENABLE, align 4
  %306 = or i32 %304, %305
  store i32 %306, i32* %8, align 4
  %307 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* @DC_COM_RG_UNDERFLOW, align 4
  %310 = call i32 @tegra_dc_writel(%struct.tegra_dc* %307, i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %303, %296
  %312 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %313 = call i32 @tegra_dc_commit(%struct.tegra_dc* %312)
  %314 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %315 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %314)
  ret void
}

declare dso_local %struct.tegra_dc_state* @to_dc_state(%struct.TYPE_4__*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @host1x_syncpt_id(i64) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @CURSOR_THRESHOLD(i32) #1

declare dso_local i32 @WINDOW_A_THRESHOLD(i32) #1

declare dso_local i32 @WINDOW_B_THRESHOLD(i32) #1

declare dso_local i32 @WINDOW_C_THRESHOLD(i32) #1

declare dso_local i32 @tegra_dc_commit_state(%struct.tegra_dc*, %struct.tegra_dc_state*) #1

declare dso_local i32 @tegra_dc_set_timings(%struct.tegra_dc*, %struct.drm_display_mode*) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @tegra_dc_commit(%struct.tegra_dc*) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
