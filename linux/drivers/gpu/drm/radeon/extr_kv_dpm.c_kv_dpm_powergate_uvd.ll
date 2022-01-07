; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_powergate_uvd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_powergate_uvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.kv_power_info = type { i32, i64 }

@RADEON_CG_BLOCK_UVD = common dso_local global i32 0, align 4
@PPSMC_MSG_UVDPowerOFF = common dso_local global i32 0, align 4
@PPSMC_MSG_UVDPowerON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kv_dpm_powergate_uvd(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kv_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %6)
  store %struct.kv_power_info* %7, %struct.kv_power_info** %5, align 8
  %8 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %9 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %64

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %17 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %22 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call i32 @uvd_v1_0_stop(%struct.radeon_device* %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load i32, i32* @RADEON_CG_BLOCK_UVD, align 4
  %30 = call i32 @cik_update_cg(%struct.radeon_device* %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @kv_update_uvd_dpm(%struct.radeon_device* %32, i32 %33)
  %35 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %36 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = load i32, i32* @PPSMC_MSG_UVDPowerOFF, align 4
  %42 = call i32 @kv_notify_message_to_smu(%struct.radeon_device* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %31
  br label %64

44:                                               ; preds = %14
  %45 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %46 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = load i32, i32* @PPSMC_MSG_UVDPowerON, align 4
  %52 = call i32 @kv_notify_message_to_smu(%struct.radeon_device* %50, i32 %51)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = call i32 @uvd_v4_2_resume(%struct.radeon_device* %53)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = call i32 @uvd_v1_0_start(%struct.radeon_device* %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load i32, i32* @RADEON_CG_BLOCK_UVD, align 4
  %59 = call i32 @cik_update_cg(%struct.radeon_device* %57, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %49, %44
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @kv_update_uvd_dpm(%struct.radeon_device* %61, i32 %62)
  br label %64

64:                                               ; preds = %13, %60, %43
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @uvd_v1_0_stop(%struct.radeon_device*) #1

declare dso_local i32 @cik_update_cg(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @kv_update_uvd_dpm(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_notify_message_to_smu(%struct.radeon_device*, i32) #1

declare dso_local i32 @uvd_v4_2_resume(%struct.radeon_device*) #1

declare dso_local i32 @uvd_v1_0_start(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
