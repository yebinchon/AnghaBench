; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@VIU_OSD1_OSD_BLK_ENABLE = common dso_local global i32 0, align 4
@VIU_OSD1_OSD_ENABLE = common dso_local global i32 0, align 4
@VIU_OSD1_CTRL_STAT = common dso_local global i32 0, align 4
@VIU_OSD2_CTRL_STAT = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXM = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXL = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@RGB709_to_YUV709l_coeff = common dso_local global i32 0, align 4
@VIU_OSD_DDR_PRIORITY_URGENT = common dso_local global i32 0, align 4
@VIU_OSD1_FIFO_CTRL_STAT = common dso_local global i32 0, align 4
@VIU_OSD2_FIFO_CTRL_STAT = common dso_local global i32 0, align 4
@OSD_REPLACE_SHIFT = common dso_local global i32 0, align 4
@VIU_OSD1_CTRL_STAT2 = common dso_local global i32 0, align 4
@VIU_OSD2_CTRL_STAT2 = common dso_local global i32 0, align 4
@VIU_CTRL0_VD1_AFBC_MASK = common dso_local global i32 0, align 4
@VIU_MISC_CTRL0 = common dso_local global i32 0, align 4
@AFBC_ENABLE = common dso_local global i32 0, align 4
@VD1_IF0_LUMA_FIFO_SIZE = common dso_local global i32 0, align 4
@VD2_IF0_LUMA_FIFO_SIZE = common dso_local global i32 0, align 4
@VIU_OSD_BLEND1_DIN3_BYPASS_TO_DOUT1 = common dso_local global i32 0, align 4
@VIU_OSD_BLEND1_DOUT_BYPASS_TO_BLEND2 = common dso_local global i32 0, align 4
@VIU_OSD_BLEND_DIN0_BYPASS_TO_DOUT0 = common dso_local global i32 0, align 4
@VIU_OSD_BLEND_CTRL = common dso_local global i32 0, align 4
@OSD_BLEND_PATH_SEL_ENABLE = common dso_local global i32 0, align 4
@OSD1_BLEND_SRC_CTRL = common dso_local global i32 0, align 4
@OSD2_BLEND_SRC_CTRL = common dso_local global i32 0, align 4
@VD1_BLEND_SRC_CTRL = common dso_local global i32 0, align 4
@VD2_BLEND_SRC_CTRL = common dso_local global i32 0, align 4
@VIU_OSD_BLEND_DUMMY_DATA0 = common dso_local global i32 0, align 4
@VIU_OSD_BLEND_DUMMY_ALPHA = common dso_local global i32 0, align 4
@DOLBY_PATH_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meson_viu_init(%struct.meson_drm* %0) #0 {
  %2 = alloca %struct.meson_drm*, align 8
  %3 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %2, align 8
  %4 = load i32, i32* @VIU_OSD1_OSD_BLK_ENABLE, align 4
  %5 = load i32, i32* @VIU_OSD1_OSD_ENABLE, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %8 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @VIU_OSD1_CTRL_STAT, align 4
  %11 = call i64 @_REG(i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = call i32 @writel_bits_relaxed(i32 %6, i32 0, i64 %12)
  %14 = load i32, i32* @VIU_OSD1_OSD_BLK_ENABLE, align 4
  %15 = load i32, i32* @VIU_OSD1_OSD_ENABLE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %18 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @VIU_OSD2_CTRL_STAT, align 4
  %21 = call i64 @_REG(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writel_bits_relaxed(i32 %16, i32 0, i64 %22)
  %24 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %25 = load i32, i32* @VPU_COMPATIBLE_GXM, align 4
  %26 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %30 = load i32, i32* @VPU_COMPATIBLE_GXL, align 4
  %31 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %1
  %34 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %35 = call i32 @meson_viu_load_matrix(%struct.meson_drm* %34)
  br label %46

36:                                               ; preds = %28
  %37 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %38 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %39 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %43 = load i32, i32* @RGB709_to_YUV709l_coeff, align 4
  %44 = call i32 @meson_viu_set_g12a_osd1_matrix(%struct.meson_drm* %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* @VIU_OSD_DDR_PRIORITY_URGENT, align 4
  %48 = call i32 @VIU_OSD_HOLD_FIFO_LINES(i32 4)
  %49 = or i32 %47, %48
  %50 = call i32 @VIU_OSD_FIFO_DEPTH_VAL(i32 32)
  %51 = or i32 %49, %50
  %52 = call i32 @VIU_OSD_WORDS_PER_BURST(i32 4)
  %53 = or i32 %51, %52
  %54 = call i32 @VIU_OSD_FIFO_LIMITS(i32 2)
  %55 = or i32 %53, %54
  store i32 %55, i32* %3, align 4
  %56 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %57 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %58 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = call i32 @meson_viu_osd_burst_length_reg(i32 32)
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %46
  %65 = call i32 @meson_viu_osd_burst_length_reg(i32 64)
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %71 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @VIU_OSD1_FIFO_CTRL_STAT, align 4
  %74 = call i64 @_REG(i32 %73)
  %75 = add nsw i64 %72, %74
  %76 = call i32 @writel_relaxed(i32 %69, i64 %75)
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %79 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @VIU_OSD2_FIFO_CTRL_STAT, align 4
  %82 = call i64 @_REG(i32 %81)
  %83 = add nsw i64 %80, %82
  %84 = call i32 @writel_relaxed(i32 %77, i64 %83)
  %85 = load i32, i32* @OSD_REPLACE_SHIFT, align 4
  %86 = shl i32 255, %85
  %87 = load i32, i32* @OSD_REPLACE_SHIFT, align 4
  %88 = shl i32 255, %87
  %89 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %90 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @VIU_OSD1_CTRL_STAT2, align 4
  %93 = call i64 @_REG(i32 %92)
  %94 = add nsw i64 %91, %93
  %95 = call i32 @writel_bits_relaxed(i32 %86, i32 %88, i64 %94)
  %96 = load i32, i32* @OSD_REPLACE_SHIFT, align 4
  %97 = shl i32 255, %96
  %98 = load i32, i32* @OSD_REPLACE_SHIFT, align 4
  %99 = shl i32 255, %98
  %100 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %101 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @VIU_OSD2_CTRL_STAT2, align 4
  %104 = call i64 @_REG(i32 %103)
  %105 = add nsw i64 %102, %104
  %106 = call i32 @writel_bits_relaxed(i32 %97, i32 %99, i64 %105)
  %107 = load i32, i32* @VIU_CTRL0_VD1_AFBC_MASK, align 4
  %108 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %109 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @VIU_MISC_CTRL0, align 4
  %112 = call i64 @_REG(i32 %111)
  %113 = add nsw i64 %110, %112
  %114 = call i32 @writel_bits_relaxed(i32 %107, i32 0, i64 %113)
  %115 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %116 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @AFBC_ENABLE, align 4
  %119 = call i64 @_REG(i32 %118)
  %120 = add nsw i64 %117, %119
  %121 = call i32 @writel_relaxed(i32 0, i64 %120)
  %122 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %123 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @VD1_IF0_LUMA_FIFO_SIZE, align 4
  %126 = call i64 @_REG(i32 %125)
  %127 = add nsw i64 %124, %126
  %128 = call i32 @writel_relaxed(i32 16711872, i64 %127)
  %129 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %130 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @VD2_IF0_LUMA_FIFO_SIZE, align 4
  %133 = call i64 @_REG(i32 %132)
  %134 = add nsw i64 %131, %133
  %135 = call i32 @writel_relaxed(i32 16711872, i64 %134)
  %136 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %137 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %138 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %220

140:                                              ; preds = %68
  %141 = call i32 @VIU_OSD_BLEND_REORDER(i32 0, i32 1)
  %142 = call i32 @VIU_OSD_BLEND_REORDER(i32 1, i32 0)
  %143 = or i32 %141, %142
  %144 = call i32 @VIU_OSD_BLEND_REORDER(i32 2, i32 0)
  %145 = or i32 %143, %144
  %146 = call i32 @VIU_OSD_BLEND_REORDER(i32 3, i32 0)
  %147 = or i32 %145, %146
  %148 = call i32 @VIU_OSD_BLEND_DIN_EN(i32 1)
  %149 = or i32 %147, %148
  %150 = load i32, i32* @VIU_OSD_BLEND1_DIN3_BYPASS_TO_DOUT1, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @VIU_OSD_BLEND1_DOUT_BYPASS_TO_BLEND2, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @VIU_OSD_BLEND_DIN0_BYPASS_TO_DOUT0, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @VIU_OSD_BLEND_BLEN2_PREMULT_EN(i32 1)
  %157 = or i32 %155, %156
  %158 = call i32 @VIU_OSD_BLEND_HOLD_LINES(i32 4)
  %159 = or i32 %157, %158
  %160 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %161 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @VIU_OSD_BLEND_CTRL, align 4
  %164 = call i64 @_REG(i32 %163)
  %165 = add nsw i64 %162, %164
  %166 = call i32 @writel_relaxed(i32 %159, i64 %165)
  %167 = load i32, i32* @OSD_BLEND_PATH_SEL_ENABLE, align 4
  %168 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %169 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @OSD1_BLEND_SRC_CTRL, align 4
  %172 = call i64 @_REG(i32 %171)
  %173 = add nsw i64 %170, %172
  %174 = call i32 @writel_relaxed(i32 %167, i64 %173)
  %175 = load i32, i32* @OSD_BLEND_PATH_SEL_ENABLE, align 4
  %176 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %177 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* @OSD2_BLEND_SRC_CTRL, align 4
  %180 = call i64 @_REG(i32 %179)
  %181 = add nsw i64 %178, %180
  %182 = call i32 @writel_relaxed(i32 %175, i64 %181)
  %183 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %184 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @VD1_BLEND_SRC_CTRL, align 4
  %187 = call i64 @_REG(i32 %186)
  %188 = add nsw i64 %185, %187
  %189 = call i32 @writel_relaxed(i32 0, i64 %188)
  %190 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %191 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* @VD2_BLEND_SRC_CTRL, align 4
  %194 = call i64 @_REG(i32 %193)
  %195 = add nsw i64 %192, %194
  %196 = call i32 @writel_relaxed(i32 0, i64 %195)
  %197 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %198 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* @VIU_OSD_BLEND_DUMMY_DATA0, align 4
  %201 = call i64 @_REG(i32 %200)
  %202 = add nsw i64 %199, %201
  %203 = call i32 @writel_relaxed(i32 0, i64 %202)
  %204 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %205 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @VIU_OSD_BLEND_DUMMY_ALPHA, align 4
  %208 = call i64 @_REG(i32 %207)
  %209 = add nsw i64 %206, %208
  %210 = call i32 @writel_relaxed(i32 0, i64 %209)
  %211 = call i32 @DOLBY_BYPASS_EN(i32 12)
  %212 = call i32 @DOLBY_BYPASS_EN(i32 12)
  %213 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %214 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @DOLBY_PATH_CTRL, align 4
  %217 = call i64 @_REG(i32 %216)
  %218 = add nsw i64 %215, %217
  %219 = call i32 @writel_bits_relaxed(i32 %211, i32 %212, i64 %218)
  br label %220

220:                                              ; preds = %140, %68
  %221 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %222 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  store i32 0, i32* %223, align 8
  %224 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %225 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  store i32 0, i32* %226, align 4
  %227 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %228 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 2
  store i32 0, i32* %229, align 8
  ret void
}

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @meson_viu_load_matrix(%struct.meson_drm*) #1

declare dso_local i32 @meson_viu_set_g12a_osd1_matrix(%struct.meson_drm*, i32, i32) #1

declare dso_local i32 @VIU_OSD_HOLD_FIFO_LINES(i32) #1

declare dso_local i32 @VIU_OSD_FIFO_DEPTH_VAL(i32) #1

declare dso_local i32 @VIU_OSD_WORDS_PER_BURST(i32) #1

declare dso_local i32 @VIU_OSD_FIFO_LIMITS(i32) #1

declare dso_local i32 @meson_viu_osd_burst_length_reg(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @VIU_OSD_BLEND_REORDER(i32, i32) #1

declare dso_local i32 @VIU_OSD_BLEND_DIN_EN(i32) #1

declare dso_local i32 @VIU_OSD_BLEND_BLEN2_PREMULT_EN(i32) #1

declare dso_local i32 @VIU_OSD_BLEND_HOLD_LINES(i32) #1

declare dso_local i32 @DOLBY_BYPASS_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
