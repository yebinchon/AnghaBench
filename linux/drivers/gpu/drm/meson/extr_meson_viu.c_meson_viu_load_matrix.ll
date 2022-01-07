; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_load_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_viu.c_meson_viu_load_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i32 }

@VIU_LUT_OSD_EOTF = common dso_local global i32 0, align 4
@eotf_33_linear_mapping = common dso_local global i32 0, align 4
@VIU_MATRIX_OSD_EOTF = common dso_local global i32 0, align 4
@eotf_bypass_coeff = common dso_local global i32 0, align 4
@VIU_LUT_OSD_OETF = common dso_local global i32 0, align 4
@oetf_41_linear_mapping = common dso_local global i32 0, align 4
@VIU_MATRIX_OSD = common dso_local global i32 0, align 4
@RGB709_to_YUV709l_coeff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*)* @meson_viu_load_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_viu_load_matrix(%struct.meson_drm* %0) #0 {
  %2 = alloca %struct.meson_drm*, align 8
  store %struct.meson_drm* %0, %struct.meson_drm** %2, align 8
  %3 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %4 = load i32, i32* @VIU_LUT_OSD_EOTF, align 4
  %5 = load i32, i32* @eotf_33_linear_mapping, align 4
  %6 = load i32, i32* @eotf_33_linear_mapping, align 4
  %7 = load i32, i32* @eotf_33_linear_mapping, align 4
  %8 = call i32 @meson_viu_set_osd_lut(%struct.meson_drm* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 0)
  %9 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %10 = load i32, i32* @VIU_MATRIX_OSD_EOTF, align 4
  %11 = load i32, i32* @eotf_bypass_coeff, align 4
  %12 = call i32 @meson_viu_set_osd_matrix(%struct.meson_drm* %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %14 = load i32, i32* @VIU_LUT_OSD_OETF, align 4
  %15 = load i32, i32* @oetf_41_linear_mapping, align 4
  %16 = load i32, i32* @oetf_41_linear_mapping, align 4
  %17 = load i32, i32* @oetf_41_linear_mapping, align 4
  %18 = call i32 @meson_viu_set_osd_lut(%struct.meson_drm* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %20 = load i32, i32* @VIU_MATRIX_OSD, align 4
  %21 = load i32, i32* @RGB709_to_YUV709l_coeff, align 4
  %22 = call i32 @meson_viu_set_osd_matrix(%struct.meson_drm* %19, i32 %20, i32 %21, i32 1)
  ret void
}

declare dso_local i32 @meson_viu_set_osd_lut(%struct.meson_drm*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @meson_viu_set_osd_matrix(%struct.meson_drm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
