; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_get_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmCRTC0_CRTC_CRC_CNTL = common dso_local global i32 0, align 4
@CRTC0_CRTC_CRC_CNTL = common dso_local global i32 0, align 4
@CRTC_CRC_EN = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_CRC0_DATA_RG = common dso_local global i32 0, align 4
@CRTC0_CRTC_CRC0_DATA_RG = common dso_local global i32 0, align 4
@CRC0_R_CR = common dso_local global i32 0, align 4
@CRC0_G_Y = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_CRC0_DATA_B = common dso_local global i32 0, align 4
@CRTC0_CRTC_CRC0_DATA_B = common dso_local global i32 0, align 4
@CRC0_B_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timing_generator*, i32*, i32*, i32*)* @dce120_get_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce120_get_crc(%struct.timing_generator* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timing_generator*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dce110_timing_generator*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %14 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %13)
  store %struct.dce110_timing_generator* %14, %struct.dce110_timing_generator** %10, align 8
  %15 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %16 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @mmCRTC0_CRTC_CRC_CNTL, align 4
  %19 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %10, align 8
  %20 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dm_read_reg_soc15(i32 %17, i32 %18, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @CRTC0_CRTC_CRC_CNTL, align 4
  %26 = load i32, i32* @CRTC_CRC_EN, align 4
  %27 = call i32 @get_reg_field_value(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %65

31:                                               ; preds = %4
  %32 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %33 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @mmCRTC0_CRTC_CRC0_DATA_RG, align 4
  %36 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %10, align 8
  %37 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dm_read_reg_soc15(i32 %34, i32 %35, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @CRTC0_CRTC_CRC0_DATA_RG, align 4
  %43 = load i32, i32* @CRC0_R_CR, align 4
  %44 = call i32 @get_reg_field_value(i32 %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @CRTC0_CRTC_CRC0_DATA_RG, align 4
  %48 = load i32, i32* @CRC0_G_Y, align 4
  %49 = call i32 @get_reg_field_value(i32 %46, i32 %47, i32 %48)
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %52 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @mmCRTC0_CRTC_CRC0_DATA_B, align 4
  %55 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %10, align 8
  %56 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dm_read_reg_soc15(i32 %53, i32 %54, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @CRTC0_CRTC_CRC0_DATA_B, align 4
  %62 = load i32, i32* @CRC0_B_CB, align 4
  %63 = call i32 @get_reg_field_value(i32 %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %31, %30
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg_soc15(i32, i32, i32) #1

declare dso_local i32 @get_reg_field_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
