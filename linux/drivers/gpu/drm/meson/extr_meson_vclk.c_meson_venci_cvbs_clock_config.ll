; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_venci_cvbs_clock_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_venci_cvbs_clock_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i32 }

@VPU_COMPATIBLE_GXBB = common dso_local global i32 0, align 4
@HHI_HDMI_PLL_CNTL = common dso_local global i32 0, align 4
@HHI_HDMI_PLL_CNTL2 = common dso_local global i32 0, align 4
@HHI_HDMI_PLL_CNTL3 = common dso_local global i32 0, align 4
@HHI_HDMI_PLL_CNTL4 = common dso_local global i32 0, align 4
@HHI_HDMI_PLL_CNTL5 = common dso_local global i32 0, align 4
@HHI_HDMI_PLL_CNTL6 = common dso_local global i32 0, align 4
@HDMI_PLL_LOCK = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXM = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXL = common dso_local global i32 0, align 4
@HDMI_PLL_RESET = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@HHI_HDMI_PLL_CNTL7 = common dso_local global i32 0, align 4
@HDMI_PLL_LOCK_G12A = common dso_local global i32 0, align 4
@HHI_VIID_CLK_CNTL = common dso_local global i32 0, align 4
@VCLK2_EN = common dso_local global i32 0, align 4
@VID_PLL_DIV_1 = common dso_local global i32 0, align 4
@HHI_VIID_CLK_DIV = common dso_local global i32 0, align 4
@VCLK2_DIV_MASK = common dso_local global i32 0, align 4
@VCLK2_SEL_MASK = common dso_local global i32 0, align 4
@VCLK2_SEL_SHIFT = common dso_local global i32 0, align 4
@HHI_VID_CLK_DIV = common dso_local global i32 0, align 4
@CTS_ENCI_SEL_MASK = common dso_local global i32 0, align 4
@CTS_ENCI_SEL_SHIFT = common dso_local global i32 0, align 4
@CTS_VDAC_SEL_MASK = common dso_local global i32 0, align 4
@CTS_VDAC_SEL_SHIFT = common dso_local global i32 0, align 4
@VCLK2_DIV_EN = common dso_local global i32 0, align 4
@VCLK2_DIV_RESET = common dso_local global i32 0, align 4
@VCLK2_DIV1_EN = common dso_local global i32 0, align 4
@VCLK2_SOFT_RESET = common dso_local global i32 0, align 4
@HHI_VID_CLK_CNTL2 = common dso_local global i32 0, align 4
@CTS_ENCI_EN = common dso_local global i32 0, align 4
@CTS_VDAC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*)* @meson_venci_cvbs_clock_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_venci_cvbs_clock_config(%struct.meson_drm* %0) #0 {
  %2 = alloca %struct.meson_drm*, align 8
  %3 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %2, align 8
  %4 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %5 = load i32, i32* @VPU_COMPATIBLE_GXBB, align 4
  %6 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %1
  %9 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %10 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %13 = call i32 @regmap_write(i32 %11, i32 %12, i32 1476395581)
  %14 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %15 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %18 = call i32 @regmap_write(i32 %16, i32 %17, i32 4214272)
  %19 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %20 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HHI_HDMI_PLL_CNTL3, align 4
  %23 = call i32 @regmap_write(i32 %21, i32 %22, i32 224153745)
  %24 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %25 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HHI_HDMI_PLL_CNTL4, align 4
  %28 = call i32 @regmap_write(i32 %26, i32 %27, i32 -2145540308)
  %29 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %30 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HHI_HDMI_PLL_CNTL5, align 4
  %33 = call i32 @regmap_write(i32 %31, i32 %32, i32 1900571008)
  %34 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %35 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HHI_HDMI_PLL_CNTL6, align 4
  %38 = call i32 @regmap_write(i32 %36, i32 %37, i32 3669)
  %39 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %40 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %43 = call i32 @regmap_write(i32 %41, i32 %42, i32 1207960125)
  %44 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %45 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @HDMI_PLL_LOCK, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @regmap_read_poll_timeout(i32 %46, i32 %47, i32 %48, i32 %51, i32 10, i32 0)
  br label %181

53:                                               ; preds = %1
  %54 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %55 = load i32, i32* @VPU_COMPATIBLE_GXM, align 4
  %56 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %60 = load i32, i32* @VPU_COMPATIBLE_GXL, align 4
  %61 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %116

63:                                               ; preds = %58, %53
  %64 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %65 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %68 = call i32 @regmap_write(i32 %66, i32 %67, i32 1073742459)
  %69 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %70 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %73 = call i32 @regmap_write(i32 %71, i32 %72, i32 -2146651392)
  %74 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %75 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HHI_HDMI_PLL_CNTL3, align 4
  %78 = call i32 @regmap_write(i32 %76, i32 %77, i32 -1507776444)
  %79 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %80 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HHI_HDMI_PLL_CNTL4, align 4
  %83 = call i32 @regmap_write(i32 %81, i32 %82, i32 206372876)
  %84 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %85 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @HHI_HDMI_PLL_CNTL5, align 4
  %88 = call i32 @regmap_write(i32 %86, i32 %87, i32 2074409)
  %89 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %90 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HHI_HDMI_PLL_CNTL6, align 4
  %93 = call i32 @regmap_write(i32 %91, i32 %92, i32 27464960)
  %94 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %95 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %98 = load i32, i32* @HDMI_PLL_RESET, align 4
  %99 = load i32, i32* @HDMI_PLL_RESET, align 4
  %100 = call i32 @regmap_update_bits(i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %102 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %105 = load i32, i32* @HDMI_PLL_RESET, align 4
  %106 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 %105, i32 0)
  %107 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %108 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @HDMI_PLL_LOCK, align 4
  %114 = and i32 %112, %113
  %115 = call i32 @regmap_read_poll_timeout(i32 %109, i32 %110, i32 %111, i32 %114, i32 10, i32 0)
  br label %180

116:                                              ; preds = %58
  %117 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %118 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %119 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %179

121:                                              ; preds = %116
  %122 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %123 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %126 = call i32 @regmap_write(i32 %124, i32 %125, i32 436536567)
  %127 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %128 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %131 = call i32 @regmap_write(i32 %129, i32 %130, i32 65536)
  %132 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %133 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @HHI_HDMI_PLL_CNTL3, align 4
  %136 = call i32 @regmap_write(i32 %134, i32 %135, i32 0)
  %137 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %138 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @HHI_HDMI_PLL_CNTL4, align 4
  %141 = call i32 @regmap_write(i32 %139, i32 %140, i32 1781062656)
  %142 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %143 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @HHI_HDMI_PLL_CNTL5, align 4
  %146 = call i32 @regmap_write(i32 %144, i32 %145, i32 1702302352)
  %147 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %148 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @HHI_HDMI_PLL_CNTL6, align 4
  %151 = call i32 @regmap_write(i32 %149, i32 %150, i32 958865408)
  %152 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %153 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @HHI_HDMI_PLL_CNTL7, align 4
  %156 = call i32 @regmap_write(i32 %154, i32 %155, i32 1448345600)
  %157 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %158 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %161 = call i32 @regmap_write(i32 %159, i32 %160, i32 973407479)
  %162 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %163 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %166 = call i32 @regmap_write(i32 %164, i32 %165, i32 436536567)
  %167 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %168 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* @HDMI_PLL_LOCK_G12A, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @HDMI_PLL_LOCK_G12A, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @regmap_read_poll_timeout(i32 %169, i32 %170, i32 %171, i32 %177, i32 10, i32 0)
  br label %179

179:                                              ; preds = %121, %116
  br label %180

180:                                              ; preds = %179, %63
  br label %181

181:                                              ; preds = %180, %8
  %182 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %183 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @HHI_VIID_CLK_CNTL, align 4
  %186 = load i32, i32* @VCLK2_EN, align 4
  %187 = call i32 @regmap_update_bits(i32 %184, i32 %185, i32 %186, i32 0)
  %188 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %189 = load i32, i32* @VID_PLL_DIV_1, align 4
  %190 = call i32 @meson_vid_pll_set(%struct.meson_drm* %188, i32 %189)
  %191 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %192 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @HHI_VIID_CLK_DIV, align 4
  %195 = load i32, i32* @VCLK2_DIV_MASK, align 4
  %196 = call i32 @regmap_update_bits(i32 %193, i32 %194, i32 %195, i32 54)
  %197 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %198 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %199 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %181
  %202 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %203 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @HHI_VIID_CLK_CNTL, align 4
  %206 = load i32, i32* @VCLK2_SEL_MASK, align 4
  %207 = load i32, i32* @VCLK2_SEL_SHIFT, align 4
  %208 = shl i32 0, %207
  %209 = call i32 @regmap_update_bits(i32 %204, i32 %205, i32 %206, i32 %208)
  br label %219

210:                                              ; preds = %181
  %211 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %212 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @HHI_VIID_CLK_CNTL, align 4
  %215 = load i32, i32* @VCLK2_SEL_MASK, align 4
  %216 = load i32, i32* @VCLK2_SEL_SHIFT, align 4
  %217 = shl i32 4, %216
  %218 = call i32 @regmap_update_bits(i32 %213, i32 %214, i32 %215, i32 %217)
  br label %219

219:                                              ; preds = %210, %201
  %220 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %221 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @HHI_VIID_CLK_CNTL, align 4
  %224 = load i32, i32* @VCLK2_EN, align 4
  %225 = load i32, i32* @VCLK2_EN, align 4
  %226 = call i32 @regmap_update_bits(i32 %222, i32 %223, i32 %224, i32 %225)
  %227 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %228 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @HHI_VID_CLK_DIV, align 4
  %231 = load i32, i32* @CTS_ENCI_SEL_MASK, align 4
  %232 = load i32, i32* @CTS_ENCI_SEL_SHIFT, align 4
  %233 = shl i32 8, %232
  %234 = call i32 @regmap_update_bits(i32 %229, i32 %230, i32 %231, i32 %233)
  %235 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %236 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @HHI_VIID_CLK_DIV, align 4
  %239 = load i32, i32* @CTS_VDAC_SEL_MASK, align 4
  %240 = load i32, i32* @CTS_VDAC_SEL_SHIFT, align 4
  %241 = shl i32 8, %240
  %242 = call i32 @regmap_update_bits(i32 %237, i32 %238, i32 %239, i32 %241)
  %243 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %244 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @HHI_VIID_CLK_DIV, align 4
  %247 = load i32, i32* @VCLK2_DIV_EN, align 4
  %248 = load i32, i32* @VCLK2_DIV_RESET, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @VCLK2_DIV_EN, align 4
  %251 = call i32 @regmap_update_bits(i32 %245, i32 %246, i32 %249, i32 %250)
  %252 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %253 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @HHI_VIID_CLK_CNTL, align 4
  %256 = load i32, i32* @VCLK2_DIV1_EN, align 4
  %257 = load i32, i32* @VCLK2_DIV1_EN, align 4
  %258 = call i32 @regmap_update_bits(i32 %254, i32 %255, i32 %256, i32 %257)
  %259 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %260 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @HHI_VIID_CLK_CNTL, align 4
  %263 = load i32, i32* @VCLK2_SOFT_RESET, align 4
  %264 = load i32, i32* @VCLK2_SOFT_RESET, align 4
  %265 = call i32 @regmap_update_bits(i32 %261, i32 %262, i32 %263, i32 %264)
  %266 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %267 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @HHI_VIID_CLK_CNTL, align 4
  %270 = load i32, i32* @VCLK2_SOFT_RESET, align 4
  %271 = call i32 @regmap_update_bits(i32 %268, i32 %269, i32 %270, i32 0)
  %272 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %273 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @HHI_VID_CLK_CNTL2, align 4
  %276 = load i32, i32* @CTS_ENCI_EN, align 4
  %277 = load i32, i32* @CTS_ENCI_EN, align 4
  %278 = call i32 @regmap_update_bits(i32 %274, i32 %275, i32 %276, i32 %277)
  %279 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %280 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @HHI_VID_CLK_CNTL2, align 4
  %283 = load i32, i32* @CTS_VDAC_EN, align 4
  %284 = load i32, i32* @CTS_VDAC_EN, align 4
  %285 = call i32 @regmap_update_bits(i32 %281, i32 %282, i32 %283, i32 %284)
  ret void
}

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @meson_vid_pll_set(%struct.meson_drm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
