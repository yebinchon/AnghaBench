; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_hdmi_pll_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_hdmi_pll_set_params.c"
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
@HHI_HDMI_PLL_CNTL_EN = common dso_local global i32 0, align 4
@HDMI_PLL_LOCK = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXM = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXL = common dso_local global i32 0, align 4
@HDMI_PLL_RESET = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@HHI_HDMI_PLL_CNTL7 = common dso_local global i32 0, align 4
@HDMI_PLL_RESET_G12A = common dso_local global i32 0, align 4
@HDMI_PLL_LOCK_G12A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meson_hdmi_pll_set_params(%struct.meson_drm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.meson_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %15 = load i32, i32* @VPU_COMPATIBLE_GXBB, align 4
  %16 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %6
  %19 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %20 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 1476395520, %23
  %25 = call i32 @regmap_write(i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %30 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 16384, %33
  %35 = call i32 @regmap_write(i32 %31, i32 %32, i32 %34)
  br label %42

36:                                               ; preds = %18
  %37 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %38 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %41 = call i32 @regmap_write(i32 %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %36, %28
  %43 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %44 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HHI_HDMI_PLL_CNTL3, align 4
  %47 = call i32 @regmap_write(i32 %45, i32 %46, i32 224153745)
  %48 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %49 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HHI_HDMI_PLL_CNTL4, align 4
  %52 = call i32 @regmap_write(i32 %50, i32 %51, i32 -2145540308)
  %53 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %54 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HHI_HDMI_PLL_CNTL5, align 4
  %57 = call i32 @regmap_write(i32 %55, i32 %56, i32 1900571008)
  %58 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %59 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HHI_HDMI_PLL_CNTL6, align 4
  %62 = call i32 @regmap_write(i32 %60, i32 %61, i32 3669)
  %63 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %64 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %67 = load i32, i32* @HHI_HDMI_PLL_CNTL_EN, align 4
  %68 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 1879048192, i32 %67)
  %69 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %70 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @HDMI_PLL_LOCK, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @regmap_read_poll_timeout(i32 %71, i32 %72, i32 %73, i32 %76, i32 10, i32 0)
  br label %267

78:                                               ; preds = %6
  %79 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %80 = load i32, i32* @VPU_COMPATIBLE_GXM, align 4
  %81 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %85 = load i32, i32* @VPU_COMPATIBLE_GXL, align 4
  %86 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %145

88:                                               ; preds = %83, %78
  %89 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %90 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 1073742336, %93
  %95 = call i32 @regmap_write(i32 %91, i32 %92, i32 %94)
  %96 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %97 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 -2146652160, %100
  %102 = call i32 @regmap_write(i32 %98, i32 %99, i32 %101)
  %103 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %104 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @HHI_HDMI_PLL_CNTL3, align 4
  %107 = call i32 @regmap_write(i32 %105, i32 %106, i32 -2045824828)
  %108 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %109 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @HHI_HDMI_PLL_CNTL4, align 4
  %112 = call i32 @regmap_write(i32 %110, i32 %111, i32 210632704)
  %113 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %114 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @HHI_HDMI_PLL_CNTL5, align 4
  %117 = call i32 @regmap_write(i32 %115, i32 %116, i32 2074409)
  %118 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %119 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @HHI_HDMI_PLL_CNTL6, align 4
  %122 = call i32 @regmap_write(i32 %120, i32 %121, i32 27464960)
  %123 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %124 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %127 = load i32, i32* @HDMI_PLL_RESET, align 4
  %128 = load i32, i32* @HDMI_PLL_RESET, align 4
  %129 = call i32 @regmap_update_bits(i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %131 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %134 = load i32, i32* @HDMI_PLL_RESET, align 4
  %135 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %134, i32 0)
  %136 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %137 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @HDMI_PLL_LOCK, align 4
  %143 = and i32 %141, %142
  %144 = call i32 @regmap_read_poll_timeout(i32 %138, i32 %139, i32 %140, i32 %143, i32 10, i32 0)
  br label %266

145:                                              ; preds = %83
  %146 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %147 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %148 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %265

150:                                              ; preds = %145
  %151 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %152 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %155 = load i32, i32* %8, align 4
  %156 = or i32 188351488, %155
  %157 = call i32 @regmap_write(i32 %153, i32 %154, i32 %156)
  %158 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %159 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %162 = call i32 @regmap_update_bits(i32 %160, i32 %161, i32 805306368, i32 805306368)
  %163 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %164 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @regmap_write(i32 %165, i32 %166, i32 %167)
  %169 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %170 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @HHI_HDMI_PLL_CNTL3, align 4
  %173 = call i32 @regmap_write(i32 %171, i32 %172, i32 0)
  %174 = load i32, i32* %8, align 4
  %175 = icmp uge i32 %174, 247
  br i1 %175, label %176, label %212

176:                                              ; preds = %150
  %177 = load i32, i32* %9, align 4
  %178 = icmp ult i32 %177, 65536
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %181 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @HHI_HDMI_PLL_CNTL4, align 4
  %184 = call i32 @regmap_write(i32 %182, i32 %183, i32 1785224192)
  %185 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %186 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @HHI_HDMI_PLL_CNTL5, align 4
  %189 = call i32 @regmap_write(i32 %187, i32 %188, i32 290787987)
  br label %201

190:                                              ; preds = %176
  %191 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %192 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @HHI_HDMI_PLL_CNTL4, align 4
  %195 = call i32 @regmap_write(i32 %193, i32 %194, i32 -362226688)
  %196 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %197 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @HHI_HDMI_PLL_CNTL5, align 4
  %200 = call i32 @regmap_write(i32 %198, i32 %199, i32 1702302352)
  br label %201

201:                                              ; preds = %190, %179
  %202 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %203 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @HHI_HDMI_PLL_CNTL6, align 4
  %206 = call i32 @regmap_write(i32 %204, i32 %205, i32 958865408)
  %207 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %208 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @HHI_HDMI_PLL_CNTL7, align 4
  %211 = call i32 @regmap_write(i32 %209, i32 %210, i32 1431568384)
  br label %233

212:                                              ; preds = %150
  %213 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %214 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @HHI_HDMI_PLL_CNTL4, align 4
  %217 = call i32 @regmap_write(i32 %215, i32 %216, i32 174660608)
  %218 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %219 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @HHI_HDMI_PLL_CNTL5, align 4
  %222 = call i32 @regmap_write(i32 %220, i32 %221, i32 863441552)
  %223 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %224 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @HHI_HDMI_PLL_CNTL6, align 4
  %227 = call i32 @regmap_write(i32 %225, i32 %226, i32 958857216)
  %228 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %229 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @HHI_HDMI_PLL_CNTL7, align 4
  %232 = call i32 @regmap_write(i32 %230, i32 %231, i32 1347682304)
  br label %233

233:                                              ; preds = %212, %201
  br label %234

234:                                              ; preds = %263, %233
  %235 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %236 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %239 = load i32, i32* @HDMI_PLL_RESET_G12A, align 4
  %240 = load i32, i32* @HDMI_PLL_RESET_G12A, align 4
  %241 = call i32 @regmap_update_bits(i32 %237, i32 %238, i32 %239, i32 %240)
  %242 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %243 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %246 = load i32, i32* @HDMI_PLL_RESET_G12A, align 4
  %247 = call i32 @regmap_update_bits(i32 %244, i32 %245, i32 %246, i32 0)
  %248 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %249 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* @HDMI_PLL_LOCK_G12A, align 4
  %255 = and i32 %253, %254
  %256 = load i32, i32* @HDMI_PLL_LOCK_G12A, align 4
  %257 = icmp eq i32 %255, %256
  %258 = zext i1 %257 to i32
  %259 = call i32 @regmap_read_poll_timeout(i32 %250, i32 %251, i32 %252, i32 %258, i32 10, i32 100)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %234
  br label %264

262:                                              ; preds = %234
  br label %263

263:                                              ; preds = %262
  br i1 true, label %234, label %264

264:                                              ; preds = %263, %261
  br label %265

265:                                              ; preds = %264, %145
  br label %266

266:                                              ; preds = %265, %88
  br label %267

267:                                              ; preds = %266, %42
  %268 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %269 = load i32, i32* @VPU_COMPATIBLE_GXBB, align 4
  %270 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %268, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %267
  %273 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %274 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %277 = load i32, i32* %10, align 4
  %278 = call i32 @pll_od_to_reg(i32 %277)
  %279 = shl i32 %278, 16
  %280 = call i32 @regmap_update_bits(i32 %275, i32 %276, i32 196608, i32 %279)
  br label %316

281:                                              ; preds = %267
  %282 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %283 = load i32, i32* @VPU_COMPATIBLE_GXM, align 4
  %284 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %282, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %281
  %287 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %288 = load i32, i32* @VPU_COMPATIBLE_GXL, align 4
  %289 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %287, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %286, %281
  %292 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %293 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @HHI_HDMI_PLL_CNTL3, align 4
  %296 = load i32, i32* %10, align 4
  %297 = call i32 @pll_od_to_reg(i32 %296)
  %298 = shl i32 %297, 21
  %299 = call i32 @regmap_update_bits(i32 %294, i32 %295, i32 6291456, i32 %298)
  br label %315

300:                                              ; preds = %286
  %301 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %302 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %303 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %300
  %306 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %307 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %310 = load i32, i32* %10, align 4
  %311 = call i32 @pll_od_to_reg(i32 %310)
  %312 = shl i32 %311, 16
  %313 = call i32 @regmap_update_bits(i32 %308, i32 %309, i32 196608, i32 %312)
  br label %314

314:                                              ; preds = %305, %300
  br label %315

315:                                              ; preds = %314, %291
  br label %316

316:                                              ; preds = %315, %272
  %317 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %318 = load i32, i32* @VPU_COMPATIBLE_GXBB, align 4
  %319 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %316
  %322 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %323 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %326 = load i32, i32* %11, align 4
  %327 = call i32 @pll_od_to_reg(i32 %326)
  %328 = shl i32 %327, 22
  %329 = call i32 @regmap_update_bits(i32 %324, i32 %325, i32 12582912, i32 %328)
  br label %365

330:                                              ; preds = %316
  %331 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %332 = load i32, i32* @VPU_COMPATIBLE_GXM, align 4
  %333 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %331, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %330
  %336 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %337 = load i32, i32* @VPU_COMPATIBLE_GXL, align 4
  %338 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %336, i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %335, %330
  %341 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %342 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @HHI_HDMI_PLL_CNTL3, align 4
  %345 = load i32, i32* %11, align 4
  %346 = call i32 @pll_od_to_reg(i32 %345)
  %347 = shl i32 %346, 23
  %348 = call i32 @regmap_update_bits(i32 %343, i32 %344, i32 25165824, i32 %347)
  br label %364

349:                                              ; preds = %335
  %350 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %351 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %352 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %350, i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %349
  %355 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %356 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %359 = load i32, i32* %11, align 4
  %360 = call i32 @pll_od_to_reg(i32 %359)
  %361 = shl i32 %360, 18
  %362 = call i32 @regmap_update_bits(i32 %357, i32 %358, i32 786432, i32 %361)
  br label %363

363:                                              ; preds = %354, %349
  br label %364

364:                                              ; preds = %363, %340
  br label %365

365:                                              ; preds = %364, %321
  %366 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %367 = load i32, i32* @VPU_COMPATIBLE_GXBB, align 4
  %368 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %366, i32 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %365
  %371 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %372 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @HHI_HDMI_PLL_CNTL2, align 4
  %375 = load i32, i32* %12, align 4
  %376 = call i32 @pll_od_to_reg(i32 %375)
  %377 = shl i32 %376, 18
  %378 = call i32 @regmap_update_bits(i32 %373, i32 %374, i32 786432, i32 %377)
  br label %414

379:                                              ; preds = %365
  %380 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %381 = load i32, i32* @VPU_COMPATIBLE_GXM, align 4
  %382 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %380, i32 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %389, label %384

384:                                              ; preds = %379
  %385 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %386 = load i32, i32* @VPU_COMPATIBLE_GXL, align 4
  %387 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %385, i32 %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %384, %379
  %390 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %391 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @HHI_HDMI_PLL_CNTL3, align 4
  %394 = load i32, i32* %12, align 4
  %395 = call i32 @pll_od_to_reg(i32 %394)
  %396 = shl i32 %395, 19
  %397 = call i32 @regmap_update_bits(i32 %392, i32 %393, i32 1572864, i32 %396)
  br label %413

398:                                              ; preds = %384
  %399 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %400 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %401 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %399, i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %412

403:                                              ; preds = %398
  %404 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %405 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @HHI_HDMI_PLL_CNTL, align 4
  %408 = load i32, i32* %12, align 4
  %409 = call i32 @pll_od_to_reg(i32 %408)
  %410 = shl i32 %409, 20
  %411 = call i32 @regmap_update_bits(i32 %406, i32 %407, i32 3145728, i32 %410)
  br label %412

412:                                              ; preds = %403, %398
  br label %413

413:                                              ; preds = %412, %389
  br label %414

414:                                              ; preds = %413, %370
  ret void
}

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pll_od_to_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
