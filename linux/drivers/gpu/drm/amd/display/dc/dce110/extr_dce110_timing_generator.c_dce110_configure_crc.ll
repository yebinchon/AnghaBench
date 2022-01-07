; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_configure_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_configure_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.crc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_CRC_CNTL = common dso_local global i32 0, align 4
@mmCRTC_CRC0_WINDOWA_X_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_X_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_X_START = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_X_END = common dso_local global i32 0, align 4
@mmCRTC_CRC0_WINDOWA_Y_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_Y_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_Y_START = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWA_Y_END = common dso_local global i32 0, align 4
@mmCRTC_CRC0_WINDOWB_X_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_X_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_X_START = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_X_END = common dso_local global i32 0, align 4
@mmCRTC_CRC0_WINDOWB_Y_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_Y_CONTROL = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_Y_START = common dso_local global i32 0, align 4
@CRTC_CRC0_WINDOWB_Y_END = common dso_local global i32 0, align 4
@CRTC_CRC_CNTL = common dso_local global i32 0, align 4
@CRTC_CRC_CONT_EN = common dso_local global i32 0, align 4
@CRTC_CRC0_SELECT = common dso_local global i32 0, align 4
@CRTC_CRC_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_configure_crc(%struct.timing_generator* %0, %struct.crc_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.crc_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store %struct.crc_params* %1, %struct.crc_params** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %11 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %10)
  store %struct.dce110_timing_generator* %11, %struct.dce110_timing_generator** %9, align 8
  %12 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %13 = call i32 @dce110_is_tg_enabled(%struct.timing_generator* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %145

16:                                               ; preds = %2
  %17 = load i32, i32* @mmCRTC_CRC_CNTL, align 4
  %18 = call i64 @CRTC_REG(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %20 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @dm_write_reg(i32 %21, i64 %22, i64 0)
  %24 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %25 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %145

29:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  %30 = load i32, i32* @mmCRTC_CRC0_WINDOWA_X_CONTROL, align 4
  %31 = call i64 @CRTC_REG(i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %34 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CRTC_CRC0_WINDOWA_X_CONTROL, align 4
  %37 = load i32, i32* @CRTC_CRC0_WINDOWA_X_START, align 4
  %38 = call i32 @set_reg_field_value(i64 %32, i32 %35, i32 %36, i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %41 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CRTC_CRC0_WINDOWA_X_CONTROL, align 4
  %44 = load i32, i32* @CRTC_CRC0_WINDOWA_X_END, align 4
  %45 = call i32 @set_reg_field_value(i64 %39, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %47 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @dm_write_reg(i32 %48, i64 %49, i64 %50)
  store i64 0, i64* %8, align 8
  %52 = load i32, i32* @mmCRTC_CRC0_WINDOWA_Y_CONTROL, align 4
  %53 = call i64 @CRTC_REG(i32 %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %56 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CRTC_CRC0_WINDOWA_Y_CONTROL, align 4
  %59 = load i32, i32* @CRTC_CRC0_WINDOWA_Y_START, align 4
  %60 = call i32 @set_reg_field_value(i64 %54, i32 %57, i32 %58, i32 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %63 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CRTC_CRC0_WINDOWA_Y_CONTROL, align 4
  %66 = load i32, i32* @CRTC_CRC0_WINDOWA_Y_END, align 4
  %67 = call i32 @set_reg_field_value(i64 %61, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %69 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @dm_write_reg(i32 %70, i64 %71, i64 %72)
  store i64 0, i64* %8, align 8
  %74 = load i32, i32* @mmCRTC_CRC0_WINDOWB_X_CONTROL, align 4
  %75 = call i64 @CRTC_REG(i32 %74)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %78 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CRTC_CRC0_WINDOWB_X_CONTROL, align 4
  %81 = load i32, i32* @CRTC_CRC0_WINDOWB_X_START, align 4
  %82 = call i32 @set_reg_field_value(i64 %76, i32 %79, i32 %80, i32 %81)
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %85 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CRTC_CRC0_WINDOWB_X_CONTROL, align 4
  %88 = load i32, i32* @CRTC_CRC0_WINDOWB_X_END, align 4
  %89 = call i32 @set_reg_field_value(i64 %83, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %91 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @dm_write_reg(i32 %92, i64 %93, i64 %94)
  store i64 0, i64* %8, align 8
  %96 = load i32, i32* @mmCRTC_CRC0_WINDOWB_Y_CONTROL, align 4
  %97 = call i64 @CRTC_REG(i32 %96)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %100 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CRTC_CRC0_WINDOWB_Y_CONTROL, align 4
  %103 = load i32, i32* @CRTC_CRC0_WINDOWB_Y_START, align 4
  %104 = call i32 @set_reg_field_value(i64 %98, i32 %101, i32 %102, i32 %103)
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %107 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CRTC_CRC0_WINDOWB_Y_CONTROL, align 4
  %110 = load i32, i32* @CRTC_CRC0_WINDOWB_Y_END, align 4
  %111 = call i32 @set_reg_field_value(i64 %105, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %113 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @dm_write_reg(i32 %114, i64 %115, i64 %116)
  store i64 0, i64* %8, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %120 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %119, i32 0, i32 9
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 0
  %125 = load i32, i32* @CRTC_CRC_CNTL, align 4
  %126 = load i32, i32* @CRTC_CRC_CONT_EN, align 4
  %127 = call i32 @set_reg_field_value(i64 %118, i32 %124, i32 %125, i32 %126)
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %130 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @CRTC_CRC_CNTL, align 4
  %133 = load i32, i32* @CRTC_CRC0_SELECT, align 4
  %134 = call i32 @set_reg_field_value(i64 %128, i32 %131, i32 %132, i32 %133)
  %135 = load i64, i64* %8, align 8
  %136 = load i32, i32* @CRTC_CRC_CNTL, align 4
  %137 = load i32, i32* @CRTC_CRC_EN, align 4
  %138 = call i32 @set_reg_field_value(i64 %135, i32 1, i32 %136, i32 %137)
  %139 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %140 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i32 @dm_write_reg(i32 %141, i64 %142, i64 %143)
  store i32 1, i32* %3, align 4
  br label %145

145:                                              ; preds = %29, %28, %15
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dce110_is_tg_enabled(%struct.timing_generator*) #1

declare dso_local i64 @CRTC_REG(i32) #1

declare dso_local i32 @dm_write_reg(i32, i64, i64) #1

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
