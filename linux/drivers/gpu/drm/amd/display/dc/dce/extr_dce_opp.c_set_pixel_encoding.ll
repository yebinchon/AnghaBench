; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_set_pixel_encoding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_set_pixel_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_opp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.clamping_and_pixel_encoding_params = type { i64 }

@FMT_CONTROL = common dso_local global i32 0, align 4
@FMT_PIXEL_ENCODING = common dso_local global i32 0, align 4
@FMT_SUBSAMPLING_MODE = common dso_local global i32 0, align 4
@FMT_CBCR_BIT_REDUCTION_BYPASS = common dso_local global i32 0, align 4
@PIXEL_ENCODING_YCBCR422 = common dso_local global i64 0, align 8
@FMT_SUBSAMPLING_ORDER = common dso_local global i32 0, align 4
@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_opp*, %struct.clamping_and_pixel_encoding_params*)* @set_pixel_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pixel_encoding(%struct.dce110_opp* %0, %struct.clamping_and_pixel_encoding_params* %1) #0 {
  %3 = alloca %struct.dce110_opp*, align 8
  %4 = alloca %struct.clamping_and_pixel_encoding_params*, align 8
  store %struct.dce110_opp* %0, %struct.dce110_opp** %3, align 8
  store %struct.clamping_and_pixel_encoding_params* %1, %struct.clamping_and_pixel_encoding_params** %4, align 8
  %5 = load %struct.dce110_opp*, %struct.dce110_opp** %3, align 8
  %6 = getelementptr inbounds %struct.dce110_opp, %struct.dce110_opp* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @FMT_CONTROL, align 4
  %13 = load i32, i32* @FMT_PIXEL_ENCODING, align 4
  %14 = load i32, i32* @FMT_SUBSAMPLING_MODE, align 4
  %15 = load i32, i32* @FMT_CBCR_BIT_REDUCTION_BYPASS, align 4
  %16 = call i32 @REG_UPDATE_3(i32 %12, i32 %13, i32 0, i32 %14, i32 0, i32 %15, i32 0)
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @FMT_CONTROL, align 4
  %19 = load i32, i32* @FMT_PIXEL_ENCODING, align 4
  %20 = load i32, i32* @FMT_SUBSAMPLING_MODE, align 4
  %21 = call i32 @REG_UPDATE_2(i32 %18, i32 %19, i32 0, i32 %20, i32 0)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.clamping_and_pixel_encoding_params*, %struct.clamping_and_pixel_encoding_params** %4, align 8
  %24 = getelementptr inbounds %struct.clamping_and_pixel_encoding_params, %struct.clamping_and_pixel_encoding_params* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PIXEL_ENCODING_YCBCR422, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @FMT_CONTROL, align 4
  %30 = load i32, i32* @FMT_PIXEL_ENCODING, align 4
  %31 = load i32, i32* @FMT_SUBSAMPLING_ORDER, align 4
  %32 = call i32 @REG_UPDATE_2(i32 %29, i32 %30, i32 1, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.clamping_and_pixel_encoding_params*, %struct.clamping_and_pixel_encoding_params** %4, align 8
  %35 = getelementptr inbounds %struct.clamping_and_pixel_encoding_params, %struct.clamping_and_pixel_encoding_params* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* @FMT_CONTROL, align 4
  %41 = load i32, i32* @FMT_PIXEL_ENCODING, align 4
  %42 = load i32, i32* @FMT_SUBSAMPLING_MODE, align 4
  %43 = load i32, i32* @FMT_CBCR_BIT_REDUCTION_BYPASS, align 4
  %44 = call i32 @REG_UPDATE_3(i32 %40, i32 %41, i32 2, i32 %42, i32 2, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %39, %33
  ret void
}

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
