; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_dpm_set_uvd_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_dpm_set_uvd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_power_context }
%struct.smu_power_context = type { %struct.smu_power_gate }
%struct.smu_power_gate = type { i32 }

@SMU_FEATURE_VCN_PG_BIT = common dso_local global i32 0, align 4
@SMU_MSG_PowerUpVcn = common dso_local global i32 0, align 4
@SMU_MSG_PowerDownVcn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @navi10_dpm_set_uvd_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_dpm_set_uvd_enable(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_power_context*, align 8
  %7 = alloca %struct.smu_power_gate*, align 8
  %8 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %10 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %9, i32 0, i32 0
  store %struct.smu_power_context* %10, %struct.smu_power_context** %6, align 8
  %11 = load %struct.smu_power_context*, %struct.smu_power_context** %6, align 8
  %12 = getelementptr inbounds %struct.smu_power_context, %struct.smu_power_context* %11, i32 0, i32 0
  store %struct.smu_power_gate* %12, %struct.smu_power_gate** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %17 = load i32, i32* @SMU_FEATURE_VCN_PG_BIT, align 4
  %18 = call i64 @smu_feature_is_enabled(%struct.smu_context* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %22 = load i32, i32* @SMU_MSG_PowerUpVcn, align 4
  %23 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %21, i32 %22, i32 1)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %15
  %30 = load %struct.smu_power_gate*, %struct.smu_power_gate** %7, align 8
  %31 = getelementptr inbounds %struct.smu_power_gate, %struct.smu_power_gate* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %34 = load i32, i32* @SMU_FEATURE_VCN_PG_BIT, align 4
  %35 = call i64 @smu_feature_is_enabled(%struct.smu_context* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %39 = load i32, i32* @SMU_MSG_PowerDownVcn, align 4
  %40 = call i32 @smu_send_smc_msg(%struct.smu_context* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.smu_power_gate*, %struct.smu_power_gate** %7, align 8
  %48 = getelementptr inbounds %struct.smu_power_gate, %struct.smu_power_gate* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %29
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %43, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @smu_send_smc_msg(%struct.smu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
