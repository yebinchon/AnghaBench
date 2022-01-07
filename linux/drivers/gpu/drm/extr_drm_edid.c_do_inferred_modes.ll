; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_inferred_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_inferred_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detailed_timing = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.detailed_non_pixel }
%struct.detailed_non_pixel = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.detailed_data_monitor_range }
%struct.detailed_data_monitor_range = type { i32 }
%struct.detailed_mode_closure = type { i32, i32, i32 }

@EDID_DETAIL_MONITOR_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.detailed_timing*, i8*)* @do_inferred_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_inferred_modes(%struct.detailed_timing* %0, i8* %1) #0 {
  %3 = alloca %struct.detailed_timing*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.detailed_mode_closure*, align 8
  %6 = alloca %struct.detailed_non_pixel*, align 8
  %7 = alloca %struct.detailed_data_monitor_range*, align 8
  store %struct.detailed_timing* %0, %struct.detailed_timing** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.detailed_mode_closure*
  store %struct.detailed_mode_closure* %9, %struct.detailed_mode_closure** %5, align 8
  %10 = load %struct.detailed_timing*, %struct.detailed_timing** %3, align 8
  %11 = getelementptr inbounds %struct.detailed_timing, %struct.detailed_timing* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.detailed_non_pixel* %12, %struct.detailed_non_pixel** %6, align 8
  %13 = load %struct.detailed_non_pixel*, %struct.detailed_non_pixel** %6, align 8
  %14 = getelementptr inbounds %struct.detailed_non_pixel, %struct.detailed_non_pixel* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.detailed_data_monitor_range* %15, %struct.detailed_data_monitor_range** %7, align 8
  %16 = load %struct.detailed_non_pixel*, %struct.detailed_non_pixel** %6, align 8
  %17 = getelementptr inbounds %struct.detailed_non_pixel, %struct.detailed_non_pixel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EDID_DETAIL_MONITOR_RANGE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %82

22:                                               ; preds = %2
  %23 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %24 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %27 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.detailed_timing*, %struct.detailed_timing** %3, align 8
  %30 = call i64 @drm_dmt_modes_for_range(i32 %25, i32 %28, %struct.detailed_timing* %29)
  %31 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %32 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %38 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @version_greater(i32 %39, i32 1, i32 1)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %22
  br label %82

43:                                               ; preds = %22
  %44 = load %struct.detailed_data_monitor_range*, %struct.detailed_data_monitor_range** %7, align 8
  %45 = getelementptr inbounds %struct.detailed_data_monitor_range, %struct.detailed_data_monitor_range* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %81 [
    i32 2, label %47
    i32 0, label %47
    i32 4, label %60
    i32 1, label %80
  ]

47:                                               ; preds = %43, %43
  %48 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %49 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %52 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.detailed_timing*, %struct.detailed_timing** %3, align 8
  %55 = call i32 @drm_gtf_modes_for_range(i32 %50, i32 %53, %struct.detailed_timing* %54)
  %56 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %57 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %82

60:                                               ; preds = %43
  %61 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %62 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @version_greater(i32 %63, i32 1, i32 3)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %82

67:                                               ; preds = %60
  %68 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %69 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %72 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.detailed_timing*, %struct.detailed_timing** %3, align 8
  %75 = call i32 @drm_cvt_modes_for_range(i32 %70, i32 %73, %struct.detailed_timing* %74)
  %76 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %77 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %82

80:                                               ; preds = %43
  br label %81

81:                                               ; preds = %43, %80
  br label %82

82:                                               ; preds = %21, %42, %81, %67, %66, %47
  ret void
}

declare dso_local i64 @drm_dmt_modes_for_range(i32, i32, %struct.detailed_timing*) #1

declare dso_local i32 @version_greater(i32, i32, i32) #1

declare dso_local i32 @drm_gtf_modes_for_range(i32, i32, %struct.detailed_timing*) #1

declare dso_local i32 @drm_cvt_modes_for_range(i32, i32, %struct.detailed_timing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
