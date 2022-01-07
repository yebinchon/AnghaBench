; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_2__*, %struct.psb_offset* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*, %struct.drm_crtc*)*, i32 (%struct.drm_device*)* }
%struct.psb_offset = type { i32, i32, i32, i32, i32 }
%struct.gma_crtc = type { i32, i32 }

@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@PIPEACONF_ENABLE = common dso_local global i32 0, align 4
@PIPE_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@VGACNTRL = common dso_local global i32 0, align 4
@VGA_DISP_DISABLE = common dso_local global i32 0, align 4
@DSPARB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gma_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca %struct.gma_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.psb_offset*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %15, align 8
  store %struct.drm_psb_private* %16, %struct.drm_psb_private** %6, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %18 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %17)
  store %struct.gma_crtc* %18, %struct.gma_crtc** %7, align 8
  %19 = load %struct.gma_crtc*, %struct.gma_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %23 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %22, i32 0, i32 1
  %24 = load %struct.psb_offset*, %struct.psb_offset** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %24, i64 %26
  store %struct.psb_offset* %27, %struct.psb_offset** %9, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = call i64 @IS_CDV(%struct.drm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %33 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %35, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = call i32 %36(%struct.drm_device* %37)
  br label %39

39:                                               ; preds = %31, %2
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %251 [
    i32 130, label %41
    i32 129, label %41
    i32 128, label %41
    i32 131, label %157
  ]

41:                                               ; preds = %39, %39, %39
  %42 = load %struct.gma_crtc*, %struct.gma_crtc** %7, align 8
  %43 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %251

47:                                               ; preds = %41
  %48 = load %struct.gma_crtc*, %struct.gma_crtc** %7, align 8
  %49 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %51 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @REG_READ(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %47
  %59 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %60 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @REG_WRITE(i32 %61, i32 %62)
  %64 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %65 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REG_READ(i32 %66)
  %68 = call i32 @udelay(i32 150)
  %69 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %70 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @REG_WRITE(i32 %71, i32 %74)
  %76 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %77 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @REG_READ(i32 %78)
  %80 = call i32 @udelay(i32 150)
  %81 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %82 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @REG_WRITE(i32 %83, i32 %86)
  %88 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %89 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @REG_READ(i32 %90)
  %92 = call i32 @udelay(i32 150)
  br label %93

93:                                               ; preds = %58, %47
  %94 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %95 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @REG_READ(i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %93
  %103 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %104 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @REG_WRITE(i32 %105, i32 %108)
  %110 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %111 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %114 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @REG_READ(i32 %115)
  %117 = call i32 @REG_WRITE(i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %102, %93
  %119 = call i32 @udelay(i32 150)
  %120 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %121 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @REG_READ(i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %118
  %129 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %130 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @REG_WRITE(i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %128, %118
  %137 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %138 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @REG_READ(i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = and i32 %141, -65536
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* @PIPE_FIFO_UNDERRUN, align 4
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %147 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @REG_WRITE(i32 %148, i32 %149)
  %151 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %152 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @REG_READ(i32 %153)
  %155 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %156 = call i32 @gma_crtc_load_lut(%struct.drm_crtc* %155)
  br label %251

157:                                              ; preds = %39
  %158 = load %struct.gma_crtc*, %struct.gma_crtc** %7, align 8
  %159 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  br label %251

163:                                              ; preds = %157
  %164 = load %struct.gma_crtc*, %struct.gma_crtc** %7, align 8
  %165 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load i32, i32* @VGACNTRL, align 4
  %167 = load i32, i32* @VGA_DISP_DISABLE, align 4
  %168 = call i32 @REG_WRITE(i32 %166, i32 %167)
  %169 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %170 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %169)
  %171 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %172 = call i32 @gma_wait_for_vblank(%struct.drm_device* %171)
  %173 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %174 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @REG_READ(i32 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %202

181:                                              ; preds = %163
  %182 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %183 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %187 = xor i32 %186, -1
  %188 = and i32 %185, %187
  %189 = call i32 @REG_WRITE(i32 %184, i32 %188)
  %190 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %191 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %194 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @REG_READ(i32 %195)
  %197 = call i32 @REG_WRITE(i32 %192, i32 %196)
  %198 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %199 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @REG_READ(i32 %200)
  br label %202

202:                                              ; preds = %181, %163
  %203 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %204 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @REG_READ(i32 %205)
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %202
  %212 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %213 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %217 = xor i32 %216, -1
  %218 = and i32 %215, %217
  %219 = call i32 @REG_WRITE(i32 %214, i32 %218)
  %220 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %221 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @REG_READ(i32 %222)
  br label %224

224:                                              ; preds = %211, %202
  %225 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %226 = call i32 @gma_wait_for_vblank(%struct.drm_device* %225)
  %227 = call i32 @udelay(i32 150)
  %228 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %229 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @REG_READ(i32 %230)
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %224
  %237 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %238 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %242 = xor i32 %241, -1
  %243 = and i32 %240, %242
  %244 = call i32 @REG_WRITE(i32 %239, i32 %243)
  %245 = load %struct.psb_offset*, %struct.psb_offset** %9, align 8
  %246 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @REG_READ(i32 %247)
  br label %249

249:                                              ; preds = %236, %224
  %250 = call i32 @udelay(i32 150)
  br label %251

251:                                              ; preds = %39, %249, %162, %136, %46
  %252 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %253 = call i64 @IS_CDV(%struct.drm_device* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %251
  %256 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %257 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %256, i32 0, i32 0
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32 (%struct.drm_device*, %struct.drm_crtc*)*, i32 (%struct.drm_device*, %struct.drm_crtc*)** %259, align 8
  %261 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %262 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %263 = call i32 %260(%struct.drm_device* %261, %struct.drm_crtc* %262)
  br label %264

264:                                              ; preds = %255, %251
  %265 = load i32, i32* @DSPARB, align 4
  %266 = call i32 @REG_WRITE(i32 %265, i32 16190)
  ret void
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @IS_CDV(%struct.drm_device*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gma_crtc_load_lut(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @gma_wait_for_vblank(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
