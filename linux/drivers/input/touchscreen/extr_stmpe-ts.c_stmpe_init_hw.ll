; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmpe-ts.c_stmpe_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmpe-ts.c_stmpe_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe_touch = type { i32, i32, i32, i32, i32, %struct.device*, %struct.stmpe* }
%struct.device = type { i32 }
%struct.stmpe = type { i32 }

@STMPE_BLOCK_TOUCHSCREEN = common dso_local global i32 0, align 4
@STMPE_BLOCK_ADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not enable clock for ADC and TS\0A\00", align 1
@STMPE_REG_TSC_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not config touch\0A\00", align 1
@STMPE_REG_TSC_FRACTION_Z = common dso_local global i32 0, align 4
@STMPE_REG_TSC_I_DRIVE = common dso_local global i32 0, align 4
@STMPE_REG_FIFO_TH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Could not set FIFO\0A\00", align 1
@STMPE_REG_TSC_CTRL = common dso_local global i32 0, align 4
@OP_MOD_XYZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Could not set mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe_touch*)* @stmpe_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_init_hw(%struct.stmpe_touch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmpe_touch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmpe*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.stmpe_touch* %0, %struct.stmpe_touch** %3, align 8
  %9 = load %struct.stmpe_touch*, %struct.stmpe_touch** %3, align 8
  %10 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %9, i32 0, i32 6
  %11 = load %struct.stmpe*, %struct.stmpe** %10, align 8
  store %struct.stmpe* %11, %struct.stmpe** %7, align 8
  %12 = load %struct.stmpe_touch*, %struct.stmpe_touch** %3, align 8
  %13 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %12, i32 0, i32 5
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %16 = load i32, i32* @STMPE_BLOCK_TOUCHSCREEN, align 4
  %17 = load i32, i32* @STMPE_BLOCK_ADC, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @stmpe_enable(%struct.stmpe* %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %123

26:                                               ; preds = %1
  %27 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %28 = call i32 @stmpe811_adc_common_init(%struct.stmpe* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %33 = load i32, i32* @STMPE_BLOCK_TOUCHSCREEN, align 4
  %34 = load i32, i32* @STMPE_BLOCK_ADC, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @stmpe_disable(%struct.stmpe* %32, i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %123

38:                                               ; preds = %26
  %39 = load %struct.stmpe_touch*, %struct.stmpe_touch** %3, align 8
  %40 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @STMPE_AVE_CTRL(i32 %41)
  %43 = load %struct.stmpe_touch*, %struct.stmpe_touch** %3, align 8
  %44 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @STMPE_DET_DELAY(i32 %45)
  %47 = or i32 %42, %46
  %48 = load %struct.stmpe_touch*, %struct.stmpe_touch** %3, align 8
  %49 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @STMPE_SETTLING(i32 %50)
  %52 = or i32 %47, %51
  store i32 %52, i32* %5, align 4
  %53 = call i32 @STMPE_AVE_CTRL(i32 255)
  %54 = call i32 @STMPE_DET_DELAY(i32 255)
  %55 = or i32 %53, %54
  %56 = call i32 @STMPE_SETTLING(i32 255)
  %57 = or i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %59 = load i32, i32* @STMPE_REG_TSC_CFG, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @stmpe_set_bits(%struct.stmpe* %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %38
  %66 = load %struct.device*, %struct.device** %8, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %123

69:                                               ; preds = %38
  %70 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %71 = load i32, i32* @STMPE_REG_TSC_FRACTION_Z, align 4
  %72 = call i32 @STMPE_FRACTION_Z(i32 255)
  %73 = load %struct.stmpe_touch*, %struct.stmpe_touch** %3, align 8
  %74 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @STMPE_FRACTION_Z(i32 %75)
  %77 = call i32 @stmpe_set_bits(%struct.stmpe* %70, i32 %71, i32 %72, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load %struct.device*, %struct.device** %8, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %123

84:                                               ; preds = %69
  %85 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %86 = load i32, i32* @STMPE_REG_TSC_I_DRIVE, align 4
  %87 = call i32 @STMPE_I_DRIVE(i32 255)
  %88 = load %struct.stmpe_touch*, %struct.stmpe_touch** %3, align 8
  %89 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @STMPE_I_DRIVE(i32 %90)
  %92 = call i32 @stmpe_set_bits(%struct.stmpe* %85, i32 %86, i32 %87, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = load %struct.device*, %struct.device** %8, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %123

99:                                               ; preds = %84
  %100 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %101 = load i32, i32* @STMPE_REG_FIFO_TH, align 4
  %102 = call i32 @stmpe_reg_write(%struct.stmpe* %100, i32 %101, i32 1)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.device*, %struct.device** %8, align 8
  %107 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %123

109:                                              ; preds = %99
  %110 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %111 = load i32, i32* @STMPE_REG_TSC_CTRL, align 4
  %112 = call i32 @STMPE_OP_MODE(i32 255)
  %113 = load i32, i32* @OP_MOD_XYZ, align 4
  %114 = call i32 @STMPE_OP_MODE(i32 %113)
  %115 = call i32 @stmpe_set_bits(%struct.stmpe* %110, i32 %111, i32 %112, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load %struct.device*, %struct.device** %8, align 8
  %120 = call i32 @dev_err(%struct.device* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %123

122:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %118, %105, %95, %80, %65, %31, %22
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @stmpe_enable(%struct.stmpe*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @stmpe811_adc_common_init(%struct.stmpe*) #1

declare dso_local i32 @stmpe_disable(%struct.stmpe*, i32) #1

declare dso_local i32 @STMPE_AVE_CTRL(i32) #1

declare dso_local i32 @STMPE_DET_DELAY(i32) #1

declare dso_local i32 @STMPE_SETTLING(i32) #1

declare dso_local i32 @stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

declare dso_local i32 @STMPE_FRACTION_Z(i32) #1

declare dso_local i32 @STMPE_I_DRIVE(i32) #1

declare dso_local i32 @stmpe_reg_write(%struct.stmpe*, i32, i32) #1

declare dso_local i32 @STMPE_OP_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
