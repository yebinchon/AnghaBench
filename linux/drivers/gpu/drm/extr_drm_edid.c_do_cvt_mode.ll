; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_cvt_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_cvt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detailed_timing = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.detailed_non_pixel }
%struct.detailed_non_pixel = type { i64 }
%struct.detailed_mode_closure = type { i32, i32 }

@EDID_DETAIL_CVT_3BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.detailed_timing*, i8*)* @do_cvt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_cvt_mode(%struct.detailed_timing* %0, i8* %1) #0 {
  %3 = alloca %struct.detailed_timing*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.detailed_mode_closure*, align 8
  %6 = alloca %struct.detailed_non_pixel*, align 8
  store %struct.detailed_timing* %0, %struct.detailed_timing** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.detailed_mode_closure*
  store %struct.detailed_mode_closure* %8, %struct.detailed_mode_closure** %5, align 8
  %9 = load %struct.detailed_timing*, %struct.detailed_timing** %3, align 8
  %10 = getelementptr inbounds %struct.detailed_timing, %struct.detailed_timing* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.detailed_non_pixel* %11, %struct.detailed_non_pixel** %6, align 8
  %12 = load %struct.detailed_non_pixel*, %struct.detailed_non_pixel** %6, align 8
  %13 = getelementptr inbounds %struct.detailed_non_pixel, %struct.detailed_non_pixel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EDID_DETAIL_CVT_3BYTE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %19 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.detailed_timing*, %struct.detailed_timing** %3, align 8
  %22 = call i64 @drm_cvt_modes(i32 %20, %struct.detailed_timing* %21)
  %23 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %24 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  br label %29

29:                                               ; preds = %17, %2
  ret void
}

declare dso_local i64 @drm_cvt_modes(i32, %struct.detailed_timing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
