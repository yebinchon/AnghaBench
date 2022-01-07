; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_crtc_hdmi_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_crtc_hdmi_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_crtc_helper_funcs*, %struct.drm_device* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc.0*, i32, i32, %struct.drm_framebuffer*)* }
%struct.drm_crtc.0 = type opaque
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.oaktrail_hdmi_dev* }
%struct.oaktrail_hdmi_dev = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.oaktrail_hdmi_clock = type { i32, i32, i32 }

@HTOTAL_A = common dso_local global i32 0, align 4
@HTOTAL_B = common dso_local global i32 0, align 4
@HBLANK_A = common dso_local global i32 0, align 4
@HBLANK_B = common dso_local global i32 0, align 4
@HSYNC_A = common dso_local global i32 0, align 4
@HSYNC_B = common dso_local global i32 0, align 4
@VTOTAL_A = common dso_local global i32 0, align 4
@VTOTAL_B = common dso_local global i32 0, align 4
@VBLANK_A = common dso_local global i32 0, align 4
@VBLANK_B = common dso_local global i32 0, align 4
@VSYNC_A = common dso_local global i32 0, align 4
@VSYNC_B = common dso_local global i32 0, align 4
@DSPASIZE = common dso_local global i32 0, align 4
@DSPBSIZE = common dso_local global i32 0, align 4
@DSPAPOS = common dso_local global i32 0, align 4
@DSPBPOS = common dso_local global i32 0, align 4
@PIPEASRC = common dso_local global i32 0, align 4
@PIPEBSRC = common dso_local global i32 0, align 4
@PIPEACONF = common dso_local global i32 0, align 4
@PIPEBCONF = common dso_local global i32 0, align 4
@DSPBCNTR = common dso_local global i32 0, align 4
@VGACNTRL = common dso_local global i32 0, align 4
@VGA_DISP_DISABLE = common dso_local global i32 0, align 4
@DPLL_CTRL = common dso_local global i32 0, align 4
@DPLL_PWRDN = common dso_local global i32 0, align 4
@DPLL_RESET = common dso_local global i32 0, align 4
@DPLL_DIV_CTRL = common dso_local global i32 0, align 4
@DPLL_STATUS = common dso_local global i32 0, align 4
@DPLL_PDIV_MASK = common dso_local global i32 0, align 4
@DPLL_ADJUST = common dso_local global i32 0, align 4
@DPLL_PDIV_SHIFT = common dso_local global i32 0, align 4
@DPLL_ENSTAT = common dso_local global i32 0, align 4
@DPLL_DITHEN = common dso_local global i32 0, align 4
@DPLL_UPDATE = common dso_local global i32 0, align 4
@DPLL_CLK_ENABLE = common dso_local global i32 0, align 4
@PCH_HTOTAL_B = common dso_local global i32 0, align 4
@PCH_HBLANK_B = common dso_local global i32 0, align 4
@PCH_HSYNC_B = common dso_local global i32 0, align 4
@PCH_VTOTAL_B = common dso_local global i32 0, align 4
@PCH_VBLANK_B = common dso_local global i32 0, align 4
@PCH_VSYNC_B = common dso_local global i32 0, align 4
@PCH_PIPEBSRC = common dso_local global i32 0, align 4
@HDMI_HBLANK_A = common dso_local global i32 0, align 4
@DISPPLANE_GAMMA_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_SEL_PIPE_B = common dso_local global i32 0, align 4
@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@PIPEACONF_ENABLE = common dso_local global i32 0, align 4
@PCH_PIPEBCONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oaktrail_crtc_hdmi_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca %struct.drm_psb_private*, align 8
  %16 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.oaktrail_hdmi_clock, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.drm_crtc_helper_funcs*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %13, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 1
  %38 = load %struct.drm_device*, %struct.drm_device** %37, align 8
  store %struct.drm_device* %38, %struct.drm_device** %14, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load %struct.drm_psb_private*, %struct.drm_psb_private** %40, align 8
  store %struct.drm_psb_private* %41, %struct.drm_psb_private** %15, align 8
  %42 = load %struct.drm_psb_private*, %struct.drm_psb_private** %15, align 8
  %43 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %42, i32 0, i32 0
  %44 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %43, align 8
  store %struct.oaktrail_hdmi_dev* %44, %struct.oaktrail_hdmi_dev** %16, align 8
  store i32 1, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %6
  %48 = load i32, i32* @HTOTAL_A, align 4
  br label %51

49:                                               ; preds = %6
  %50 = load i32, i32* @HTOTAL_B, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @HBLANK_A, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @HBLANK_B, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @HSYNC_A, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @HSYNC_B, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @VTOTAL_A, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @VTOTAL_B, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @VBLANK_A, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @VBLANK_B, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @VSYNC_A, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @VSYNC_B, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @DSPASIZE, align 4
  br label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @DSPBSIZE, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @DSPAPOS, align 4
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @DSPBPOS, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %25, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* @PIPEASRC, align 4
  br label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @PIPEBSRC, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %26, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @PIPEACONF, align 4
  br label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @PIPEBCONF, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  store i32 %124, i32* %27, align 4
  %125 = load i32, i32* @DSPBCNTR, align 4
  store i32 %125, i32* %34, align 4
  %126 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %127 = call i32 @gma_power_begin(%struct.drm_device* %126, i32 1)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %450

130:                                              ; preds = %123
  %131 = load i32, i32* @VGACNTRL, align 4
  %132 = load i32, i32* @VGA_DISP_DISABLE, align 4
  %133 = call i32 @REG_WRITE(i32 %131, i32 %132)
  %134 = load i32, i32* @DPLL_CTRL, align 4
  %135 = call i32 @REG_READ(i32 %134)
  store i32 %135, i32* %32, align 4
  %136 = load i32, i32* %32, align 4
  %137 = load i32, i32* @DPLL_PWRDN, align 4
  %138 = and i32 %136, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %130
  %141 = load i32, i32* @DPLL_CTRL, align 4
  %142 = load i32, i32* %32, align 4
  %143 = load i32, i32* @DPLL_PWRDN, align 4
  %144 = load i32, i32* @DPLL_RESET, align 4
  %145 = or i32 %143, %144
  %146 = or i32 %142, %145
  %147 = call i32 @REG_WRITE(i32 %141, i32 %146)
  %148 = load i32, i32* @DPLL_DIV_CTRL, align 4
  %149 = call i32 @REG_WRITE(i32 %148, i32 0)
  %150 = load i32, i32* @DPLL_STATUS, align 4
  %151 = call i32 @REG_WRITE(i32 %150, i32 1)
  br label %152

152:                                              ; preds = %140, %130
  %153 = call i32 @udelay(i32 150)
  %154 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %155 = call i32 @oaktrail_hdmi_reset(%struct.drm_device* %154)
  store i32 25000, i32* %28, align 4
  %156 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %157 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %158 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %28, align 4
  %161 = call i32 @oaktrail_hdmi_find_dpll(%struct.drm_crtc* %156, i32 %159, i32 %160, %struct.oaktrail_hdmi_clock* %29)
  %162 = load i32, i32* @DPLL_CTRL, align 4
  %163 = call i32 @REG_READ(i32 %162)
  store i32 %163, i32* %32, align 4
  %164 = load i32, i32* @DPLL_PDIV_MASK, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %32, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %32, align 4
  %168 = load i32, i32* @DPLL_PWRDN, align 4
  %169 = load i32, i32* @DPLL_RESET, align 4
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %32, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %32, align 4
  %174 = load i32, i32* @DPLL_CTRL, align 4
  %175 = call i32 @REG_WRITE(i32 %174, i32 8)
  %176 = load i32, i32* @DPLL_DIV_CTRL, align 4
  %177 = getelementptr inbounds %struct.oaktrail_hdmi_clock, %struct.oaktrail_hdmi_clock* %29, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = shl i32 %178, 6
  %180 = getelementptr inbounds %struct.oaktrail_hdmi_clock, %struct.oaktrail_hdmi_clock* %29, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %179, %181
  %183 = call i32 @REG_WRITE(i32 %176, i32 %182)
  %184 = load i32, i32* @DPLL_ADJUST, align 4
  %185 = getelementptr inbounds %struct.oaktrail_hdmi_clock, %struct.oaktrail_hdmi_clock* %29, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 14
  %188 = sub nsw i32 %187, 1
  %189 = call i32 @REG_WRITE(i32 %184, i32 %188)
  %190 = load i32, i32* @DPLL_CTRL, align 4
  %191 = load i32, i32* %32, align 4
  %192 = getelementptr inbounds %struct.oaktrail_hdmi_clock, %struct.oaktrail_hdmi_clock* %29, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @DPLL_PDIV_SHIFT, align 4
  %195 = shl i32 %193, %194
  %196 = or i32 %191, %195
  %197 = load i32, i32* @DPLL_ENSTAT, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @DPLL_DITHEN, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @REG_WRITE(i32 %190, i32 %200)
  %202 = load i32, i32* @DPLL_UPDATE, align 4
  %203 = call i32 @REG_WRITE(i32 %202, i32 -2147483648)
  %204 = load i32, i32* @DPLL_CLK_ENABLE, align 4
  %205 = call i32 @REG_WRITE(i32 %204, i32 -2147155710)
  %206 = call i32 @udelay(i32 150)
  %207 = call i32 @HDMI_WRITE(i32 4100, i32 509)
  %208 = call i32 @HDMI_WRITE(i32 8192, i32 1)
  %209 = call i32 @HDMI_WRITE(i32 8200, i32 0)
  %210 = call i32 @HDMI_WRITE(i32 12592, i32 8)
  %211 = call i32 @HDMI_WRITE(i32 4124, i32 25167888)
  %212 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %213 = call i32 @htotal_calculate(%struct.drm_display_mode* %212)
  store i32 %213, i32* %33, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %33, align 4
  %216 = call i32 @REG_WRITE(i32 %214, i32 %215)
  %217 = load i32, i32* %19, align 4
  %218 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %219 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 1
  %222 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %223 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %224, 1
  %226 = shl i32 %225, 16
  %227 = or i32 %221, %226
  %228 = call i32 @REG_WRITE(i32 %217, i32 %227)
  %229 = load i32, i32* %20, align 4
  %230 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %231 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %232, 1
  %234 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %235 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1
  %238 = shl i32 %237, 16
  %239 = or i32 %233, %238
  %240 = call i32 @REG_WRITE(i32 %229, i32 %239)
  %241 = load i32, i32* %21, align 4
  %242 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %243 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, 1
  %246 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %247 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %248, 1
  %250 = shl i32 %249, 16
  %251 = or i32 %245, %250
  %252 = call i32 @REG_WRITE(i32 %241, i32 %251)
  %253 = load i32, i32* %22, align 4
  %254 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %255 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 %256, 1
  %258 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %259 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 %260, 1
  %262 = shl i32 %261, 16
  %263 = or i32 %257, %262
  %264 = call i32 @REG_WRITE(i32 %253, i32 %263)
  %265 = load i32, i32* %23, align 4
  %266 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %267 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %268, 1
  %270 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %271 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %272, 1
  %274 = shl i32 %273, 16
  %275 = or i32 %269, %274
  %276 = call i32 @REG_WRITE(i32 %265, i32 %275)
  %277 = load i32, i32* %26, align 4
  %278 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %279 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %278, i32 0, i32 10
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %280, 1
  %282 = shl i32 %281, 16
  %283 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %284 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %285, 1
  %287 = or i32 %282, %286
  %288 = call i32 @REG_WRITE(i32 %277, i32 %287)
  %289 = load i32, i32* @PCH_HTOTAL_B, align 4
  %290 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %291 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %290, i32 0, i32 10
  %292 = load i32, i32* %291, align 4
  %293 = sub nsw i32 %292, 1
  %294 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %295 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %294, i32 0, i32 11
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 %296, 1
  %298 = shl i32 %297, 16
  %299 = or i32 %293, %298
  %300 = call i32 @REG_WRITE(i32 %289, i32 %299)
  %301 = load i32, i32* @PCH_HBLANK_B, align 4
  %302 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %303 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = sub nsw i32 %304, 1
  %306 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %307 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = sub nsw i32 %308, 1
  %310 = shl i32 %309, 16
  %311 = or i32 %305, %310
  %312 = call i32 @REG_WRITE(i32 %301, i32 %311)
  %313 = load i32, i32* @PCH_HSYNC_B, align 4
  %314 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %315 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = sub nsw i32 %316, 1
  %318 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %319 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 %320, 1
  %322 = shl i32 %321, 16
  %323 = or i32 %317, %322
  %324 = call i32 @REG_WRITE(i32 %313, i32 %323)
  %325 = load i32, i32* @PCH_VTOTAL_B, align 4
  %326 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %327 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %328, 1
  %330 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %331 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 4
  %333 = sub nsw i32 %332, 1
  %334 = shl i32 %333, 16
  %335 = or i32 %329, %334
  %336 = call i32 @REG_WRITE(i32 %325, i32 %335)
  %337 = load i32, i32* @PCH_VBLANK_B, align 4
  %338 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %339 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %340, 1
  %342 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %343 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %342, i32 0, i32 7
  %344 = load i32, i32* %343, align 4
  %345 = sub nsw i32 %344, 1
  %346 = shl i32 %345, 16
  %347 = or i32 %341, %346
  %348 = call i32 @REG_WRITE(i32 %337, i32 %347)
  %349 = load i32, i32* @PCH_VSYNC_B, align 4
  %350 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %351 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %350, i32 0, i32 8
  %352 = load i32, i32* %351, align 4
  %353 = sub nsw i32 %352, 1
  %354 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %355 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %354, i32 0, i32 9
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %356, 1
  %358 = shl i32 %357, 16
  %359 = or i32 %353, %358
  %360 = call i32 @REG_WRITE(i32 %349, i32 %359)
  %361 = load i32, i32* @PCH_PIPEBSRC, align 4
  %362 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %363 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %362, i32 0, i32 10
  %364 = load i32, i32* %363, align 4
  %365 = sub nsw i32 %364, 1
  %366 = shl i32 %365, 16
  %367 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %368 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 4
  %370 = sub nsw i32 %369, 1
  %371 = or i32 %366, %370
  %372 = call i32 @REG_WRITE(i32 %361, i32 %371)
  %373 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %374 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %377 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = sub nsw i32 %375, %378
  store i32 %379, i32* %33, align 4
  %380 = load i32, i32* @HDMI_HBLANK_A, align 4
  %381 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %382 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %381, i32 0, i32 10
  %383 = load i32, i32* %382, align 4
  %384 = sub nsw i32 %383, 1
  %385 = shl i32 %384, 16
  %386 = load i32, i32* %33, align 4
  %387 = or i32 %385, %386
  %388 = call i32 @HDMI_WRITE(i32 %380, i32 %387)
  %389 = load i32, i32* %24, align 4
  %390 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %391 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %390, i32 0, i32 12
  %392 = load i32, i32* %391, align 4
  %393 = sub nsw i32 %392, 1
  %394 = shl i32 %393, 16
  %395 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %396 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %395, i32 0, i32 13
  %397 = load i32, i32* %396, align 4
  %398 = sub nsw i32 %397, 1
  %399 = or i32 %394, %398
  %400 = call i32 @REG_WRITE(i32 %389, i32 %399)
  %401 = load i32, i32* %25, align 4
  %402 = call i32 @REG_WRITE(i32 %401, i32 0)
  %403 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %404 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %403, i32 0, i32 0
  %405 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %404, align 8
  store %struct.drm_crtc_helper_funcs* %405, %struct.drm_crtc_helper_funcs** %35, align 8
  %406 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %35, align 8
  %407 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %406, i32 0, i32 0
  %408 = load i32 (%struct.drm_crtc.0*, i32, i32, %struct.drm_framebuffer*)*, i32 (%struct.drm_crtc.0*, i32, i32, %struct.drm_framebuffer*)** %407, align 8
  %409 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %410 = bitcast %struct.drm_crtc* %409 to %struct.drm_crtc.0*
  %411 = load i32, i32* %11, align 4
  %412 = load i32, i32* %12, align 4
  %413 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %414 = call i32 %408(%struct.drm_crtc.0* %410, i32 %411, i32 %412, %struct.drm_framebuffer* %413)
  %415 = load i32, i32* %34, align 4
  %416 = call i32 @REG_READ(i32 %415)
  store i32 %416, i32* %30, align 4
  %417 = load i32, i32* @DISPPLANE_GAMMA_ENABLE, align 4
  %418 = load i32, i32* %30, align 4
  %419 = or i32 %418, %417
  store i32 %419, i32* %30, align 4
  %420 = load i32, i32* @DISPPLANE_SEL_PIPE_B, align 4
  %421 = load i32, i32* %30, align 4
  %422 = or i32 %421, %420
  store i32 %422, i32* %30, align 4
  %423 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %424 = load i32, i32* %30, align 4
  %425 = or i32 %424, %423
  store i32 %425, i32* %30, align 4
  %426 = load i32, i32* %27, align 4
  %427 = call i32 @REG_READ(i32 %426)
  store i32 %427, i32* %31, align 4
  %428 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %429 = load i32, i32* %31, align 4
  %430 = or i32 %429, %428
  store i32 %430, i32* %31, align 4
  %431 = load i32, i32* %27, align 4
  %432 = load i32, i32* %31, align 4
  %433 = call i32 @REG_WRITE(i32 %431, i32 %432)
  %434 = load i32, i32* %27, align 4
  %435 = call i32 @REG_READ(i32 %434)
  %436 = load i32, i32* @PCH_PIPEBCONF, align 4
  %437 = load i32, i32* %31, align 4
  %438 = call i32 @REG_WRITE(i32 %436, i32 %437)
  %439 = load i32, i32* @PCH_PIPEBCONF, align 4
  %440 = call i32 @REG_READ(i32 %439)
  %441 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %442 = call i32 @gma_wait_for_vblank(%struct.drm_device* %441)
  %443 = load i32, i32* %34, align 4
  %444 = load i32, i32* %30, align 4
  %445 = call i32 @REG_WRITE(i32 %443, i32 %444)
  %446 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %447 = call i32 @gma_wait_for_vblank(%struct.drm_device* %446)
  %448 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %449 = call i32 @gma_power_end(%struct.drm_device* %448)
  store i32 0, i32* %7, align 4
  br label %450

450:                                              ; preds = %152, %129
  %451 = load i32, i32* %7, align 4
  ret i32 %451
}

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @oaktrail_hdmi_reset(%struct.drm_device*) #1

declare dso_local i32 @oaktrail_hdmi_find_dpll(%struct.drm_crtc*, i32, i32, %struct.oaktrail_hdmi_clock*) #1

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

declare dso_local i32 @htotal_calculate(%struct.drm_display_mode*) #1

declare dso_local i32 @gma_wait_for_vblank(%struct.drm_device*) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
