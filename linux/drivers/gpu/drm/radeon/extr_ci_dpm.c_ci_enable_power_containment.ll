; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_power_containment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_power_containment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_cac_tdp_table* }
%struct.radeon_cac_tdp_table = type { i32 }
%struct.ci_power_info = type { i32, i64, i64, i64, i64 }

@PPSMC_MSG_EnableDTE = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@POWERCONTAINMENT_FEATURE_BAPM = common dso_local global i32 0, align 4
@PPSMC_MSG_TDCLimitEnable = common dso_local global i32 0, align 4
@POWERCONTAINMENT_FEATURE_TDCLimit = common dso_local global i32 0, align 4
@PPSMC_MSG_PkgPwrLimitEnable = common dso_local global i32 0, align 4
@POWERCONTAINMENT_FEATURE_PkgPwrLimit = common dso_local global i32 0, align 4
@PPSMC_MSG_TDCLimitDisable = common dso_local global i32 0, align 4
@PPSMC_MSG_DisableDTE = common dso_local global i32 0, align 4
@PPSMC_MSG_PkgPwrLimitDisable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @ci_enable_power_containment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_enable_power_containment(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ci_power_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_cac_tdp_table*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %10)
  store %struct.ci_power_info* %11, %struct.ci_power_info** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %102

14:                                               ; preds = %2
  %15 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %16 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %18 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %14
  %22 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %23 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = load i32, i32* @PPSMC_MSG_EnableDTE, align 4
  %29 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @PPSMC_Result_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %26
  %37 = load i32, i32* @POWERCONTAINMENT_FEATURE_BAPM, align 4
  %38 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %39 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %33
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %45 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = load i32, i32* @PPSMC_MSG_TDCLimitEnable, align 4
  %51 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %49, i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @PPSMC_Result_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %64

58:                                               ; preds = %48
  %59 = load i32, i32* @POWERCONTAINMENT_FEATURE_TDCLimit, align 4
  %60 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %61 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %55
  br label %65

65:                                               ; preds = %64, %43
  %66 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %67 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %65
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = load i32, i32* @PPSMC_MSG_PkgPwrLimitEnable, align 4
  %73 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %71, i32 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @PPSMC_Result_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %99

80:                                               ; preds = %70
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.radeon_cac_tdp_table*, %struct.radeon_cac_tdp_table** %85, align 8
  store %struct.radeon_cac_tdp_table* %86, %struct.radeon_cac_tdp_table** %8, align 8
  %87 = load %struct.radeon_cac_tdp_table*, %struct.radeon_cac_tdp_table** %8, align 8
  %88 = getelementptr inbounds %struct.radeon_cac_tdp_table, %struct.radeon_cac_tdp_table* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 256
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @POWERCONTAINMENT_FEATURE_PkgPwrLimit, align 4
  %92 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %93 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ci_set_power_limit(%struct.radeon_device* %96, i32 %97)
  br label %99

99:                                               ; preds = %80, %77
  br label %100

100:                                              ; preds = %99, %65
  br label %101

101:                                              ; preds = %100, %14
  br label %149

102:                                              ; preds = %2
  %103 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %104 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %102
  %108 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %109 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %148

112:                                              ; preds = %107
  %113 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %114 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @POWERCONTAINMENT_FEATURE_TDCLimit, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = load i32, i32* @PPSMC_MSG_TDCLimitDisable, align 4
  %122 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %112
  %124 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %125 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @POWERCONTAINMENT_FEATURE_BAPM, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = load i32, i32* @PPSMC_MSG_DisableDTE, align 4
  %133 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %123
  %135 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %136 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @POWERCONTAINMENT_FEATURE_PkgPwrLimit, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = load i32, i32* @PPSMC_MSG_PkgPwrLimitDisable, align 4
  %144 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %134
  %146 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %147 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %107, %102
  br label %149

149:                                              ; preds = %148, %101
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @ci_send_msg_to_smc(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_set_power_limit(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
