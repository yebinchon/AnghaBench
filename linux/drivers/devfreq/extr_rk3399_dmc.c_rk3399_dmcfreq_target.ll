; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_rk3399_dmcfreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_rk3399_dmcfreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rk3399_dmcfreq = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.dev_pm_opp = type { i32 }
%struct.arm_smccc_res = type { i32 }

@ROCKCHIP_SIP_DRAM_FREQ = common dso_local global i32 0, align 4
@ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot set voltage %lu uV\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot set frequency %lu (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Got wrong frequency, Request %lu, Current %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*, i32)* @rk3399_dmcfreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3399_dmcfreq_target(%struct.device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rk3399_dmcfreq*, align 8
  %9 = alloca %struct.dev_pm_opp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.arm_smccc_res, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.rk3399_dmcfreq* @dev_get_drvdata(%struct.device* %16)
  store %struct.rk3399_dmcfreq* %17, %struct.rk3399_dmcfreq** %8, align 8
  %18 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %19 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device* %21, i64* %22, i32 %23)
  store %struct.dev_pm_opp* %24, %struct.dev_pm_opp** %9, align 8
  %25 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %26 = call i64 @IS_ERR(%struct.dev_pm_opp* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %30 = call i32 @PTR_ERR(%struct.dev_pm_opp* %29)
  store i32 %30, i32* %4, align 4
  br label %165

31:                                               ; preds = %3
  %32 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %33 = call i64 @dev_pm_opp_get_freq(%struct.dev_pm_opp* %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %35 = call i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %37 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %36)
  %38 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %39 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %165

44:                                               ; preds = %31
  %45 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %46 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %45, i32 0, i32 3
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %50 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp uge i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 1, i32* %14, align 4
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* @ROCKCHIP_SIP_DRAM_FREQ, align 4
  %56 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %57 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %60 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @arm_smccc_smc(i32 %55, i32 %58, i32 %61, i32 %62, i32 %63, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %13)
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %54
  %69 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %70 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @regulator_set_voltage(i32 %71, i64 %72, i64 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %79)
  br label %160

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %54
  %83 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %84 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @clk_set_rate(i32 %85, i64 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %82
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %92, i32 %93)
  %95 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %96 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %99 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %102 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @regulator_set_voltage(i32 %97, i64 %100, i64 %103)
  br label %160

105:                                              ; preds = %82
  %106 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %107 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @clk_get_rate(i32 %108)
  %110 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %111 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %113 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %105
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %121 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %119, i64 %122)
  %124 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %125 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %128 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %131 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @regulator_set_voltage(i32 %126, i64 %129, i64 %132)
  br label %160

134:                                              ; preds = %105
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %12, align 8
  %137 = icmp ugt i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %140 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @regulator_set_voltage(i32 %141, i64 %142, i64 %143)
  store i32 %144, i32* %15, align 4
  br label %145

145:                                              ; preds = %138, %134
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %156 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %159 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %153, %117, %90, %77
  %161 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %162 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %161, i32 0, i32 3
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %160, %43, %28
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.rk3399_dmcfreq* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device*, i64*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i64 @dev_pm_opp_get_freq(%struct.dev_pm_opp*) #1

declare dso_local i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @arm_smccc_smc(i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*) #1

declare dso_local i32 @regulator_set_voltage(i32, i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
