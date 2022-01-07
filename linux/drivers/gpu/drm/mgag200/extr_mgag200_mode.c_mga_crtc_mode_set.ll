; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_3__ = type { %struct.drm_framebuffer* }
%struct.drm_device = type { i32, %struct.mga_device* }
%struct.mga_device = type { i32*, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@mga_crtc_mode_set.dacvalue = internal global <{ [64 x i8], [16 x i8] }> <{ [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C9\FF\BF \1F \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\00\B0\00\C24\14\02\83\00\93\00w\00\00\00:", [16 x i8] zeroinitializer }>, align 16
@MGA1064_VREF_CTL = common dso_local global i64 0, align 8
@MGA1064_PIX_CLK_CTL_SEL_PLL = common dso_local global i8 0, align 1
@MGA1064_PIX_CLK_CTL = common dso_local global i64 0, align 8
@MGA1064_MISC_CTL_DAC_EN = common dso_local global i8 0, align 1
@MGA1064_MISC_CTL_VGA8 = common dso_local global i8 0, align 1
@MGA1064_MISC_CTL_DAC_RAM_CS = common dso_local global i8 0, align 1
@MGA1064_MISC_CTL = common dso_local global i64 0, align 8
@MGA1064_MUL_CTL_8bits = common dso_local global i8 0, align 1
@MGA1064_MUL_CTL = common dso_local global i64 0, align 8
@MGA1064_MUL_CTL_15bits = common dso_local global i8 0, align 1
@MGA1064_MUL_CTL_16bits = common dso_local global i8 0, align 1
@MGA1064_MUL_CTL_24bits = common dso_local global i8 0, align 1
@MGA1064_MUL_CTL_32_24bits = common dso_local global i8 0, align 1
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@PCI_MGA_OPTION = common dso_local global i32 0, align 4
@PCI_MGA_OPTION2 = common dso_local global i32 0, align 4
@MGA_MISC_OUT = common dso_local global i32 0, align 4
@MGAREG_MEMCTL = common dso_local global i32 0, align 4
@MGAREG_SEQ_INDEX = common dso_local global i32 0, align 4
@MGAREG_SEQ_DATA = common dso_local global i32 0, align 4
@MGAREG_CRTCEXT_INDEX = common dso_local global i32 0, align 4
@MGAREG_CRTCEXT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @mga_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.mga_device*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca i32, align 4
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
  %28 = alloca i8, align 1
  %29 = alloca [6 x i8], align 1
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %12, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 1
  %38 = load %struct.drm_device*, %struct.drm_device** %37, align 8
  store %struct.drm_device* %38, %struct.drm_device** %13, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 1
  %41 = load %struct.mga_device*, %struct.mga_device** %40, align 8
  store %struct.mga_device* %41, %struct.mga_device** %14, align 8
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %45, align 8
  store %struct.drm_framebuffer* %46, %struct.drm_framebuffer** %15, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i8 0, i8* %28, align 1
  %47 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %48 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %51 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %49, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %30, align 4
  %61 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %62 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %113 [
    i32 130, label %64
    i32 129, label %64
    i32 128, label %88
    i32 131, label %88
    i32 132, label %91
    i32 135, label %103
    i32 134, label %103
    i32 133, label %112
  ]

64:                                               ; preds = %6, %6
  %65 = load i64, i64* @MGA1064_VREF_CTL, align 8
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %65
  store i8 3, i8* %66, align 1
  %67 = load i8, i8* @MGA1064_PIX_CLK_CTL_SEL_PLL, align 1
  %68 = load i64, i64* @MGA1064_PIX_CLK_CTL, align 8
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %68
  store i8 %67, i8* %69, align 1
  %70 = load i8, i8* @MGA1064_MISC_CTL_DAC_EN, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @MGA1064_MISC_CTL_VGA8, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %71, %73
  %75 = load i8, i8* @MGA1064_MISC_CTL_DAC_RAM_CS, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %74, %76
  %78 = trunc i32 %77 to i8
  %79 = load i64, i64* @MGA1064_MISC_CTL, align 8
  %80 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %79
  store i8 %78, i8* %80, align 1
  %81 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %82 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %64
  store i32 1074041120, i32* %25, align 4
  br label %87

86:                                               ; preds = %64
  store i32 1074057504, i32* %25, align 4
  br label %87

87:                                               ; preds = %86, %85
  store i32 32768, i32* %26, align 4
  br label %113

88:                                               ; preds = %6, %6
  %89 = load i64, i64* @MGA1064_VREF_CTL, align 8
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %89
  store i8 7, i8* %90, align 1
  store i32 1090818336, i32* %25, align 4
  store i32 45056, i32* %26, align 4
  br label %113

91:                                               ; preds = %6
  %92 = load i8, i8* @MGA1064_PIX_CLK_CTL_SEL_PLL, align 1
  %93 = load i64, i64* @MGA1064_PIX_CLK_CTL, align 8
  %94 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %93
  store i8 %92, i8* %94, align 1
  %95 = load i8, i8* @MGA1064_MISC_CTL_VGA8, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @MGA1064_MISC_CTL_DAC_RAM_CS, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %96, %98
  %100 = trunc i32 %99 to i8
  %101 = load i64, i64* @MGA1064_MISC_CTL, align 8
  %102 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %101
  store i8 %100, i8* %102, align 1
  store i32 288, i32* %25, align 4
  store i32 45056, i32* %26, align 4
  br label %113

103:                                              ; preds = %6, %6
  %104 = load i8, i8* @MGA1064_MISC_CTL_VGA8, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @MGA1064_MISC_CTL_DAC_RAM_CS, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %105, %107
  %109 = trunc i32 %108 to i8
  %110 = load i64, i64* @MGA1064_MISC_CTL, align 8
  %111 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %110
  store i8 %109, i8* %111, align 1
  store i32 288, i32* %25, align 4
  store i32 45056, i32* %26, align 4
  br label %113

112:                                              ; preds = %6
  br label %113

113:                                              ; preds = %6, %112, %103, %91, %88, %87
  %114 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %115 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, 8
  switch i32 %121, label %150 [
    i32 8, label %122
    i32 16, label %126
    i32 24, label %142
    i32 32, label %146
  ]

122:                                              ; preds = %113
  %123 = load i8, i8* @MGA1064_MUL_CTL_8bits, align 1
  %124 = load i64, i64* @MGA1064_MUL_CTL, align 8
  %125 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %124
  store i8 %123, i8* %125, align 1
  br label %150

126:                                              ; preds = %113
  %127 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %128 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 15
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i8, i8* @MGA1064_MUL_CTL_15bits, align 1
  %135 = load i64, i64* @MGA1064_MUL_CTL, align 8
  %136 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %135
  store i8 %134, i8* %136, align 1
  br label %141

137:                                              ; preds = %126
  %138 = load i8, i8* @MGA1064_MUL_CTL_16bits, align 1
  %139 = load i64, i64* @MGA1064_MUL_CTL, align 8
  %140 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %139
  store i8 %138, i8* %140, align 1
  br label %141

141:                                              ; preds = %137, %133
  br label %150

142:                                              ; preds = %113
  %143 = load i8, i8* @MGA1064_MUL_CTL_24bits, align 1
  %144 = load i64, i64* @MGA1064_MUL_CTL, align 8
  %145 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %144
  store i8 %143, i8* %145, align 1
  br label %150

146:                                              ; preds = %113
  %147 = load i8, i8* @MGA1064_MUL_CTL_32_24bits, align 1
  %148 = load i64, i64* @MGA1064_MUL_CTL, align 8
  %149 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %148
  store i8 %147, i8* %149, align 1
  br label %150

150:                                              ; preds = %113, %146, %142, %141, %122
  %151 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %152 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load i8, i8* %28, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %159, 64
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %28, align 1
  br label %162

162:                                              ; preds = %157, %150
  %163 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %164 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  %170 = load i8, i8* %28, align 1
  %171 = zext i8 %170 to i32
  %172 = or i32 %171, 128
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %28, align 1
  br label %174

174:                                              ; preds = %169, %162
  store i32 0, i32* %27, align 4
  br label %175

175:                                              ; preds = %254, %174
  %176 = load i32, i32* %27, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp ult i64 %177, 80
  br i1 %178, label %179, label %257

179:                                              ; preds = %175
  %180 = load i32, i32* %27, align 4
  %181 = icmp sle i32 %180, 23
  br i1 %181, label %200, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %27, align 4
  %184 = icmp eq i32 %183, 27
  br i1 %184, label %200, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %27, align 4
  %187 = icmp eq i32 %186, 28
  br i1 %187, label %200, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %27, align 4
  %190 = icmp sge i32 %189, 31
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* %27, align 4
  %193 = icmp sle i32 %192, 41
  br i1 %193, label %200, label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* %27, align 4
  %196 = icmp sge i32 %195, 48
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i32, i32* %27, align 4
  %199 = icmp sle i32 %198, 55
  br i1 %199, label %200, label %201

200:                                              ; preds = %197, %191, %185, %182, %179
  br label %254

201:                                              ; preds = %197, %194
  %202 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %203 = call i64 @IS_G200_SE(%struct.mga_device* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = load i32, i32* %27, align 4
  %207 = icmp eq i32 %206, 44
  br i1 %207, label %214, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %27, align 4
  %210 = icmp eq i32 %209, 45
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %27, align 4
  %213 = icmp eq i32 %212, 46
  br i1 %213, label %214, label %215

214:                                              ; preds = %211, %208, %205
  br label %254

215:                                              ; preds = %211, %201
  %216 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %217 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 132
  br i1 %219, label %240, label %220

220:                                              ; preds = %215
  %221 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %222 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 128
  br i1 %224, label %240, label %225

225:                                              ; preds = %220
  %226 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %227 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 135
  br i1 %229, label %240, label %230

230:                                              ; preds = %225
  %231 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %232 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 131
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %237 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 134
  br i1 %239, label %240, label %247

240:                                              ; preds = %235, %230, %225, %220, %215
  %241 = load i32, i32* %27, align 4
  %242 = icmp sge i32 %241, 68
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i32, i32* %27, align 4
  %245 = icmp sle i32 %244, 78
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  br label %254

247:                                              ; preds = %243, %240, %235
  %248 = load i32, i32* %27, align 4
  %249 = load i32, i32* %27, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [80 x i8], [80 x i8]* bitcast (<{ [64 x i8], [16 x i8] }>* @mga_crtc_mode_set.dacvalue to [80 x i8]*), i64 0, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = call i32 @WREG_DAC(i32 %248, i8 zeroext %252)
  br label %254

254:                                              ; preds = %247, %246, %214, %200
  %255 = load i32, i32* %27, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %27, align 4
  br label %175

257:                                              ; preds = %175
  %258 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %259 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 133
  br i1 %261, label %262, label %264

262:                                              ; preds = %257
  %263 = call i32 @WREG_DAC(i32 144, i8 zeroext 0)
  br label %264

264:                                              ; preds = %262, %257
  %265 = load i32, i32* %25, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %264
  %268 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %269 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @PCI_MGA_OPTION, align 4
  %272 = load i32, i32* %25, align 4
  %273 = call i32 @pci_write_config_dword(i32 %270, i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %267, %264
  %275 = load i32, i32* %26, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %274
  %278 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %279 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @PCI_MGA_OPTION2, align 4
  %282 = load i32, i32* %26, align 4
  %283 = call i32 @pci_write_config_dword(i32 %280, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %277, %274
  %285 = call i32 @WREG_SEQ(i32 2, i32 15)
  %286 = call i32 @WREG_SEQ(i32 3, i32 0)
  %287 = call i32 @WREG_SEQ(i32 4, i32 14)
  %288 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %289 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %294 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %293, i32 0, i32 1
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = sdiv i32 %292, %299
  store i32 %300, i32* %24, align 4
  %301 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %302 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %301, i32 0, i32 1
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = mul nsw i32 %307, 8
  %309 = icmp eq i32 %308, 24
  br i1 %309, label %310, label %316

310:                                              ; preds = %284
  %311 = load i32, i32* %24, align 4
  %312 = mul nsw i32 %311, 3
  %313 = load i32, i32* %30, align 4
  %314 = sub nsw i32 4, %313
  %315 = ashr i32 %312, %314
  store i32 %315, i32* %24, align 4
  br label %321

316:                                              ; preds = %284
  %317 = load i32, i32* %24, align 4
  %318 = load i32, i32* %30, align 4
  %319 = sub nsw i32 4, %318
  %320 = ashr i32 %317, %319
  store i32 %320, i32* %24, align 4
  br label %321

321:                                              ; preds = %316, %310
  %322 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %323 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = sdiv i32 %324, 8
  %326 = sub nsw i32 %325, 1
  store i32 %326, i32* %16, align 4
  %327 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %328 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = sdiv i32 %329, 8
  %331 = sub nsw i32 %330, 1
  store i32 %331, i32* %17, align 4
  %332 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %333 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = sdiv i32 %334, 8
  %336 = sub nsw i32 %335, 1
  store i32 %336, i32* %18, align 4
  %337 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %338 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = sdiv i32 %339, 8
  %341 = sub nsw i32 %340, 1
  store i32 %341, i32* %19, align 4
  %342 = load i32, i32* %19, align 4
  %343 = and i32 %342, 7
  %344 = icmp eq i32 %343, 6
  br i1 %344, label %349, label %345

345:                                              ; preds = %321
  %346 = load i32, i32* %19, align 4
  %347 = and i32 %346, 7
  %348 = icmp eq i32 %347, 4
  br i1 %348, label %349, label %352

349:                                              ; preds = %345, %321
  %350 = load i32, i32* %19, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %19, align 4
  br label %352

352:                                              ; preds = %349, %345
  %353 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %354 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 4
  %356 = sub nsw i32 %355, 1
  store i32 %356, i32* %20, align 4
  %357 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %358 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 4
  %360 = sub nsw i32 %359, 1
  store i32 %360, i32* %21, align 4
  %361 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %362 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %361, i32 0, i32 7
  %363 = load i32, i32* %362, align 4
  %364 = sub nsw i32 %363, 1
  store i32 %364, i32* %22, align 4
  %365 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %366 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %365, i32 0, i32 8
  %367 = load i32, i32* %366, align 4
  %368 = sub nsw i32 %367, 2
  store i32 %368, i32* %23, align 4
  %369 = call i32 @WREG_GFX(i32 0, i32 0)
  %370 = call i32 @WREG_GFX(i32 1, i32 0)
  %371 = call i32 @WREG_GFX(i32 2, i32 0)
  %372 = call i32 @WREG_GFX(i32 3, i32 0)
  %373 = call i32 @WREG_GFX(i32 4, i32 0)
  %374 = call i32 @WREG_GFX(i32 5, i32 64)
  %375 = call i32 @WREG_GFX(i32 6, i32 5)
  %376 = call i32 @WREG_GFX(i32 7, i32 15)
  %377 = call i32 @WREG_GFX(i32 8, i32 15)
  %378 = load i32, i32* %19, align 4
  %379 = sub nsw i32 %378, 4
  %380 = call i32 @WREG_CRT(i32 0, i32 %379)
  %381 = load i32, i32* %16, align 4
  %382 = call i32 @WREG_CRT(i32 1, i32 %381)
  %383 = load i32, i32* %16, align 4
  %384 = call i32 @WREG_CRT(i32 2, i32 %383)
  %385 = load i32, i32* %19, align 4
  %386 = and i32 %385, 31
  %387 = or i32 %386, 128
  %388 = call i32 @WREG_CRT(i32 3, i32 %387)
  %389 = load i32, i32* %17, align 4
  %390 = call i32 @WREG_CRT(i32 4, i32 %389)
  %391 = load i32, i32* %19, align 4
  %392 = and i32 %391, 32
  %393 = shl i32 %392, 2
  %394 = load i32, i32* %18, align 4
  %395 = and i32 %394, 31
  %396 = or i32 %393, %395
  %397 = call i32 @WREG_CRT(i32 5, i32 %396)
  %398 = load i32, i32* %23, align 4
  %399 = and i32 %398, 255
  %400 = call i32 @WREG_CRT(i32 6, i32 %399)
  %401 = load i32, i32* %23, align 4
  %402 = and i32 %401, 256
  %403 = ashr i32 %402, 8
  %404 = load i32, i32* %20, align 4
  %405 = and i32 %404, 256
  %406 = ashr i32 %405, 7
  %407 = or i32 %403, %406
  %408 = load i32, i32* %21, align 4
  %409 = and i32 %408, 256
  %410 = ashr i32 %409, 6
  %411 = or i32 %407, %410
  %412 = load i32, i32* %20, align 4
  %413 = and i32 %412, 256
  %414 = ashr i32 %413, 5
  %415 = or i32 %411, %414
  %416 = load i32, i32* %20, align 4
  %417 = and i32 %416, 256
  %418 = ashr i32 %417, 4
  %419 = or i32 %415, %418
  %420 = load i32, i32* %23, align 4
  %421 = and i32 %420, 512
  %422 = ashr i32 %421, 4
  %423 = or i32 %419, %422
  %424 = load i32, i32* %20, align 4
  %425 = and i32 %424, 512
  %426 = ashr i32 %425, 3
  %427 = or i32 %423, %426
  %428 = load i32, i32* %21, align 4
  %429 = and i32 %428, 512
  %430 = ashr i32 %429, 2
  %431 = or i32 %427, %430
  %432 = call i32 @WREG_CRT(i32 7, i32 %431)
  %433 = load i32, i32* %20, align 4
  %434 = and i32 %433, 512
  %435 = ashr i32 %434, 4
  %436 = load i32, i32* %20, align 4
  %437 = and i32 %436, 512
  %438 = ashr i32 %437, 3
  %439 = or i32 %435, %438
  %440 = call i32 @WREG_CRT(i32 9, i32 %439)
  %441 = call i32 @WREG_CRT(i32 10, i32 0)
  %442 = call i32 @WREG_CRT(i32 11, i32 0)
  %443 = call i32 @WREG_CRT(i32 12, i32 0)
  %444 = call i32 @WREG_CRT(i32 13, i32 0)
  %445 = call i32 @WREG_CRT(i32 14, i32 0)
  %446 = call i32 @WREG_CRT(i32 15, i32 0)
  %447 = load i32, i32* %21, align 4
  %448 = and i32 %447, 255
  %449 = call i32 @WREG_CRT(i32 16, i32 %448)
  %450 = load i32, i32* %22, align 4
  %451 = and i32 %450, 15
  %452 = or i32 %451, 32
  %453 = call i32 @WREG_CRT(i32 17, i32 %452)
  %454 = load i32, i32* %20, align 4
  %455 = and i32 %454, 255
  %456 = call i32 @WREG_CRT(i32 18, i32 %455)
  %457 = load i32, i32* %24, align 4
  %458 = and i32 %457, 255
  %459 = call i32 @WREG_CRT(i32 19, i32 %458)
  %460 = call i32 @WREG_CRT(i32 20, i32 0)
  %461 = load i32, i32* %20, align 4
  %462 = and i32 %461, 255
  %463 = call i32 @WREG_CRT(i32 21, i32 %462)
  %464 = load i32, i32* %23, align 4
  %465 = add nsw i32 %464, 1
  %466 = and i32 %465, 255
  %467 = call i32 @WREG_CRT(i32 22, i32 %466)
  %468 = call i32 @WREG_CRT(i32 23, i32 195)
  %469 = load i32, i32* %20, align 4
  %470 = and i32 %469, 255
  %471 = call i32 @WREG_CRT(i32 24, i32 %470)
  %472 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 0
  store i8 0, i8* %472, align 1
  %473 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 5
  store i8 0, i8* %473, align 1
  %474 = load i32, i32* %24, align 4
  %475 = and i32 %474, 768
  %476 = ashr i32 %475, 4
  %477 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 0
  %478 = load i8, i8* %477, align 1
  %479 = zext i8 %478 to i32
  %480 = or i32 %479, %476
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %477, align 1
  %482 = load i32, i32* %19, align 4
  %483 = sub nsw i32 %482, 4
  %484 = and i32 %483, 256
  %485 = ashr i32 %484, 8
  %486 = load i32, i32* %16, align 4
  %487 = and i32 %486, 256
  %488 = ashr i32 %487, 7
  %489 = or i32 %485, %488
  %490 = load i32, i32* %17, align 4
  %491 = and i32 %490, 256
  %492 = ashr i32 %491, 6
  %493 = or i32 %489, %492
  %494 = load i32, i32* %19, align 4
  %495 = and i32 %494, 64
  %496 = or i32 %493, %495
  %497 = trunc i32 %496 to i8
  %498 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 1
  store i8 %497, i8* %498, align 1
  %499 = load i32, i32* %23, align 4
  %500 = and i32 %499, 3072
  %501 = ashr i32 %500, 10
  %502 = load i32, i32* %20, align 4
  %503 = and i32 %502, 1024
  %504 = ashr i32 %503, 8
  %505 = or i32 %501, %504
  %506 = load i32, i32* %20, align 4
  %507 = and i32 %506, 3072
  %508 = ashr i32 %507, 7
  %509 = or i32 %505, %508
  %510 = load i32, i32* %21, align 4
  %511 = and i32 %510, 3072
  %512 = ashr i32 %511, 5
  %513 = or i32 %509, %512
  %514 = load i32, i32* %20, align 4
  %515 = and i32 %514, 1024
  %516 = ashr i32 %515, 3
  %517 = or i32 %513, %516
  %518 = trunc i32 %517 to i8
  %519 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 2
  store i8 %518, i8* %519, align 1
  %520 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %521 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %520, i32 0, i32 1
  %522 = load %struct.TYPE_4__*, %struct.TYPE_4__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i32 0, i32 0
  %524 = load i32*, i32** %523, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 0
  %526 = load i32, i32* %525, align 4
  %527 = mul nsw i32 %526, 8
  %528 = icmp eq i32 %527, 24
  br i1 %528, label %529, label %537

529:                                              ; preds = %352
  %530 = load i32, i32* %30, align 4
  %531 = shl i32 1, %530
  %532 = mul nsw i32 %531, 3
  %533 = sub nsw i32 %532, 1
  %534 = or i32 %533, 128
  %535 = trunc i32 %534 to i8
  %536 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 3
  store i8 %535, i8* %536, align 1
  br label %544

537:                                              ; preds = %352
  %538 = load i32, i32* %30, align 4
  %539 = shl i32 1, %538
  %540 = sub nsw i32 %539, 1
  %541 = or i32 %540, 128
  %542 = trunc i32 %541 to i8
  %543 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 3
  store i8 %542, i8* %543, align 1
  br label %544

544:                                              ; preds = %537, %529
  %545 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 4
  store i8 0, i8* %545, align 1
  %546 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %547 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 8
  %549 = icmp eq i32 %548, 128
  br i1 %549, label %555, label %550

550:                                              ; preds = %544
  %551 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %552 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 8
  %554 = icmp eq i32 %553, 131
  br i1 %554, label %555, label %561

555:                                              ; preds = %550, %544
  %556 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 1
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i32
  %559 = or i32 %558, 136
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %556, align 1
  br label %561

561:                                              ; preds = %555, %550
  store i8 45, i8* %28, align 1
  %562 = load i32, i32* @MGA_MISC_OUT, align 4
  %563 = load i8, i8* %28, align 1
  %564 = zext i8 %563 to i32
  %565 = call i32 @WREG8(i32 %562, i32 %564)
  %566 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %567 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %568 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %567, i32 0, i32 9
  %569 = load i32, i32* %568, align 4
  %570 = call i32 @mga_crtc_set_plls(%struct.mga_device* %566, i32 %569)
  store i32 0, i32* %27, align 4
  br label %571

571:                                              ; preds = %581, %561
  %572 = load i32, i32* %27, align 4
  %573 = icmp slt i32 %572, 6
  br i1 %573, label %574, label %584

574:                                              ; preds = %571
  %575 = load i32, i32* %27, align 4
  %576 = load i32, i32* %27, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 %577
  %579 = load i8, i8* %578, align 1
  %580 = call i32 @WREG_ECRT(i32 %575, i8 zeroext %579)
  br label %581

581:                                              ; preds = %574
  %582 = load i32, i32* %27, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %27, align 4
  br label %571

584:                                              ; preds = %571
  %585 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %586 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 8
  %588 = icmp eq i32 %587, 133
  br i1 %588, label %589, label %591

589:                                              ; preds = %584
  %590 = call i32 @WREG_ECRT(i32 36, i8 zeroext 5)
  br label %591

591:                                              ; preds = %589, %584
  %592 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %593 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %592, i32 0, i32 1
  %594 = load i32, i32* %593, align 8
  %595 = icmp eq i32 %594, 131
  br i1 %595, label %596, label %598

596:                                              ; preds = %591
  %597 = call i32 @WREG_ECRT(i32 52, i8 zeroext 5)
  br label %598

598:                                              ; preds = %596, %591
  %599 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %600 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 8
  %602 = icmp eq i32 %601, 132
  br i1 %602, label %603, label %605

603:                                              ; preds = %598
  %604 = call i32 @WREG_ECRT(i32 6, i8 zeroext 0)
  br label %605

605:                                              ; preds = %603, %598
  %606 = getelementptr inbounds [6 x i8], [6 x i8]* %29, i64 0, i64 0
  %607 = load i8, i8* %606, align 1
  %608 = call i32 @WREG_ECRT(i32 0, i8 zeroext %607)
  store i8 45, i8* %28, align 1
  %609 = load i32, i32* @MGA_MISC_OUT, align 4
  %610 = load i8, i8* %28, align 1
  %611 = zext i8 %610 to i32
  %612 = call i32 @WREG8(i32 %609, i32 %611)
  %613 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %614 = icmp ne %struct.drm_display_mode* %613, null
  br i1 %614, label %615, label %620

615:                                              ; preds = %605
  %616 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %617 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %616, i32 0, i32 3
  %618 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %619 = call i32 @memcpy(i32* %617, %struct.drm_display_mode* %618, i32 40)
  br label %620

620:                                              ; preds = %615, %605
  %621 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %622 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %623 = load i32, i32* %10, align 4
  %624 = load i32, i32* %11, align 4
  %625 = call i32 @mga_crtc_do_set_base(%struct.drm_crtc* %621, %struct.drm_framebuffer* %622, i32 %623, i32 %624, i32 0)
  %626 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %627 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 8
  %629 = icmp eq i32 %628, 133
  br i1 %629, label %630, label %654

630:                                              ; preds = %620
  %631 = load i32, i32* @MGAREG_MEMCTL, align 4
  %632 = call i32 @RREG32(i32 %631)
  store i32 %632, i32* %31, align 4
  %633 = load i32, i32* @MGAREG_SEQ_INDEX, align 4
  %634 = call i32 @WREG8(i32 %633, i32 1)
  %635 = load i32, i32* @MGAREG_SEQ_DATA, align 4
  %636 = call i32 @RREG8(i32 %635)
  %637 = or i32 %636, 32
  store i32 %637, i32* %32, align 4
  %638 = load i32, i32* @MGAREG_SEQ_DATA, align 4
  %639 = load i32, i32* %32, align 4
  %640 = call i32 @WREG8(i32 %638, i32 %639)
  %641 = load i32, i32* @MGAREG_MEMCTL, align 4
  %642 = load i32, i32* %31, align 4
  %643 = or i32 %642, 2097152
  %644 = call i32 @WREG32(i32 %641, i32 %643)
  %645 = call i32 @udelay(i32 1000)
  %646 = load i32, i32* @MGAREG_MEMCTL, align 4
  %647 = load i32, i32* %31, align 4
  %648 = and i32 %647, -2097153
  %649 = call i32 @WREG32(i32 %646, i32 %648)
  %650 = load i32, i32* @MGAREG_SEQ_DATA, align 4
  %651 = load i32, i32* %32, align 4
  %652 = and i32 %651, -33
  %653 = call i32 @WREG8(i32 %650, i32 %652)
  br label %654

654:                                              ; preds = %630, %620
  %655 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %656 = call i64 @IS_G200_SE(%struct.mga_device* %655)
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %750

658:                                              ; preds = %654
  %659 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %660 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 4
  %662 = icmp sge i32 %661, 4
  br i1 %662, label %663, label %668

663:                                              ; preds = %658
  %664 = load i32, i32* @MGAREG_CRTCEXT_INDEX, align 4
  %665 = call i32 @WREG8(i32 %664, i32 6)
  %666 = load i32, i32* @MGAREG_CRTCEXT_DATA, align 4
  %667 = call i32 @WREG8(i32 %666, i32 0)
  br label %749

668:                                              ; preds = %658
  %669 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %670 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %669, i32 0, i32 2
  %671 = load i32, i32* %670, align 4
  %672 = icmp sge i32 %671, 2
  br i1 %672, label %673, label %734

673:                                              ; preds = %668
  %674 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %675 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %674, i32 0, i32 1
  %676 = load %struct.TYPE_4__*, %struct.TYPE_4__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %676, i32 0, i32 0
  %678 = load i32*, i32** %677, align 8
  %679 = getelementptr inbounds i32, i32* %678, i64 0
  %680 = load i32, i32* %679, align 4
  %681 = mul nsw i32 %680, 8
  %682 = icmp sgt i32 %681, 16
  br i1 %682, label %683, label %684

683:                                              ; preds = %673
  store i32 32, i32* %34, align 4
  br label %697

684:                                              ; preds = %673
  %685 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %686 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %685, i32 0, i32 1
  %687 = load %struct.TYPE_4__*, %struct.TYPE_4__** %686, align 8
  %688 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %687, i32 0, i32 0
  %689 = load i32*, i32** %688, align 8
  %690 = getelementptr inbounds i32, i32* %689, i64 0
  %691 = load i32, i32* %690, align 4
  %692 = mul nsw i32 %691, 8
  %693 = icmp sgt i32 %692, 8
  br i1 %693, label %694, label %695

694:                                              ; preds = %684
  store i32 16, i32* %34, align 4
  br label %696

695:                                              ; preds = %684
  store i32 8, i32* %34, align 4
  br label %696

696:                                              ; preds = %695, %694
  br label %697

697:                                              ; preds = %696, %683
  %698 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %699 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %698, i32 0, i32 9
  %700 = load i32, i32* %699, align 4
  %701 = load i32, i32* %34, align 4
  %702 = mul nsw i32 %700, %701
  %703 = sdiv i32 %702, 1000
  store i32 %703, i32* %35, align 4
  %704 = load i32, i32* %35, align 4
  %705 = icmp sgt i32 %704, 3100
  br i1 %705, label %706, label %707

706:                                              ; preds = %697
  store i32 0, i32* %33, align 4
  br label %728

707:                                              ; preds = %697
  %708 = load i32, i32* %35, align 4
  %709 = icmp sgt i32 %708, 2600
  br i1 %709, label %710, label %711

710:                                              ; preds = %707
  store i32 1, i32* %33, align 4
  br label %727

711:                                              ; preds = %707
  %712 = load i32, i32* %35, align 4
  %713 = icmp sgt i32 %712, 1900
  br i1 %713, label %714, label %715

714:                                              ; preds = %711
  store i32 2, i32* %33, align 4
  br label %726

715:                                              ; preds = %711
  %716 = load i32, i32* %35, align 4
  %717 = icmp sgt i32 %716, 1160
  br i1 %717, label %718, label %719

718:                                              ; preds = %715
  store i32 3, i32* %33, align 4
  br label %725

719:                                              ; preds = %715
  %720 = load i32, i32* %35, align 4
  %721 = icmp sgt i32 %720, 440
  br i1 %721, label %722, label %723

722:                                              ; preds = %719
  store i32 4, i32* %33, align 4
  br label %724

723:                                              ; preds = %719
  store i32 5, i32* %33, align 4
  br label %724

724:                                              ; preds = %723, %722
  br label %725

725:                                              ; preds = %724, %718
  br label %726

726:                                              ; preds = %725, %714
  br label %727

727:                                              ; preds = %726, %710
  br label %728

728:                                              ; preds = %727, %706
  %729 = load i32, i32* @MGAREG_CRTCEXT_INDEX, align 4
  %730 = call i32 @WREG8(i32 %729, i32 6)
  %731 = load i32, i32* @MGAREG_CRTCEXT_DATA, align 4
  %732 = load i32, i32* %33, align 4
  %733 = call i32 @WREG8(i32 %731, i32 %732)
  br label %748

734:                                              ; preds = %668
  %735 = load i32, i32* @MGAREG_CRTCEXT_INDEX, align 4
  %736 = call i32 @WREG8(i32 %735, i32 6)
  %737 = load %struct.mga_device*, %struct.mga_device** %14, align 8
  %738 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %737, i32 0, i32 2
  %739 = load i32, i32* %738, align 4
  %740 = icmp sge i32 %739, 1
  br i1 %740, label %741, label %744

741:                                              ; preds = %734
  %742 = load i32, i32* @MGAREG_CRTCEXT_DATA, align 4
  %743 = call i32 @WREG8(i32 %742, i32 3)
  br label %747

744:                                              ; preds = %734
  %745 = load i32, i32* @MGAREG_CRTCEXT_DATA, align 4
  %746 = call i32 @WREG8(i32 %745, i32 4)
  br label %747

747:                                              ; preds = %744, %741
  br label %748

748:                                              ; preds = %747, %728
  br label %749

749:                                              ; preds = %748, %663
  br label %750

750:                                              ; preds = %749, %654
  ret i32 0
}

declare dso_local i64 @IS_G200_SE(%struct.mga_device*) #1

declare dso_local i32 @WREG_DAC(i32, i8 zeroext) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @WREG_SEQ(i32, i32) #1

declare dso_local i32 @WREG_GFX(i32, i32) #1

declare dso_local i32 @WREG_CRT(i32, i32) #1

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @mga_crtc_set_plls(%struct.mga_device*, i32) #1

declare dso_local i32 @WREG_ECRT(i32, i8 zeroext) #1

declare dso_local i32 @memcpy(i32*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @mga_crtc_do_set_base(%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @RREG8(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
