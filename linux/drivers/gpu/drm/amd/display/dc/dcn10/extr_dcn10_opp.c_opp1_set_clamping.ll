; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_set_clamping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_set_clamping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_opp = type { i32 }
%struct.clamping_and_pixel_encoding_params = type { i32 }

@FMT_CLAMP_CNTL = common dso_local global i32 0, align 4
@FMT_CLAMP_DATA_EN = common dso_local global i32 0, align 4
@FMT_CLAMP_COLOR_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_opp*, %struct.clamping_and_pixel_encoding_params*)* @opp1_set_clamping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opp1_set_clamping(%struct.dcn10_opp* %0, %struct.clamping_and_pixel_encoding_params* %1) #0 {
  %3 = alloca %struct.dcn10_opp*, align 8
  %4 = alloca %struct.clamping_and_pixel_encoding_params*, align 8
  store %struct.dcn10_opp* %0, %struct.dcn10_opp** %3, align 8
  store %struct.clamping_and_pixel_encoding_params* %1, %struct.clamping_and_pixel_encoding_params** %4, align 8
  %5 = load i32, i32* @FMT_CLAMP_CNTL, align 4
  %6 = load i32, i32* @FMT_CLAMP_DATA_EN, align 4
  %7 = load i32, i32* @FMT_CLAMP_COLOR_FORMAT, align 4
  %8 = call i32 @REG_UPDATE_2(i32 %5, i32 %6, i32 0, i32 %7, i32 0)
  %9 = load %struct.clamping_and_pixel_encoding_params*, %struct.clamping_and_pixel_encoding_params** %4, align 8
  %10 = getelementptr inbounds %struct.clamping_and_pixel_encoding_params, %struct.clamping_and_pixel_encoding_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %33 [
    i32 132, label %12
    i32 129, label %17
    i32 131, label %22
    i32 130, label %27
    i32 128, label %32
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @FMT_CLAMP_CNTL, align 4
  %14 = load i32, i32* @FMT_CLAMP_DATA_EN, align 4
  %15 = load i32, i32* @FMT_CLAMP_COLOR_FORMAT, align 4
  %16 = call i32 @REG_UPDATE_2(i32 %13, i32 %14, i32 1, i32 %15, i32 0)
  br label %34

17:                                               ; preds = %2
  %18 = load i32, i32* @FMT_CLAMP_CNTL, align 4
  %19 = load i32, i32* @FMT_CLAMP_DATA_EN, align 4
  %20 = load i32, i32* @FMT_CLAMP_COLOR_FORMAT, align 4
  %21 = call i32 @REG_UPDATE_2(i32 %18, i32 %19, i32 1, i32 %20, i32 1)
  br label %34

22:                                               ; preds = %2
  %23 = load i32, i32* @FMT_CLAMP_CNTL, align 4
  %24 = load i32, i32* @FMT_CLAMP_DATA_EN, align 4
  %25 = load i32, i32* @FMT_CLAMP_COLOR_FORMAT, align 4
  %26 = call i32 @REG_UPDATE_2(i32 %23, i32 %24, i32 1, i32 %25, i32 2)
  br label %34

27:                                               ; preds = %2
  %28 = load i32, i32* @FMT_CLAMP_CNTL, align 4
  %29 = load i32, i32* @FMT_CLAMP_DATA_EN, align 4
  %30 = load i32, i32* @FMT_CLAMP_COLOR_FORMAT, align 4
  %31 = call i32 @REG_UPDATE_2(i32 %28, i32 %29, i32 1, i32 %30, i32 3)
  br label %34

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %2, %32
  br label %34

34:                                               ; preds = %33, %27, %22, %17, %12
  ret void
}

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
