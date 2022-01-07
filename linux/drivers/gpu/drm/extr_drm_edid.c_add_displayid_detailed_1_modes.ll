; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_displayid_detailed_1_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_displayid_detailed_1_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.displayid_block = type { i32 }
%struct.displayid_detailed_timing_block = type { %struct.displayid_detailed_timings_1* }
%struct.displayid_detailed_timings_1 = type { i32 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.displayid_block*)* @add_displayid_detailed_1_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_displayid_detailed_1_modes(%struct.drm_connector* %0, %struct.displayid_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.displayid_block*, align 8
  %6 = alloca %struct.displayid_detailed_timing_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.displayid_detailed_timings_1*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.displayid_block* %1, %struct.displayid_block** %5, align 8
  %12 = load %struct.displayid_block*, %struct.displayid_block** %5, align 8
  %13 = bitcast %struct.displayid_block* %12 to %struct.displayid_detailed_timing_block*
  store %struct.displayid_detailed_timing_block* %13, %struct.displayid_detailed_timing_block** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.displayid_block*, %struct.displayid_block** %5, align 8
  %15 = getelementptr inbounds %struct.displayid_block, %struct.displayid_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = srem i32 %16, 20
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.displayid_block*, %struct.displayid_block** %5, align 8
  %22 = getelementptr inbounds %struct.displayid_block, %struct.displayid_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 20
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %50, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.displayid_detailed_timing_block*, %struct.displayid_detailed_timing_block** %6, align 8
  %31 = getelementptr inbounds %struct.displayid_detailed_timing_block, %struct.displayid_detailed_timing_block* %30, i32 0, i32 0
  %32 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.displayid_detailed_timings_1, %struct.displayid_detailed_timings_1* %32, i64 %34
  store %struct.displayid_detailed_timings_1* %35, %struct.displayid_detailed_timings_1** %11, align 8
  %36 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.displayid_detailed_timings_1*, %struct.displayid_detailed_timings_1** %11, align 8
  %40 = call %struct.drm_display_mode* @drm_mode_displayid_detailed(i32 %38, %struct.displayid_detailed_timings_1* %39)
  store %struct.drm_display_mode* %40, %struct.drm_display_mode** %9, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %42 = icmp ne %struct.drm_display_mode* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br label %50

44:                                               ; preds = %29
  %45 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %47 = call i32 @drm_mode_probed_add(%struct.drm_connector* %45, %struct.drm_display_mode* %46)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %44, %43
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.drm_display_mode* @drm_mode_displayid_detailed(i32, %struct.displayid_detailed_timings_1*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
