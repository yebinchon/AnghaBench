; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_configure_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_configure_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.crc_params = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.optc = type { i32 }

@OTG_CRC_CNTL = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWA_X_CONTROL = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWA_X_START = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWA_X_END = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWA_Y_CONTROL = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWA_Y_START = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWA_Y_END = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWB_X_CONTROL = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWB_X_START = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWB_X_END = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWB_Y_CONTROL = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWB_Y_START = common dso_local global i32 0, align 4
@OTG_CRC0_WINDOWB_Y_END = common dso_local global i32 0, align 4
@OTG_CRC_CONT_EN = common dso_local global i32 0, align 4
@OTG_CRC0_SELECT = common dso_local global i32 0, align 4
@OTG_CRC_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optc1_configure_crc(%struct.timing_generator* %0, %struct.crc_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.crc_params*, align 8
  %6 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store %struct.crc_params* %1, %struct.crc_params** %5, align 8
  %7 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %8 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %7)
  store %struct.optc* %8, %struct.optc** %6, align 8
  %9 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %10 = call i32 @optc1_is_tg_enabled(%struct.timing_generator* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

13:                                               ; preds = %2
  %14 = load i32, i32* @OTG_CRC_CNTL, align 4
  %15 = call i32 @REG_WRITE(i32 %14, i32 0)
  %16 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %17 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %76

21:                                               ; preds = %13
  %22 = load i32, i32* @OTG_CRC0_WINDOWA_X_CONTROL, align 4
  %23 = load i32, i32* @OTG_CRC0_WINDOWA_X_START, align 4
  %24 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %25 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OTG_CRC0_WINDOWA_X_END, align 4
  %28 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %29 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @REG_UPDATE_2(i32 %22, i32 %23, i32 %26, i32 %27, i32 %30)
  %32 = load i32, i32* @OTG_CRC0_WINDOWA_Y_CONTROL, align 4
  %33 = load i32, i32* @OTG_CRC0_WINDOWA_Y_START, align 4
  %34 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %35 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @OTG_CRC0_WINDOWA_Y_END, align 4
  %38 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %39 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @REG_UPDATE_2(i32 %32, i32 %33, i32 %36, i32 %37, i32 %40)
  %42 = load i32, i32* @OTG_CRC0_WINDOWB_X_CONTROL, align 4
  %43 = load i32, i32* @OTG_CRC0_WINDOWB_X_START, align 4
  %44 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %45 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OTG_CRC0_WINDOWB_X_END, align 4
  %48 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %49 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @REG_UPDATE_2(i32 %42, i32 %43, i32 %46, i32 %47, i32 %50)
  %52 = load i32, i32* @OTG_CRC0_WINDOWB_Y_CONTROL, align 4
  %53 = load i32, i32* @OTG_CRC0_WINDOWB_Y_START, align 4
  %54 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %55 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OTG_CRC0_WINDOWB_Y_END, align 4
  %58 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %59 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @REG_UPDATE_2(i32 %52, i32 %53, i32 %56, i32 %57, i32 %60)
  %62 = load i32, i32* @OTG_CRC_CNTL, align 4
  %63 = load i32, i32* @OTG_CRC_CONT_EN, align 4
  %64 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %65 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = load i32, i32* @OTG_CRC0_SELECT, align 4
  %71 = load %struct.crc_params*, %struct.crc_params** %5, align 8
  %72 = getelementptr inbounds %struct.crc_params, %struct.crc_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @OTG_CRC_EN, align 4
  %75 = call i32 @REG_UPDATE_3(i32 %62, i32 %63, i32 %69, i32 %70, i32 %73, i32 %74, i32 1)
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %21, %20, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @optc1_is_tg_enabled(%struct.timing_generator*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
