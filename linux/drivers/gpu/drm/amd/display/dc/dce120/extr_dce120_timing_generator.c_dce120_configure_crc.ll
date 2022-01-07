; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_configure_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_configure_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.crc_params = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_timing_generator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmCRTC0_CRTC_CRC_CNTL = common dso_local global i32 0, align 4
@CRTC0_CRTC_CRC0_WINDOWA_X_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_X_START = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_X_END = common dso_local global i32 0, align 4
@CRTC0_CRTC_CRC0_WINDOWA_Y_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_Y_START = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_Y_END = common dso_local global i32 0, align 4
@CRTC0_CRTC_CRC0_WINDOWB_X_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_X_START = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_X_END = common dso_local global i32 0, align 4
@CRTC0_CRTC_CRC0_WINDOWB_Y_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_Y_START = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_Y_END = common dso_local global i32 0, align 4
@CRTC0_CRTC_CRC_CNTL = common dso_local global i32 0, align 4
@CRTC_CRC_EN = common dso_local global i32 0, align 4
@CRTC_CRC0_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timing_generator*, %struct.crc_params*)* @dce120_configure_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce120_configure_crc(%struct.timing_generator* %0, %struct.crc_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.crc_params*, align 8
  %6 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store %struct.crc_params* %1, %struct.crc_params** %5, align 8
  %7 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %8 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %7)
  store %struct.dce110_timing_generator* %8, %struct.dce110_timing_generator** %6, align 8
  %9 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %10 = call i32 @dce120_is_tg_enabled(%struct.timing_generator* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

13:                                               ; preds = %2
  %14 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %15 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @mmCRTC0_CRTC_CRC_CNTL, align 4
  %18 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %6, align 8
  %19 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dm_write_reg_soc15(i32 %16, i32 %17, i32 %21, i32 0)
  %23 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %24 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %83

28:                                               ; preds = %13
  %29 = load i32, i32* @CRTC0_CRTC_CRC0_WINDOWA_X_CONTROL, align 4
  %30 = load i32, i32* @CRTC_CRC0_WINDOWA_X_START, align 4
  %31 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %32 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CRTC_CRC0_WINDOWA_X_END, align 4
  %35 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %36 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @CRTC_REG_UPDATE_2(i32 %29, i32 %30, i32 %33, i32 %34, i32 %37)
  %39 = load i32, i32* @CRTC0_CRTC_CRC0_WINDOWA_Y_CONTROL, align 4
  %40 = load i32, i32* @CRTC_CRC0_WINDOWA_Y_START, align 4
  %41 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %42 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CRTC_CRC0_WINDOWA_Y_END, align 4
  %45 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %46 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CRTC_REG_UPDATE_2(i32 %39, i32 %40, i32 %43, i32 %44, i32 %47)
  %49 = load i32, i32* @CRTC0_CRTC_CRC0_WINDOWB_X_CONTROL, align 4
  %50 = load i32, i32* @CRTC_CRC0_WINDOWB_X_START, align 4
  %51 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %52 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CRTC_CRC0_WINDOWB_X_END, align 4
  %55 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %56 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @CRTC_REG_UPDATE_2(i32 %49, i32 %50, i32 %53, i32 %54, i32 %57)
  %59 = load i32, i32* @CRTC0_CRTC_CRC0_WINDOWB_Y_CONTROL, align 4
  %60 = load i32, i32* @CRTC_CRC0_WINDOWB_Y_START, align 4
  %61 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %62 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CRTC_CRC0_WINDOWB_Y_END, align 4
  %65 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %66 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @CRTC_REG_UPDATE_2(i32 %59, i32 %60, i32 %63, i32 %64, i32 %67)
  %69 = load i32, i32* @CRTC0_CRTC_CRC_CNTL, align 4
  %70 = load i32, i32* @CRTC_CRC_EN, align 4
  %71 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %72 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load i32, i32* @CRTC_CRC0_SELECT, align 4
  %78 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %79 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CRTC_CRC_EN, align 4
  %82 = call i32 @CRTC_REG_UPDATE_3(i32 %69, i32 %70, i32 %76, i32 %77, i32 %80, i32 %81, i32 1)
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %28, %27, %12
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dce120_is_tg_enabled(%struct.timing_generator*) #1

declare dso_local i32 @dm_write_reg_soc15(i32, i32, i32, i32) #1

declare dso_local i32 @CRTC_REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CRTC_REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
