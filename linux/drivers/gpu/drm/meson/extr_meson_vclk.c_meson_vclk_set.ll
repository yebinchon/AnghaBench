; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_vclk_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_vclk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i32 }

@HHI_HDMI_CLK_CNTL = common dso_local global i32 0, align 4
@CTS_HDMI_SYS_SEL_MASK = common dso_local global i32 0, align 4
@CTS_HDMI_SYS_DIV_MASK = common dso_local global i32 0, align 4
@CTS_HDMI_SYS_EN = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXBB = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXM = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXL = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@HHI_VID_CLK_CNTL = common dso_local global i32 0, align 4
@VCLK_SEL_MASK = common dso_local global i32 0, align 4
@HHI_VID_CLK_DIV = common dso_local global i32 0, align 4
@VCLK_DIV_MASK = common dso_local global i32 0, align 4
@VCLK_DIV1_EN = common dso_local global i32 0, align 4
@HDMI_TX_PIXEL_SEL_MASK = common dso_local global i32 0, align 4
@VCLK_DIV2_EN = common dso_local global i32 0, align 4
@HDMI_TX_PIXEL_SEL_SHIFT = common dso_local global i32 0, align 4
@VCLK_DIV4_EN = common dso_local global i32 0, align 4
@VCLK_DIV6_EN = common dso_local global i32 0, align 4
@VCLK_DIV12_EN = common dso_local global i32 0, align 4
@HHI_VID_CLK_CNTL2 = common dso_local global i32 0, align 4
@HDMI_TX_PIXEL_EN = common dso_local global i32 0, align 4
@CTS_ENCI_SEL_MASK = common dso_local global i32 0, align 4
@CTS_ENCP_SEL_MASK = common dso_local global i32 0, align 4
@CTS_ENCI_SEL_SHIFT = common dso_local global i32 0, align 4
@CTS_ENCP_SEL_SHIFT = common dso_local global i32 0, align 4
@CTS_ENCI_EN = common dso_local global i32 0, align 4
@CTS_ENCP_EN = common dso_local global i32 0, align 4
@VCLK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @meson_vclk_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_vclk_set(%struct.meson_drm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.meson_drm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %25 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %26 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HHI_HDMI_CLK_CNTL, align 4
  %29 = load i32, i32* @CTS_HDMI_SYS_SEL_MASK, align 4
  %30 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %32 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HHI_HDMI_CLK_CNTL, align 4
  %35 = load i32, i32* @CTS_HDMI_SYS_DIV_MASK, align 4
  %36 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %38 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HHI_HDMI_CLK_CNTL, align 4
  %41 = load i32, i32* @CTS_HDMI_SYS_EN, align 4
  %42 = load i32, i32* @CTS_HDMI_SYS_EN, align 4
  %43 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %11
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @meson_hdmi_pll_generic_set(%struct.meson_drm* %53, i32 %54)
  br label %166

56:                                               ; preds = %49, %46, %11
  %57 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %58 = load i32, i32* @VPU_COMPATIBLE_GXBB, align 4
  %59 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  switch i32 %62, label %82 [
    i32 2970000, label %63
    i32 4320000, label %68
    i32 5940000, label %77
  ]

63:                                               ; preds = %61
  store i32 61, i32* %23, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 3330, i32 3584
  store i32 %67, i32* %24, align 4
  br label %82

68:                                               ; preds = %61
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 89, i32 90
  store i32 %72, i32* %23, align 4
  %73 = load i32, i32* %22, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 3727, i32 0
  store i32 %76, i32* %24, align 4
  br label %82

77:                                               ; preds = %61
  store i32 123, i32* %23, align 4
  %78 = load i32, i32* %22, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 2565, i32 3072
  store i32 %81, i32* %24, align 4
  br label %82

82:                                               ; preds = %61, %77, %68, %63
  %83 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %24, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @meson_hdmi_pll_set_params(%struct.meson_drm* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  br label %165

90:                                               ; preds = %56
  %91 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %92 = load i32, i32* @VPU_COMPATIBLE_GXM, align 4
  %93 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %97 = load i32, i32* @VPU_COMPATIBLE_GXL, align 4
  %98 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %95, %90
  %101 = load i32, i32* %13, align 4
  switch i32 %101, label %121 [
    i32 2970000, label %102
    i32 4320000, label %107
    i32 5940000, label %116
  ]

102:                                              ; preds = %100
  store i32 123, i32* %23, align 4
  %103 = load i32, i32* %22, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 641, i32 768
  store i32 %106, i32* %24, align 4
  br label %121

107:                                              ; preds = %100
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 179, i32 180
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 839, i32 0
  store i32 %115, i32* %24, align 4
  br label %121

116:                                              ; preds = %100
  store i32 247, i32* %23, align 4
  %117 = load i32, i32* %22, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 258, i32 512
  store i32 %120, i32* %24, align 4
  br label %121

121:                                              ; preds = %100, %116, %107, %102
  %122 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @meson_hdmi_pll_set_params(%struct.meson_drm* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  br label %164

129:                                              ; preds = %95
  %130 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %131 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %132 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %129
  %135 = load i32, i32* %13, align 4
  switch i32 %135, label %155 [
    i32 2970000, label %136
    i32 4320000, label %141
    i32 5940000, label %150
  ]

136:                                              ; preds = %134
  store i32 123, i32* %23, align 4
  %137 = load i32, i32* %22, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 82100, i32 98304
  store i32 %140, i32* %24, align 4
  br label %155

141:                                              ; preds = %134
  %142 = load i32, i32* %22, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 179, i32 180
  store i32 %145, i32* %23, align 4
  %146 = load i32, i32* %22, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 107502, i32 0
  store i32 %149, i32* %24, align 4
  br label %155

150:                                              ; preds = %134
  store i32 247, i32* %23, align 4
  %151 = load i32, i32* %22, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 33096, i32 65536
  store i32 %154, i32* %24, align 4
  br label %155

155:                                              ; preds = %134, %150, %141, %136
  %156 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @meson_hdmi_pll_set_params(%struct.meson_drm* %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %155, %129
  br label %164

164:                                              ; preds = %163, %121
  br label %165

165:                                              ; preds = %164, %82
  br label %166

166:                                              ; preds = %165, %52
  %167 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @meson_vid_pll_set(%struct.meson_drm* %167, i32 %168)
  %170 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %171 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %174 = load i32, i32* @VCLK_SEL_MASK, align 4
  %175 = call i32 @regmap_update_bits(i32 %172, i32 %173, i32 %174, i32 0)
  %176 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %177 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %180 = load i32, i32* @VCLK_DIV_MASK, align 4
  %181 = load i32, i32* %18, align 4
  %182 = sub i32 %181, 1
  %183 = call i32 @regmap_update_bits(i32 %178, i32 %179, i32 %180, i32 %182)
  %184 = load i32, i32* %19, align 4
  switch i32 %184, label %263 [
    i32 1, label %185
    i32 2, label %199
    i32 4, label %215
    i32 6, label %231
    i32 12, label %247
  ]

185:                                              ; preds = %166
  %186 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %187 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %190 = load i32, i32* @VCLK_DIV1_EN, align 4
  %191 = load i32, i32* @VCLK_DIV1_EN, align 4
  %192 = call i32 @regmap_update_bits(i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %194 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @HHI_HDMI_CLK_CNTL, align 4
  %197 = load i32, i32* @HDMI_TX_PIXEL_SEL_MASK, align 4
  %198 = call i32 @regmap_update_bits(i32 %195, i32 %196, i32 %197, i32 0)
  br label %263

199:                                              ; preds = %166
  %200 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %201 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %204 = load i32, i32* @VCLK_DIV2_EN, align 4
  %205 = load i32, i32* @VCLK_DIV2_EN, align 4
  %206 = call i32 @regmap_update_bits(i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %208 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @HHI_HDMI_CLK_CNTL, align 4
  %211 = load i32, i32* @HDMI_TX_PIXEL_SEL_MASK, align 4
  %212 = load i32, i32* @HDMI_TX_PIXEL_SEL_SHIFT, align 4
  %213 = shl i32 1, %212
  %214 = call i32 @regmap_update_bits(i32 %209, i32 %210, i32 %211, i32 %213)
  br label %263

215:                                              ; preds = %166
  %216 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %217 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %220 = load i32, i32* @VCLK_DIV4_EN, align 4
  %221 = load i32, i32* @VCLK_DIV4_EN, align 4
  %222 = call i32 @regmap_update_bits(i32 %218, i32 %219, i32 %220, i32 %221)
  %223 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %224 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @HHI_HDMI_CLK_CNTL, align 4
  %227 = load i32, i32* @HDMI_TX_PIXEL_SEL_MASK, align 4
  %228 = load i32, i32* @HDMI_TX_PIXEL_SEL_SHIFT, align 4
  %229 = shl i32 2, %228
  %230 = call i32 @regmap_update_bits(i32 %225, i32 %226, i32 %227, i32 %229)
  br label %263

231:                                              ; preds = %166
  %232 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %233 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %236 = load i32, i32* @VCLK_DIV6_EN, align 4
  %237 = load i32, i32* @VCLK_DIV6_EN, align 4
  %238 = call i32 @regmap_update_bits(i32 %234, i32 %235, i32 %236, i32 %237)
  %239 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %240 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @HHI_HDMI_CLK_CNTL, align 4
  %243 = load i32, i32* @HDMI_TX_PIXEL_SEL_MASK, align 4
  %244 = load i32, i32* @HDMI_TX_PIXEL_SEL_SHIFT, align 4
  %245 = shl i32 3, %244
  %246 = call i32 @regmap_update_bits(i32 %241, i32 %242, i32 %243, i32 %245)
  br label %263

247:                                              ; preds = %166
  %248 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %249 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %252 = load i32, i32* @VCLK_DIV12_EN, align 4
  %253 = load i32, i32* @VCLK_DIV12_EN, align 4
  %254 = call i32 @regmap_update_bits(i32 %250, i32 %251, i32 %252, i32 %253)
  %255 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %256 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @HHI_HDMI_CLK_CNTL, align 4
  %259 = load i32, i32* @HDMI_TX_PIXEL_SEL_MASK, align 4
  %260 = load i32, i32* @HDMI_TX_PIXEL_SEL_SHIFT, align 4
  %261 = shl i32 4, %260
  %262 = call i32 @regmap_update_bits(i32 %257, i32 %258, i32 %259, i32 %261)
  br label %263

263:                                              ; preds = %166, %247, %231, %215, %199, %185
  %264 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %265 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @HHI_VID_CLK_CNTL2, align 4
  %268 = load i32, i32* @HDMI_TX_PIXEL_EN, align 4
  %269 = load i32, i32* @HDMI_TX_PIXEL_EN, align 4
  %270 = call i32 @regmap_update_bits(i32 %266, i32 %267, i32 %268, i32 %269)
  %271 = load i32, i32* %20, align 4
  switch i32 %271, label %413 [
    i32 1, label %272
    i32 2, label %297
    i32 4, label %326
    i32 6, label %355
    i32 12, label %384
  ]

272:                                              ; preds = %263
  %273 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %274 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %277 = load i32, i32* @VCLK_DIV1_EN, align 4
  %278 = load i32, i32* @VCLK_DIV1_EN, align 4
  %279 = call i32 @regmap_update_bits(i32 %275, i32 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %21, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %272
  %283 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %284 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %287 = load i32, i32* @CTS_ENCI_SEL_MASK, align 4
  %288 = call i32 @regmap_update_bits(i32 %285, i32 %286, i32 %287, i32 0)
  br label %296

289:                                              ; preds = %272
  %290 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %291 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %294 = load i32, i32* @CTS_ENCP_SEL_MASK, align 4
  %295 = call i32 @regmap_update_bits(i32 %292, i32 %293, i32 %294, i32 0)
  br label %296

296:                                              ; preds = %289, %282
  br label %413

297:                                              ; preds = %263
  %298 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %299 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %302 = load i32, i32* @VCLK_DIV2_EN, align 4
  %303 = load i32, i32* @VCLK_DIV2_EN, align 4
  %304 = call i32 @regmap_update_bits(i32 %300, i32 %301, i32 %302, i32 %303)
  %305 = load i32, i32* %21, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %297
  %308 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %309 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %312 = load i32, i32* @CTS_ENCI_SEL_MASK, align 4
  %313 = load i32, i32* @CTS_ENCI_SEL_SHIFT, align 4
  %314 = shl i32 1, %313
  %315 = call i32 @regmap_update_bits(i32 %310, i32 %311, i32 %312, i32 %314)
  br label %325

316:                                              ; preds = %297
  %317 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %318 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %321 = load i32, i32* @CTS_ENCP_SEL_MASK, align 4
  %322 = load i32, i32* @CTS_ENCP_SEL_SHIFT, align 4
  %323 = shl i32 1, %322
  %324 = call i32 @regmap_update_bits(i32 %319, i32 %320, i32 %321, i32 %323)
  br label %325

325:                                              ; preds = %316, %307
  br label %413

326:                                              ; preds = %263
  %327 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %328 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %331 = load i32, i32* @VCLK_DIV4_EN, align 4
  %332 = load i32, i32* @VCLK_DIV4_EN, align 4
  %333 = call i32 @regmap_update_bits(i32 %329, i32 %330, i32 %331, i32 %332)
  %334 = load i32, i32* %21, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %345

336:                                              ; preds = %326
  %337 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %338 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %341 = load i32, i32* @CTS_ENCI_SEL_MASK, align 4
  %342 = load i32, i32* @CTS_ENCI_SEL_SHIFT, align 4
  %343 = shl i32 2, %342
  %344 = call i32 @regmap_update_bits(i32 %339, i32 %340, i32 %341, i32 %343)
  br label %354

345:                                              ; preds = %326
  %346 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %347 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %350 = load i32, i32* @CTS_ENCP_SEL_MASK, align 4
  %351 = load i32, i32* @CTS_ENCP_SEL_SHIFT, align 4
  %352 = shl i32 2, %351
  %353 = call i32 @regmap_update_bits(i32 %348, i32 %349, i32 %350, i32 %352)
  br label %354

354:                                              ; preds = %345, %336
  br label %413

355:                                              ; preds = %263
  %356 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %357 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %360 = load i32, i32* @VCLK_DIV6_EN, align 4
  %361 = load i32, i32* @VCLK_DIV6_EN, align 4
  %362 = call i32 @regmap_update_bits(i32 %358, i32 %359, i32 %360, i32 %361)
  %363 = load i32, i32* %21, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %374

365:                                              ; preds = %355
  %366 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %367 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %370 = load i32, i32* @CTS_ENCI_SEL_MASK, align 4
  %371 = load i32, i32* @CTS_ENCI_SEL_SHIFT, align 4
  %372 = shl i32 3, %371
  %373 = call i32 @regmap_update_bits(i32 %368, i32 %369, i32 %370, i32 %372)
  br label %383

374:                                              ; preds = %355
  %375 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %376 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %379 = load i32, i32* @CTS_ENCP_SEL_MASK, align 4
  %380 = load i32, i32* @CTS_ENCP_SEL_SHIFT, align 4
  %381 = shl i32 3, %380
  %382 = call i32 @regmap_update_bits(i32 %377, i32 %378, i32 %379, i32 %381)
  br label %383

383:                                              ; preds = %374, %365
  br label %413

384:                                              ; preds = %263
  %385 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %386 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %389 = load i32, i32* @VCLK_DIV12_EN, align 4
  %390 = load i32, i32* @VCLK_DIV12_EN, align 4
  %391 = call i32 @regmap_update_bits(i32 %387, i32 %388, i32 %389, i32 %390)
  %392 = load i32, i32* %21, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %403

394:                                              ; preds = %384
  %395 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %396 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %399 = load i32, i32* @CTS_ENCI_SEL_MASK, align 4
  %400 = load i32, i32* @CTS_ENCI_SEL_SHIFT, align 4
  %401 = shl i32 4, %400
  %402 = call i32 @regmap_update_bits(i32 %397, i32 %398, i32 %399, i32 %401)
  br label %412

403:                                              ; preds = %384
  %404 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %405 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %408 = load i32, i32* @CTS_ENCP_SEL_MASK, align 4
  %409 = load i32, i32* @CTS_ENCP_SEL_SHIFT, align 4
  %410 = shl i32 4, %409
  %411 = call i32 @regmap_update_bits(i32 %406, i32 %407, i32 %408, i32 %410)
  br label %412

412:                                              ; preds = %403, %394
  br label %413

413:                                              ; preds = %263, %412, %383, %354, %325, %296
  %414 = load i32, i32* %21, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %424

416:                                              ; preds = %413
  %417 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %418 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @HHI_VID_CLK_CNTL2, align 4
  %421 = load i32, i32* @CTS_ENCI_EN, align 4
  %422 = load i32, i32* @CTS_ENCI_EN, align 4
  %423 = call i32 @regmap_update_bits(i32 %419, i32 %420, i32 %421, i32 %422)
  br label %432

424:                                              ; preds = %413
  %425 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %426 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @HHI_VID_CLK_CNTL2, align 4
  %429 = load i32, i32* @CTS_ENCP_EN, align 4
  %430 = load i32, i32* @CTS_ENCP_EN, align 4
  %431 = call i32 @regmap_update_bits(i32 %427, i32 %428, i32 %429, i32 %430)
  br label %432

432:                                              ; preds = %424, %416
  %433 = load %struct.meson_drm*, %struct.meson_drm** %12, align 8
  %434 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @HHI_VID_CLK_CNTL, align 4
  %437 = load i32, i32* @VCLK_EN, align 4
  %438 = load i32, i32* @VCLK_EN, align 4
  %439 = call i32 @regmap_update_bits(i32 %435, i32 %436, i32 %437, i32 %438)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @meson_hdmi_pll_generic_set(%struct.meson_drm*, i32) #1

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @meson_hdmi_pll_set_params(%struct.meson_drm*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @meson_vid_pll_set(%struct.meson_drm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
