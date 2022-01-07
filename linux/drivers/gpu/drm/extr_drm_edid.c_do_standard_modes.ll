; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_standard_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_standard_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detailed_timing = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.detailed_non_pixel }
%struct.detailed_non_pixel = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.std_timing* }
%struct.std_timing = type { i32 }
%struct.detailed_mode_closure = type { i32, %struct.edid*, %struct.drm_connector* }
%struct.edid = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }

@EDID_DETAIL_STD_MODES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.detailed_timing*, i8*)* @do_standard_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_standard_modes(%struct.detailed_timing* %0, i8* %1) #0 {
  %3 = alloca %struct.detailed_timing*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.detailed_mode_closure*, align 8
  %6 = alloca %struct.detailed_non_pixel*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.edid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.std_timing*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  store %struct.detailed_timing* %0, %struct.detailed_timing** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.detailed_mode_closure*
  store %struct.detailed_mode_closure* %13, %struct.detailed_mode_closure** %5, align 8
  %14 = load %struct.detailed_timing*, %struct.detailed_timing** %3, align 8
  %15 = getelementptr inbounds %struct.detailed_timing, %struct.detailed_timing* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.detailed_non_pixel* %16, %struct.detailed_non_pixel** %6, align 8
  %17 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %18 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %17, i32 0, i32 2
  %19 = load %struct.drm_connector*, %struct.drm_connector** %18, align 8
  store %struct.drm_connector* %19, %struct.drm_connector** %7, align 8
  %20 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %21 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %20, i32 0, i32 1
  %22 = load %struct.edid*, %struct.edid** %21, align 8
  store %struct.edid* %22, %struct.edid** %8, align 8
  %23 = load %struct.detailed_non_pixel*, %struct.detailed_non_pixel** %6, align 8
  %24 = getelementptr inbounds %struct.detailed_non_pixel, %struct.detailed_non_pixel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EDID_DETAIL_STD_MODES, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %55, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.detailed_non_pixel*, %struct.detailed_non_pixel** %6, align 8
  %34 = getelementptr inbounds %struct.detailed_non_pixel, %struct.detailed_non_pixel* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.std_timing*, %struct.std_timing** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.std_timing, %struct.std_timing* %36, i64 %38
  store %struct.std_timing* %39, %struct.std_timing** %10, align 8
  %40 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %41 = load %struct.edid*, %struct.edid** %8, align 8
  %42 = load %struct.std_timing*, %struct.std_timing** %10, align 8
  %43 = call %struct.drm_display_mode* @drm_mode_std(%struct.drm_connector* %40, %struct.edid* %41, %struct.std_timing* %42)
  store %struct.drm_display_mode* %43, %struct.drm_display_mode** %11, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %45 = icmp ne %struct.drm_display_mode* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %32
  %47 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %49 = call i32 @drm_mode_probed_add(%struct.drm_connector* %47, %struct.drm_display_mode* %48)
  %50 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %51 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %46, %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %29

58:                                               ; preds = %29
  br label %59

59:                                               ; preds = %58, %2
  ret void
}

declare dso_local %struct.drm_display_mode* @drm_mode_std(%struct.drm_connector*, %struct.edid*, %struct.std_timing*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
