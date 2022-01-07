; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_get_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32 }

@OTG_CRC_CNTL = common dso_local global i32 0, align 4
@OTG_CRC_EN = common dso_local global i32 0, align 4
@OTG_CRC0_DATA_RG = common dso_local global i32 0, align 4
@CRC0_R_CR = common dso_local global i32 0, align 4
@CRC0_G_Y = common dso_local global i32 0, align 4
@OTG_CRC0_DATA_B = common dso_local global i32 0, align 4
@CRC0_B_CB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optc1_get_crc(%struct.timing_generator* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timing_generator*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %13 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %12)
  store %struct.optc* %13, %struct.optc** %11, align 8
  %14 = load i32, i32* @OTG_CRC_CNTL, align 4
  %15 = load i32, i32* @OTG_CRC_EN, align 4
  %16 = call i32 @REG_GET(i32 %14, i32 %15, i64* %10)
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %31

20:                                               ; preds = %4
  %21 = load i32, i32* @OTG_CRC0_DATA_RG, align 4
  %22 = load i32, i32* @CRC0_R_CR, align 4
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* @CRC0_G_Y, align 4
  %25 = load i64*, i64** %8, align 8
  %26 = call i32 @REG_GET_2(i32 %21, i32 %22, i64* %23, i32 %24, i64* %25)
  %27 = load i32, i32* @OTG_CRC0_DATA_B, align 4
  %28 = load i32, i32* @CRC0_B_CB, align 4
  %29 = load i64*, i64** %9, align 8
  %30 = call i32 @REG_GET(i32 %27, i32 %28, i64* %29)
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %20, %19
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i64*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
