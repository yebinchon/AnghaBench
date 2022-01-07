; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { i64, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@AD5758_DIGITAL_DIAG_RESULTS = common dso_local global i32 0, align 4
@AD5758_DAC_CONFIG = common dso_local global i32 0, align 4
@AD5758_DAC_CONFIG_OUT_EN_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*)* @ad5758_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_init(%struct.ad5758_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad5758_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ad5758_state* %0, %struct.ad5758_state** %3, align 8
  %6 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %7 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %6, i32 0, i32 5
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %11 = call i32 @devm_gpiod_get_optional(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %13 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %15 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_ERR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %21 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PTR_ERR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %126

24:                                               ; preds = %1
  %25 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %26 = call i32 @ad5758_crc_disable(%struct.ad5758_state* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %126

31:                                               ; preds = %24
  %32 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %33 = call i32 @ad5758_reset(%struct.ad5758_state* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %126

38:                                               ; preds = %31
  %39 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %40 = call i32 @ad5758_crc_disable(%struct.ad5758_state* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %126

45:                                               ; preds = %38
  %46 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %47 = call i32 @ad5758_calib_mem_refresh(%struct.ad5758_state* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %126

52:                                               ; preds = %45
  %53 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %54 = load i32, i32* @AD5758_DIGITAL_DIAG_RESULTS, align 4
  %55 = call i32 @ad5758_spi_reg_read(%struct.ad5758_state* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %126

60:                                               ; preds = %52
  %61 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %62 = load i32, i32* @AD5758_DIGITAL_DIAG_RESULTS, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ad5758_spi_reg_write(%struct.ad5758_state* %61, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %126

69:                                               ; preds = %60
  %70 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %71 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %72 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ad5758_set_dc_dc_ilim(%struct.ad5758_state* %70, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %126

79:                                               ; preds = %69
  %80 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %81 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %82 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ad5758_set_dc_dc_conv_mode(%struct.ad5758_state* %80, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %126

89:                                               ; preds = %79
  %90 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %91 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %92 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ad5758_set_out_range(%struct.ad5758_state* %90, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %126

100:                                              ; preds = %89
  %101 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %102 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %107 = call i32 @ad5758_slew_rate_config(%struct.ad5758_state* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %126

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %100
  %114 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %115 = call i32 @ad5758_internal_buffers_en(%struct.ad5758_state* %114, i32 1)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %126

120:                                              ; preds = %113
  %121 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %122 = load i32, i32* @AD5758_DAC_CONFIG, align 4
  %123 = load i32, i32* @AD5758_DAC_CONFIG_OUT_EN_MSK, align 4
  %124 = call i32 @AD5758_DAC_CONFIG_OUT_EN_MODE(i32 1)
  %125 = call i32 @ad5758_spi_write_mask(%struct.ad5758_state* %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %120, %118, %110, %98, %87, %77, %67, %58, %50, %43, %36, %29, %19
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ad5758_crc_disable(%struct.ad5758_state*) #1

declare dso_local i32 @ad5758_reset(%struct.ad5758_state*) #1

declare dso_local i32 @ad5758_calib_mem_refresh(%struct.ad5758_state*) #1

declare dso_local i32 @ad5758_spi_reg_read(%struct.ad5758_state*, i32) #1

declare dso_local i32 @ad5758_spi_reg_write(%struct.ad5758_state*, i32, i32) #1

declare dso_local i32 @ad5758_set_dc_dc_ilim(%struct.ad5758_state*, i32) #1

declare dso_local i32 @ad5758_set_dc_dc_conv_mode(%struct.ad5758_state*, i32) #1

declare dso_local i32 @ad5758_set_out_range(%struct.ad5758_state*, i32) #1

declare dso_local i32 @ad5758_slew_rate_config(%struct.ad5758_state*) #1

declare dso_local i32 @ad5758_internal_buffers_en(%struct.ad5758_state*, i32) #1

declare dso_local i32 @ad5758_spi_write_mask(%struct.ad5758_state*, i32, i32, i32) #1

declare dso_local i32 @AD5758_DAC_CONFIG_OUT_EN_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
