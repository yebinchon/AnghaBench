; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_get_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_CRC_CNTL = common dso_local global i32 0, align 4
@CRTC_CRC_CNTL = common dso_local global i32 0, align 4
@CRTC_CRC_EN = common dso_local global i32 0, align 4
@mmCRTC_CRC0_DATA_RG = common dso_local global i32 0, align 4
@CRTC_CRC0_DATA_RG = common dso_local global i32 0, align 4
@CRC0_R_CR = common dso_local global i32 0, align 4
@CRC0_G_Y = common dso_local global i32 0, align 4
@mmCRTC_CRC0_DATA_B = common dso_local global i32 0, align 4
@CRTC_CRC0_DATA_B = common dso_local global i32 0, align 4
@CRC0_B_CB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_get_crc(%struct.timing_generator* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timing_generator*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %15 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %14)
  store %struct.dce110_timing_generator* %15, %struct.dce110_timing_generator** %13, align 8
  %16 = load i32, i32* @mmCRTC_CRC_CNTL, align 4
  %17 = call i64 @CRTC_REG(i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %19 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @dm_read_reg(i32 %20, i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* @CRTC_CRC_CNTL, align 4
  %25 = load i32, i32* @CRTC_CRC_EN, align 4
  %26 = call i64 @get_reg_field_value(i64 %23, i32 %24, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

30:                                               ; preds = %4
  %31 = load i32, i32* @mmCRTC_CRC0_DATA_RG, align 4
  %32 = call i64 @CRTC_REG(i32 %31)
  store i64 %32, i64* %10, align 8
  %33 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %34 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @dm_read_reg(i32 %35, i64 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* @CRTC_CRC0_DATA_RG, align 4
  %40 = load i32, i32* @CRC0_R_CR, align 4
  %41 = call i64 @get_reg_field_value(i64 %38, i32 %39, i32 %40)
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* @CRTC_CRC0_DATA_RG, align 4
  %45 = load i32, i32* @CRC0_G_Y, align 4
  %46 = call i64 @get_reg_field_value(i64 %43, i32 %44, i32 %45)
  %47 = load i64*, i64** %8, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* @mmCRTC_CRC0_DATA_B, align 4
  %49 = call i64 @CRTC_REG(i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %51 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @dm_read_reg(i32 %52, i64 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* @CRTC_CRC0_DATA_B, align 4
  %57 = load i32, i32* @CRC0_B_CB, align 4
  %58 = call i64 @get_reg_field_value(i64 %55, i32 %56, i32 %57)
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %30, %29
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i64 @CRTC_REG(i32) #1

declare dso_local i64 @dm_read_reg(i32, i64) #1

declare dso_local i64 @get_reg_field_value(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
