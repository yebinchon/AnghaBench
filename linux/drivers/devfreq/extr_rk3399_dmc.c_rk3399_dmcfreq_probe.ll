; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_rk3399_dmcfreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_rk3399_dmcfreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.arm_smccc_res = type { i64 }
%struct.rk3399_dmcfreq = type { i32, i32, %struct.device*, %struct.dev_pm_opp*, %struct.TYPE_7__, i32, i32, %struct.dev_pm_opp*, %struct.TYPE_6__, i32, %struct.dev_pm_opp*, %struct.dev_pm_opp*, %struct.dev_pm_opp*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_opp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"center\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot get the regulator \22center\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dmc_clk\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot get the clk dmc_clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to enable devfreq-event devices\0A\00", align 1
@ROCKCHIP_SIP_DRAM_FREQ = common dso_local global i32 0, align 4
@ROCKCHIP_SIP_CONFIG_DRAM_SET_PARAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to set dram param: %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"rockchip,pmu\00", align 1
@RK3399_PMUGRF_OS_REG2 = common dso_local global i32 0, align 4
@RK3399_PMUGRF_DDRTYPE_SHIFT = common dso_local global i32 0, align 4
@RK3399_PMUGRF_DDRTYPE_MASK = common dso_local global i32 0, align 4
@ROCKCHIP_SIP_CONFIG_DRAM_INIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Invalid operating-points in device tree.\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"upthreshold\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"downdifferential\00", align 1
@rk3399_devfreq_dmc_profile = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@DEVFREQ_GOV_SIMPLE_ONDEMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk3399_dmcfreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3399_dmcfreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arm_smccc_res, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.rk3399_dmcfreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dev_pm_opp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %6, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.rk3399_dmcfreq* @devm_kzalloc(%struct.device* %22, i32 120, i32 %23)
  store %struct.rk3399_dmcfreq* %24, %struct.rk3399_dmcfreq** %8, align 8
  %25 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %26 = icmp ne %struct.rk3399_dmcfreq* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %329

30:                                               ; preds = %1
  %31 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %32 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %31, i32 0, i32 13
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call %struct.dev_pm_opp* @devm_regulator_get(%struct.device* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %37 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %36, i32 0, i32 12
  store %struct.dev_pm_opp* %35, %struct.dev_pm_opp** %37, align 8
  %38 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %39 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %38, i32 0, i32 12
  %40 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %39, align 8
  %41 = call i64 @IS_ERR(%struct.dev_pm_opp* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %30
  %44 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %45 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %44, i32 0, i32 12
  %46 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.dev_pm_opp* %46)
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EPROBE_DEFER, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %329

54:                                               ; preds = %43
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %58 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %57, i32 0, i32 12
  %59 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %58, align 8
  %60 = call i32 @PTR_ERR(%struct.dev_pm_opp* %59)
  store i32 %60, i32* %2, align 4
  br label %329

61:                                               ; preds = %30
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call %struct.dev_pm_opp* @devm_clk_get(%struct.device* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %65 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %64, i32 0, i32 7
  store %struct.dev_pm_opp* %63, %struct.dev_pm_opp** %65, align 8
  %66 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %67 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %66, i32 0, i32 7
  %68 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %67, align 8
  %69 = call i64 @IS_ERR(%struct.dev_pm_opp* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %61
  %72 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %73 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %72, i32 0, i32 7
  %74 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.dev_pm_opp* %74)
  %76 = load i32, i32* @EPROBE_DEFER, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @EPROBE_DEFER, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %329

82:                                               ; preds = %71
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %86 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %85, i32 0, i32 7
  %87 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.dev_pm_opp* %87)
  store i32 %88, i32* %2, align 4
  br label %329

89:                                               ; preds = %61
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = call %struct.dev_pm_opp* @devfreq_event_get_edev_by_phandle(%struct.device* %90, i32 0)
  %92 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %93 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %92, i32 0, i32 11
  store %struct.dev_pm_opp* %91, %struct.dev_pm_opp** %93, align 8
  %94 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %95 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %94, i32 0, i32 11
  %96 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %95, align 8
  %97 = call i64 @IS_ERR(%struct.dev_pm_opp* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, i32* @EPROBE_DEFER, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %329

102:                                              ; preds = %89
  %103 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %104 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %103, i32 0, i32 11
  %105 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %104, align 8
  %106 = call i32 @devfreq_event_enable_edev(%struct.dev_pm_opp* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %2, align 4
  br label %329

113:                                              ; preds = %102
  %114 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %115 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %114, i32 0, i32 8
  %116 = load %struct.device_node*, %struct.device_node** %6, align 8
  %117 = call i32 @of_get_ddr_timings(%struct.TYPE_6__* %115, %struct.device_node* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %150, label %119

119:                                              ; preds = %113
  %120 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %121 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 8
  store i32* %122, i32** %12, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %146, %119
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %149

127:                                              ; preds = %123
  %128 = load i32, i32* @ROCKCHIP_SIP_DRAM_FREQ, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %12, align 8
  %131 = load i32, i32* %129, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @ROCKCHIP_SIP_CONFIG_DRAM_SET_PARAM, align 4
  %134 = call i32 @arm_smccc_smc(i32 %128, i32 %131, i32 %132, i32 %133, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %4)
  %135 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %4, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %127
  %139 = load %struct.device*, %struct.device** %5, align 8
  %140 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %4, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %329

145:                                              ; preds = %127
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %123

149:                                              ; preds = %123
  br label %150

150:                                              ; preds = %149, %113
  %151 = load %struct.device_node*, %struct.device_node** %6, align 8
  %152 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store %struct.device_node* %152, %struct.device_node** %7, align 8
  %153 = load %struct.device_node*, %struct.device_node** %7, align 8
  %154 = icmp ne %struct.device_node* %153, null
  br i1 %154, label %155, label %171

155:                                              ; preds = %150
  %156 = load %struct.device_node*, %struct.device_node** %7, align 8
  %157 = call %struct.dev_pm_opp* @syscon_node_to_regmap(%struct.device_node* %156)
  %158 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %159 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %158, i32 0, i32 10
  store %struct.dev_pm_opp* %157, %struct.dev_pm_opp** %159, align 8
  %160 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %161 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %160, i32 0, i32 10
  %162 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %161, align 8
  %163 = call i64 @IS_ERR(%struct.dev_pm_opp* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %155
  %166 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %167 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %166, i32 0, i32 10
  %168 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %167, align 8
  %169 = call i32 @PTR_ERR(%struct.dev_pm_opp* %168)
  store i32 %169, i32* %2, align 4
  br label %329

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170, %150
  %172 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %173 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %172, i32 0, i32 10
  %174 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %173, align 8
  %175 = load i32, i32* @RK3399_PMUGRF_OS_REG2, align 4
  %176 = call i32 @regmap_read(%struct.dev_pm_opp* %174, i32 %175, i32* %15)
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* @RK3399_PMUGRF_DDRTYPE_SHIFT, align 4
  %179 = ashr i32 %177, %178
  %180 = load i32, i32* @RK3399_PMUGRF_DDRTYPE_MASK, align 4
  %181 = and i32 %179, %180
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  switch i32 %182, label %204 [
    i32 130, label %183
    i32 129, label %190
    i32 128, label %197
  ]

183:                                              ; preds = %171
  %184 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %185 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %184, i32 0, i32 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %189 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %188, i32 0, i32 9
  store i32 %187, i32* %189, align 4
  br label %207

190:                                              ; preds = %171
  %191 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %192 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %191, i32 0, i32 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %196 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %195, i32 0, i32 9
  store i32 %194, i32* %196, align 4
  br label %207

197:                                              ; preds = %171
  %198 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %199 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %198, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %203 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %202, i32 0, i32 9
  store i32 %201, i32* %203, align 4
  br label %207

204:                                              ; preds = %171
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %2, align 4
  br label %329

207:                                              ; preds = %197, %190, %183
  %208 = load i32, i32* @ROCKCHIP_SIP_DRAM_FREQ, align 4
  %209 = load i32, i32* @ROCKCHIP_SIP_CONFIG_DRAM_INIT, align 4
  %210 = call i32 @arm_smccc_smc(i32 %208, i32 0, i32 0, i32 %209, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %4)
  %211 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %212 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %211, i32 0, i32 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, 255
  %216 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %217 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %216, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, 255
  %221 = shl i32 %220, 8
  %222 = or i32 %215, %221
  %223 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %224 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %223, i32 0, i32 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, 65535
  %228 = shl i32 %227, 16
  %229 = or i32 %222, %228
  %230 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %231 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %233 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %232, i32 0, i32 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, 4095
  %237 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %238 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %237, i32 0, i32 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, 4095
  %242 = shl i32 %241, 16
  %243 = or i32 %236, %242
  %244 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %245 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.device*, %struct.device** %5, align 8
  %247 = call i64 @dev_pm_opp_of_add_table(%struct.device* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %207
  %250 = load %struct.device*, %struct.device** %5, align 8
  %251 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %250, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %2, align 4
  br label %329

254:                                              ; preds = %207
  %255 = load %struct.device_node*, %struct.device_node** %6, align 8
  %256 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %257 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = call i32 @of_property_read_u32(%struct.device_node* %255, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %258)
  %260 = load %struct.device_node*, %struct.device_node** %6, align 8
  %261 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %262 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = call i32 @of_property_read_u32(%struct.device_node* %260, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %263)
  %265 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %266 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %265, i32 0, i32 7
  %267 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %266, align 8
  %268 = call i32 @clk_get_rate(%struct.dev_pm_opp* %267)
  %269 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %270 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %269, i32 0, i32 5
  store i32 %268, i32* %270, align 8
  %271 = load %struct.device*, %struct.device** %5, align 8
  %272 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %273 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %272, i32 0, i32 5
  %274 = call %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device* %271, i32* %273, i32 0)
  store %struct.dev_pm_opp* %274, %struct.dev_pm_opp** %13, align 8
  %275 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %13, align 8
  %276 = call i64 @IS_ERR(%struct.dev_pm_opp* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %254
  %279 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %13, align 8
  %280 = call i32 @PTR_ERR(%struct.dev_pm_opp* %279)
  store i32 %280, i32* %9, align 4
  br label %324

281:                                              ; preds = %254
  %282 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %13, align 8
  %283 = call i32 @dev_pm_opp_get_freq(%struct.dev_pm_opp* %282)
  %284 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %285 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 8
  %286 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %13, align 8
  %287 = call i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %286)
  %288 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %289 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %288, i32 0, i32 6
  store i32 %287, i32* %289, align 4
  %290 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %13, align 8
  %291 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %290)
  %292 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %293 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  store i32 %294, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rk3399_devfreq_dmc_profile, i32 0, i32 0), align 4
  %295 = load %struct.device*, %struct.device** %5, align 8
  %296 = load i32, i32* @DEVFREQ_GOV_SIMPLE_ONDEMAND, align 4
  %297 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %298 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %297, i32 0, i32 4
  %299 = call %struct.dev_pm_opp* @devm_devfreq_add_device(%struct.device* %295, %struct.TYPE_5__* @rk3399_devfreq_dmc_profile, i32 %296, %struct.TYPE_7__* %298)
  %300 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %301 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %300, i32 0, i32 3
  store %struct.dev_pm_opp* %299, %struct.dev_pm_opp** %301, align 8
  %302 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %303 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %302, i32 0, i32 3
  %304 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %303, align 8
  %305 = call i64 @IS_ERR(%struct.dev_pm_opp* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %281
  %308 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %309 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %308, i32 0, i32 3
  %310 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %309, align 8
  %311 = call i32 @PTR_ERR(%struct.dev_pm_opp* %310)
  store i32 %311, i32* %9, align 4
  br label %324

312:                                              ; preds = %281
  %313 = load %struct.device*, %struct.device** %5, align 8
  %314 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %315 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %314, i32 0, i32 3
  %316 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %315, align 8
  %317 = call i32 @devm_devfreq_register_opp_notifier(%struct.device* %313, %struct.dev_pm_opp* %316)
  %318 = load %struct.device*, %struct.device** %5, align 8
  %319 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %320 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %319, i32 0, i32 2
  store %struct.device* %318, %struct.device** %320, align 8
  %321 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %322 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %8, align 8
  %323 = call i32 @platform_set_drvdata(%struct.platform_device* %321, %struct.rk3399_dmcfreq* %322)
  store i32 0, i32* %2, align 4
  br label %329

324:                                              ; preds = %307, %278
  %325 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %326 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %325, i32 0, i32 0
  %327 = call i32 @dev_pm_opp_of_remove_table(%struct.device* %326)
  %328 = load i32, i32* %9, align 4
  store i32 %328, i32* %2, align 4
  br label %329

329:                                              ; preds = %324, %312, %249, %204, %165, %138, %109, %99, %82, %79, %54, %51, %27
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local %struct.rk3399_dmcfreq* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.dev_pm_opp* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.dev_pm_opp* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local %struct.dev_pm_opp* @devfreq_event_get_edev_by_phandle(%struct.device*, i32) #1

declare dso_local i32 @devfreq_event_enable_edev(%struct.dev_pm_opp*) #1

declare dso_local i32 @of_get_ddr_timings(%struct.TYPE_6__*, %struct.device_node*) #1

declare dso_local i32 @arm_smccc_smc(i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.dev_pm_opp* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @regmap_read(%struct.dev_pm_opp*, i32, i32*) #1

declare dso_local i64 @dev_pm_opp_of_add_table(%struct.device*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @clk_get_rate(%struct.dev_pm_opp*) #1

declare dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device*, i32*, i32) #1

declare dso_local i32 @dev_pm_opp_get_freq(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local %struct.dev_pm_opp* @devm_devfreq_add_device(%struct.device*, %struct.TYPE_5__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @devm_devfreq_register_opp_notifier(%struct.device*, %struct.dev_pm_opp*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rk3399_dmcfreq*) #1

declare dso_local i32 @dev_pm_opp_of_remove_table(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
