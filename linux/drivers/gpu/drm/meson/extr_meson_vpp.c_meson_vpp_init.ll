; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vpp.c_meson_vpp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vpp.c_meson_vpp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i64 }

@VPU_COMPATIBLE_GXL = common dso_local global i32 0, align 4
@VPP_DUMMY_DATA1 = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXM = common dso_local global i32 0, align 4
@VIU_MISC_CTRL1 = common dso_local global i32 0, align 4
@VPP_PPS_DUMMY_DATA_MODE = common dso_local global i32 0, align 4
@VPP_DOLBY_CTRL = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@DOLBY_PATH_CTRL = common dso_local global i32 0, align 4
@VPP_OFIFO_SIZE_DEFAULT = common dso_local global i32 0, align 4
@VPP_OFIFO_SIZE = common dso_local global i32 0, align 4
@VPP_OFIFO_SIZE_MASK = common dso_local global i32 0, align 4
@VPP_HOLD_LINES = common dso_local global i32 0, align 4
@VPP_PREBLEND_ENABLE = common dso_local global i32 0, align 4
@VPP_MISC = common dso_local global i32 0, align 4
@VPP_POSTBLEND_ENABLE = common dso_local global i32 0, align 4
@VPP_OSD1_POSTBLEND = common dso_local global i32 0, align 4
@VPP_OSD2_POSTBLEND = common dso_local global i32 0, align 4
@VPP_VD1_POSTBLEND = common dso_local global i32 0, align 4
@VPP_VD2_POSTBLEND = common dso_local global i32 0, align 4
@VPP_VD1_PREBLEND = common dso_local global i32 0, align 4
@VPP_VD2_PREBLEND = common dso_local global i32 0, align 4
@VPP_PREBLEND_VD1_H_START_END = common dso_local global i32 0, align 4
@VPP_BLEND_VD2_H_START_END = common dso_local global i32 0, align 4
@VPP_OSD_SC_CTRL0 = common dso_local global i32 0, align 4
@VPP_OSD_VSC_CTRL0 = common dso_local global i32 0, align 4
@VPP_OSD_HSC_CTRL0 = common dso_local global i32 0, align 4
@VPP_SC_VD_EN_ENABLE = common dso_local global i32 0, align 4
@VPP_SC_MISC = common dso_local global i32 0, align 4
@VPP_MINUS_BLACK_LVL_VADJ1_ENABLE = common dso_local global i32 0, align 4
@VPP_VADJ_CTRL = common dso_local global i32 0, align 4
@vpp_filter_coefs_4point_bspline = common dso_local global i32 0, align 4
@vpp_filter_coefs_bicubic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meson_vpp_init(%struct.meson_drm* %0) #0 {
  %2 = alloca %struct.meson_drm*, align 8
  store %struct.meson_drm* %0, %struct.meson_drm** %2, align 8
  %3 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %4 = load i32, i32* @VPU_COMPATIBLE_GXL, align 4
  %5 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %9 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @VPP_DUMMY_DATA1, align 4
  %12 = call i64 @_REG(i32 %11)
  %13 = add nsw i64 %10, %12
  %14 = call i32 @writel_relaxed(i32 1081472, i64 %13)
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %17 = load i32, i32* @VPU_COMPATIBLE_GXM, align 4
  %18 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %22 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @VIU_MISC_CTRL1, align 4
  %25 = call i64 @_REG(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @writel_bits_relaxed(i32 16711680, i32 16711680, i64 %26)
  %28 = load i32, i32* @VPP_PPS_DUMMY_DATA_MODE, align 4
  %29 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %30 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @VPP_DOLBY_CTRL, align 4
  %33 = call i64 @_REG(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @writel_relaxed(i32 %28, i64 %34)
  %36 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %37 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @VPP_DUMMY_DATA1, align 4
  %40 = call i64 @_REG(i32 %39)
  %41 = add nsw i64 %38, %40
  %42 = call i32 @writel_relaxed(i32 16908416, i64 %41)
  br label %57

43:                                               ; preds = %15
  %44 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %45 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %46 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %50 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @DOLBY_PATH_CTRL, align 4
  %53 = call i64 @_REG(i32 %52)
  %54 = add nsw i64 %51, %53
  %55 = call i32 @writel_relaxed(i32 15, i64 %54)
  br label %56

56:                                               ; preds = %48, %43
  br label %57

57:                                               ; preds = %56, %20
  br label %58

58:                                               ; preds = %57, %7
  %59 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %60 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %61 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32, i32* @VPP_OFIFO_SIZE_DEFAULT, align 4
  %65 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %66 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @VPP_OFIFO_SIZE, align 4
  %69 = call i64 @_REG(i32 %68)
  %70 = add nsw i64 %67, %69
  %71 = call i32 @writel_relaxed(i32 %64, i64 %70)
  br label %81

72:                                               ; preds = %58
  %73 = load i32, i32* @VPP_OFIFO_SIZE_MASK, align 4
  %74 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %75 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @VPP_OFIFO_SIZE, align 4
  %78 = call i64 @_REG(i32 %77)
  %79 = add nsw i64 %76, %78
  %80 = call i32 @writel_bits_relaxed(i32 %73, i32 1919, i64 %79)
  br label %81

81:                                               ; preds = %72, %63
  %82 = call i32 @VPP_POSTBLEND_HOLD_LINES(i32 4)
  %83 = call i32 @VPP_PREBLEND_HOLD_LINES(i32 4)
  %84 = or i32 %82, %83
  %85 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %86 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @VPP_HOLD_LINES, align 4
  %89 = call i64 @_REG(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @writel_relaxed(i32 %84, i64 %90)
  %92 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %93 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %94 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %145, label %96

96:                                               ; preds = %81
  %97 = load i32, i32* @VPP_PREBLEND_ENABLE, align 4
  %98 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %99 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @VPP_MISC, align 4
  %102 = call i64 @_REG(i32 %101)
  %103 = add nsw i64 %100, %102
  %104 = call i32 @writel_bits_relaxed(i32 %97, i32 0, i64 %103)
  %105 = load i32, i32* @VPP_POSTBLEND_ENABLE, align 4
  %106 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %107 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @VPP_MISC, align 4
  %110 = call i64 @_REG(i32 %109)
  %111 = add nsw i64 %108, %110
  %112 = call i32 @writel_bits_relaxed(i32 %105, i32 0, i64 %111)
  %113 = load i32, i32* @VPP_OSD1_POSTBLEND, align 4
  %114 = load i32, i32* @VPP_OSD2_POSTBLEND, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @VPP_VD1_POSTBLEND, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @VPP_VD2_POSTBLEND, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @VPP_VD1_PREBLEND, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @VPP_VD2_PREBLEND, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %125 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @VPP_MISC, align 4
  %128 = call i64 @_REG(i32 %127)
  %129 = add nsw i64 %126, %128
  %130 = call i32 @writel_bits_relaxed(i32 %123, i32 0, i64 %129)
  %131 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %132 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @VPP_PREBLEND_VD1_H_START_END, align 4
  %135 = call i64 @_REG(i32 %134)
  %136 = add nsw i64 %133, %135
  %137 = call i32 @writel_relaxed(i32 4096, i64 %136)
  %138 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %139 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @VPP_BLEND_VD2_H_START_END, align 4
  %142 = call i64 @_REG(i32 %141)
  %143 = add nsw i64 %140, %142
  %144 = call i32 @writel_relaxed(i32 4096, i64 %143)
  br label %145

145:                                              ; preds = %96, %81
  %146 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %147 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* @VPP_OSD_SC_CTRL0, align 4
  %150 = call i64 @_REG(i32 %149)
  %151 = add nsw i64 %148, %150
  %152 = call i32 @writel_relaxed(i32 0, i64 %151)
  %153 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %154 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @VPP_OSD_VSC_CTRL0, align 4
  %157 = call i64 @_REG(i32 %156)
  %158 = add nsw i64 %155, %157
  %159 = call i32 @writel_relaxed(i32 0, i64 %158)
  %160 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %161 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @VPP_OSD_HSC_CTRL0, align 4
  %164 = call i64 @_REG(i32 %163)
  %165 = add nsw i64 %162, %164
  %166 = call i32 @writel_relaxed(i32 0, i64 %165)
  %167 = call i32 @VPP_VSC_BANK_LENGTH(i32 4)
  %168 = call i32 @VPP_HSC_BANK_LENGTH(i32 4)
  %169 = or i32 %167, %168
  %170 = load i32, i32* @VPP_SC_VD_EN_ENABLE, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %173 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @VPP_SC_MISC, align 4
  %176 = call i64 @_REG(i32 %175)
  %177 = add nsw i64 %174, %176
  %178 = call i32 @writel_relaxed(i32 %171, i64 %177)
  %179 = load i32, i32* @VPP_MINUS_BLACK_LVL_VADJ1_ENABLE, align 4
  %180 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %181 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* @VPP_VADJ_CTRL, align 4
  %184 = call i64 @_REG(i32 %183)
  %185 = add nsw i64 %182, %184
  %186 = call i32 @writel_relaxed(i32 %179, i64 %185)
  %187 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %188 = load i32, i32* @vpp_filter_coefs_4point_bspline, align 4
  %189 = call i32 @meson_vpp_write_scaling_filter_coefs(%struct.meson_drm* %187, i32 %188, i32 0)
  %190 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %191 = load i32, i32* @vpp_filter_coefs_4point_bspline, align 4
  %192 = call i32 @meson_vpp_write_scaling_filter_coefs(%struct.meson_drm* %190, i32 %191, i32 1)
  %193 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %194 = load i32, i32* @vpp_filter_coefs_bicubic, align 4
  %195 = call i32 @meson_vpp_write_vd_scaling_filter_coefs(%struct.meson_drm* %193, i32 %194, i32 0)
  %196 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %197 = load i32, i32* @vpp_filter_coefs_bicubic, align 4
  %198 = call i32 @meson_vpp_write_vd_scaling_filter_coefs(%struct.meson_drm* %196, i32 %197, i32 1)
  ret void
}

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @VPP_POSTBLEND_HOLD_LINES(i32) #1

declare dso_local i32 @VPP_PREBLEND_HOLD_LINES(i32) #1

declare dso_local i32 @VPP_VSC_BANK_LENGTH(i32) #1

declare dso_local i32 @VPP_HSC_BANK_LENGTH(i32) #1

declare dso_local i32 @meson_vpp_write_scaling_filter_coefs(%struct.meson_drm*, i32, i32) #1

declare dso_local i32 @meson_vpp_write_vd_scaling_filter_coefs(%struct.meson_drm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
