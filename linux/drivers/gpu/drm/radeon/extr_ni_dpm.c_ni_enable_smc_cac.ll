; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_enable_smc_cac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_enable_smc_cac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32 }
%struct.ni_power_info = type { i32, i32, i64 }

@PPSMC_MSG_CollectCAC_PowerCorreln = common dso_local global i32 0, align 4
@PPSMC_CACLongTermAvgEnable = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@PPSMC_MSG_EnableCac = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_DisableCac = common dso_local global i32 0, align 4
@PPSMC_CACLongTermAvgDisable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, i32)* @ni_enable_smc_cac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_enable_smc_cac(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_power_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %10)
  store %struct.ni_power_info* %11, %struct.ni_power_info** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %13 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %95

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @r600_is_uvd_state(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %65, label %28

28:                                               ; preds = %19
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = load i32, i32* @PPSMC_MSG_CollectCAC_PowerCorreln, align 4
  %31 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %29, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %33 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %38 = load i32, i32* @PPSMC_CACLongTermAvgEnable, align 4
  %39 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %37, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* @PPSMC_Result_OK, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %45 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %49 = load i32, i32* @PPSMC_MSG_EnableCac, align 4
  %50 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %48, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* @PPSMC_Result_OK, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %47
  %58 = load i64, i64* @PPSMC_Result_OK, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %64 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %19
  br label %94

66:                                               ; preds = %16
  %67 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %68 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %73 = load i32, i32* @PPSMC_MSG_DisableCac, align 4
  %74 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %72, i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %76 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %78 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %83 = load i32, i32* @PPSMC_CACLongTermAvgDisable, align 4
  %84 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %82, i32 %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* @PPSMC_Result_OK, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %90 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %81
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92, %66
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94, %3
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @r600_is_uvd_state(i32, i32) #1

declare dso_local i64 @rv770_send_msg_to_smc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
