; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_set_background_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_set_background_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_mixer = type { i32 }
%struct.drm_display_mode = type { i64, i64 }

@GAM_MIXER_BCO = common dso_local global i32 0, align 4
@GAM_MIXER_BCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_mixer*, %struct.drm_display_mode*)* @sti_mixer_set_background_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_mixer_set_background_area(%struct.sti_mixer* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.sti_mixer*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sti_mixer* %0, %struct.sti_mixer** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %10 = bitcast %struct.drm_display_mode* %9 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @sti_vtg_get_line_number(i64 %12, i64 %14, i64 0)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 1
  %21 = bitcast %struct.drm_display_mode* %16 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @sti_vtg_get_line_number(i64 %23, i64 %25, i64 %20)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %28 = bitcast %struct.drm_display_mode* %27 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @sti_vtg_get_pixel_number(i64 %30, i64 %32, i64 0)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = bitcast %struct.drm_display_mode* %34 to { i64, i64 }*
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @sti_vtg_get_pixel_number(i64 %41, i64 %43, i64 %38)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %46 = load i32, i32* @GAM_MIXER_BCO, align 4
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @sti_mixer_reg_write(%struct.sti_mixer* %45, i32 %46, i32 %50)
  %52 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %53 = load i32, i32* @GAM_MIXER_BCS, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 16
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @sti_mixer_reg_write(%struct.sti_mixer* %52, i32 %53, i32 %57)
  ret void
}

declare dso_local i32 @sti_vtg_get_line_number(i64, i64, i64) #1

declare dso_local i32 @sti_vtg_get_pixel_number(i64, i64, i64) #1

declare dso_local i32 @sti_mixer_reg_write(%struct.sti_mixer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
