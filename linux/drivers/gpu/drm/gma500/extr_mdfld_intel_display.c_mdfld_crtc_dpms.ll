; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32*, %struct.psb_offset* }
%struct.psb_offset = type { i32, i32, i32, i32, i32 }
%struct.gma_crtc = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"mode = %d, pipe = %d\0A\00", align 1
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@MDFLD_PWR_GATE_EN = common dso_local global i32 0, align 4
@PIPECONF_DSIPLL_LOCK = common dso_local global i32 0, align 4
@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@PIPEACONF_ENABLE = common dso_local global i32 0, align 4
@PIPE_VBLANK_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"STUCK!!!!\00", align 1
@HS_CTRL_FIFO_EMPTY = common dso_local global i32 0, align 4
@HS_DATA_FIFO_EMPTY = common dso_local global i32 0, align 4
@VGACNTRL = common dso_local global i32 0, align 4
@VGA_DISP_DISABLE = common dso_local global i32 0, align 4
@PIPECONF_PLANE_OFF = common dso_local global i32 0, align 4
@PIPECONF_CURSOR_OFF = common dso_local global i32 0, align 4
@PIPEACONF = common dso_local global i32 0, align 4
@PIPECCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @mdfld_crtc_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfld_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca %struct.gma_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.psb_offset*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.drm_psb_private*, %struct.drm_psb_private** %17, align 8
  store %struct.drm_psb_private* %18, %struct.drm_psb_private** %6, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %19)
  store %struct.gma_crtc* %20, %struct.gma_crtc** %7, align 8
  %21 = load %struct.gma_crtc*, %struct.gma_crtc** %7, align 8
  %22 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 1
  %26 = load %struct.psb_offset*, %struct.psb_offset** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %26, i64 %28
  store %struct.psb_offset* %29, %struct.psb_offset** %9, align 8
  %30 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %31 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i32, i8*, ...) @dev_dbg(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %44 = call i32 @gma_power_begin(%struct.drm_device* %43, i32 1)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %2
  br label %395

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  switch i32 %48, label %392 [
    i32 130, label %49
    i32 129, label %49
    i32 128, label %49
    i32 131, label %276
  ]

49:                                               ; preds = %47, %47, %47
  %50 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %51 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @REG_READ(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %118

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MDFLD_PWR_GATE_EN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* @MDFLD_PWR_GATE_EN, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %69 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @REG_WRITE(i32 %70, i32 %71)
  %73 = call i32 @udelay(i32 500)
  br label %74

74:                                               ; preds = %63, %58
  %75 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %76 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @REG_WRITE(i32 %77, i32 %78)
  %80 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %81 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @REG_READ(i32 %82)
  %84 = call i32 @udelay(i32 500)
  %85 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %86 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @REG_WRITE(i32 %87, i32 %90)
  %92 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %93 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @REG_READ(i32 %94)
  br label %96

96:                                               ; preds = %113, %74
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 2
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 20000
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %104 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @REG_READ(i32 %105)
  %107 = load i32, i32* @PIPECONF_DSIPLL_LOCK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %102, %99, %96
  %112 = phi i1 [ false, %99 ], [ false, %96 ], [ %110, %102 ]
  br i1 %112, label %113, label %117

113:                                              ; preds = %111
  %114 = call i32 @udelay(i32 150)
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %96

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %49
  %119 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %120 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @REG_READ(i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %118
  %128 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %129 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @REG_WRITE(i32 %130, i32 %133)
  %135 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %136 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %139 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @REG_READ(i32 %140)
  %142 = call i32 @REG_WRITE(i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %127, %118
  %144 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %145 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @REG_READ(i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %143
  %153 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %154 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @REG_WRITE(i32 %155, i32 %156)
  %158 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @mdfldWaitForPipeEnable(%struct.drm_device* %158, i32 %159)
  br label %161

161:                                              ; preds = %152, %143
  %162 = load i32, i32* %8, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %8, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %273

167:                                              ; preds = %164, %161
  %168 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %169 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %172 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @REG_READ(i32 %173)
  %175 = call i32 @REG_WRITE(i32 %170, i32 %174)
  %176 = call i32 @msleep(i32 100)
  %177 = load i32, i32* @PIPE_VBLANK_STATUS, align 4
  %178 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %179 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @REG_READ(i32 %180)
  %182 = and i32 %177, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %167
  %185 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %186 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i32, i8*, ...) @dev_dbg(i32 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %272

189:                                              ; preds = %167
  %190 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %191 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 (i32, i8*, ...) @dev_dbg(i32 %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %194 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %195 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @REG_READ(i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %199 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %203 = xor i32 %202, -1
  %204 = and i32 %201, %203
  %205 = call i32 @REG_WRITE(i32 %200, i32 %204)
  %206 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %207 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %210 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @REG_READ(i32 %211)
  %213 = call i32 @REG_WRITE(i32 %208, i32 %212)
  %214 = call i32 @REG_WRITE(i32 45128, i32 1)
  %215 = call i32 @msleep(i32 100)
  %216 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %217 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @REG_READ(i32 %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %11, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %11, align 4
  %224 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %225 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @REG_WRITE(i32 %226, i32 %227)
  %229 = call i32 @msleep(i32 100)
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @MIPI_DEVICE_READY_REG(i32 %230)
  %232 = call i32 @REG_WRITE(i32 %231, i32 0)
  %233 = call i32 @msleep(i32 100)
  %234 = call i32 @REG_READ(i32 45060)
  %235 = call i32 @REG_WRITE(i32 45060, i32 %234)
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @MIPI_DEVICE_READY_REG(i32 %236)
  %238 = call i32 @REG_WRITE(i32 %237, i32 1)
  %239 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %240 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @REG_READ(i32 %241)
  store i32 %242, i32* %11, align 4
  %243 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %244 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %248 = or i32 %246, %247
  %249 = call i32 @REG_WRITE(i32 %245, i32 %248)
  %250 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %251 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %254 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @REG_READ(i32 %255)
  %257 = call i32 @REG_WRITE(i32 %252, i32 %256)
  %258 = call i32 @REG_WRITE(i32 45128, i32 2)
  %259 = call i32 @msleep(i32 100)
  %260 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %261 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @REG_READ(i32 %262)
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %265 = load i32, i32* %11, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %11, align 4
  %267 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %268 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %11, align 4
  %271 = call i32 @REG_WRITE(i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %189, %184
  br label %273

273:                                              ; preds = %272, %164
  %274 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %275 = call i32 @gma_crtc_load_lut(%struct.drm_crtc* %274)
  br label %392

276:                                              ; preds = %47
  %277 = load i32, i32* %8, align 4
  %278 = icmp ne i32 %277, 1
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %281 = load i32, i32* %8, align 4
  %282 = call i32 @MIPI_GEN_FIFO_STAT_REG(i32 %281)
  %283 = load i32, i32* @HS_CTRL_FIFO_EMPTY, align 4
  %284 = load i32, i32* @HS_DATA_FIFO_EMPTY, align 4
  %285 = or i32 %283, %284
  %286 = call i32 @mdfld_dsi_gen_fifo_ready(%struct.drm_device* %280, i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %279, %276
  %288 = load i32, i32* @VGACNTRL, align 4
  %289 = load i32, i32* @VGA_DISP_DISABLE, align 4
  %290 = call i32 @REG_WRITE(i32 %288, i32 %289)
  %291 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %292 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @REG_READ(i32 %293)
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %320

299:                                              ; preds = %287
  %300 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %301 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %305 = xor i32 %304, -1
  %306 = and i32 %303, %305
  %307 = call i32 @REG_WRITE(i32 %302, i32 %306)
  %308 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %309 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %312 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @REG_READ(i32 %313)
  %315 = call i32 @REG_WRITE(i32 %310, i32 %314)
  %316 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %317 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @REG_READ(i32 %318)
  br label %320

320:                                              ; preds = %299, %287
  %321 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %322 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @REG_READ(i32 %323)
  store i32 %324, i32* %11, align 4
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %351

329:                                              ; preds = %320
  %330 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %331 = xor i32 %330, -1
  %332 = load i32, i32* %11, align 4
  %333 = and i32 %332, %331
  store i32 %333, i32* %11, align 4
  %334 = load i32, i32* @PIPECONF_PLANE_OFF, align 4
  %335 = load i32, i32* @PIPECONF_CURSOR_OFF, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* %11, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %11, align 4
  %339 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %340 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %11, align 4
  %343 = call i32 @REG_WRITE(i32 %341, i32 %342)
  %344 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %345 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @REG_READ(i32 %346)
  %348 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %349 = load i32, i32* %8, align 4
  %350 = call i32 @mdfldWaitForPipeDisable(%struct.drm_device* %348, i32 %349)
  br label %351

351:                                              ; preds = %329, %320
  %352 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %353 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @REG_READ(i32 %354)
  store i32 %355, i32* %11, align 4
  %356 = load i32, i32* %11, align 4
  %357 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %391

360:                                              ; preds = %351
  %361 = load i32, i32* %8, align 4
  %362 = icmp ne i32 %361, 1
  br i1 %362, label %363, label %372

363:                                              ; preds = %360
  %364 = load i32, i32* @PIPEACONF, align 4
  %365 = call i32 @REG_READ(i32 %364)
  %366 = load i32, i32* @PIPECCONF, align 4
  %367 = call i32 @REG_READ(i32 %366)
  %368 = or i32 %365, %367
  %369 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %363, %360
  %373 = load i32, i32* %8, align 4
  %374 = icmp eq i32 %373, 1
  br i1 %374, label %375, label %390

375:                                              ; preds = %372, %363
  %376 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %377 = xor i32 %376, -1
  %378 = load i32, i32* %11, align 4
  %379 = and i32 %378, %377
  store i32 %379, i32* %11, align 4
  %380 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %381 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %11, align 4
  %384 = call i32 @REG_WRITE(i32 %382, i32 %383)
  %385 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %386 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @REG_READ(i32 %387)
  %389 = call i32 @udelay(i32 500)
  br label %390

390:                                              ; preds = %375, %372
  br label %391

391:                                              ; preds = %390, %351
  br label %392

392:                                              ; preds = %47, %391, %273
  %393 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %394 = call i32 @gma_power_end(%struct.drm_device* %393)
  br label %395

395:                                              ; preds = %392, %46
  ret void
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdfldWaitForPipeEnable(%struct.drm_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @MIPI_DEVICE_READY_REG(i32) #1

declare dso_local i32 @gma_crtc_load_lut(%struct.drm_crtc*) #1

declare dso_local i32 @mdfld_dsi_gen_fifo_ready(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @MIPI_GEN_FIFO_STAT_REG(i32) #1

declare dso_local i32 @mdfldWaitForPipeDisable(%struct.drm_device*, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
