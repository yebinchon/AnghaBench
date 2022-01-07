; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_enable_smc_cac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_enable_smc_cac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.ni_power_info = type { i32, i32, i64 }
%struct.si_power_info = type { i64 }

@PPSMC_CACLongTermAvgEnable = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@PPSMC_MSG_EnableCac = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_EnableDTE = common dso_local global i32 0, align 4
@PPSMC_MSG_DisableDTE = common dso_local global i32 0, align 4
@PPSMC_MSG_DisableCac = common dso_local global i32 0, align 4
@PPSMC_CACLongTermAvgDisable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, i32)* @si_enable_smc_cac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_enable_smc_cac(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_power_info*, align 8
  %8 = alloca %struct.si_power_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %11)
  store %struct.ni_power_info* %12, %struct.ni_power_info** %7, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %13)
  store %struct.si_power_info* %14, %struct.si_power_info** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %16 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %107

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %19
  %23 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %25 = call i32 @si_should_disable_uvd_powertune(%struct.radeon_device* %23, %struct.radeon_ps* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %75, label %27

27:                                               ; preds = %22
  %28 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %29 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = load i32, i32* @PPSMC_CACLongTermAvgEnable, align 4
  %35 = call i64 @si_send_msg_to_smc(%struct.radeon_device* %33, i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @PPSMC_Result_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %41 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %32
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %45 = load i32, i32* @PPSMC_MSG_EnableCac, align 4
  %46 = call i64 @si_send_msg_to_smc(%struct.radeon_device* %44, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @PPSMC_Result_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %54 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %58

55:                                               ; preds = %43
  %56 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %57 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.si_power_info*, %struct.si_power_info** %8, align 8
  %60 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %65 = load i32, i32* @PPSMC_MSG_EnableDTE, align 4
  %66 = call i64 @si_send_msg_to_smc(%struct.radeon_device* %64, i32 %65)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @PPSMC_Result_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %58
  br label %75

75:                                               ; preds = %74, %22
  br label %106

76:                                               ; preds = %19
  %77 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %78 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load %struct.si_power_info*, %struct.si_power_info** %8, align 8
  %83 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %88 = load i32, i32* @PPSMC_MSG_DisableDTE, align 4
  %89 = call i64 @si_send_msg_to_smc(%struct.radeon_device* %87, i32 %88)
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %92 = load i32, i32* @PPSMC_MSG_DisableCac, align 4
  %93 = call i64 @si_send_msg_to_smc(%struct.radeon_device* %91, i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %95 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %97 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %102 = load i32, i32* @PPSMC_CACLongTermAvgDisable, align 4
  %103 = call i64 @si_send_msg_to_smc(%struct.radeon_device* %101, i32 %102)
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %100, %90
  br label %105

105:                                              ; preds = %104, %76
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106, %3
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_should_disable_uvd_powertune(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i64 @si_send_msg_to_smc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
