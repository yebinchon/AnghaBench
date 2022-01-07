; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_wait_for_rlc_autoload_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_wait_for_rlc_autoload_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@GC = common dso_local global i32 0, align 4
@mmCP_STAT = common dso_local global i32 0, align 4
@mmRLC_RLCS_BOOTLOAD_STATUS = common dso_local global i32 0, align 4
@RLC_RLCS_BOOTLOAD_STATUS = common dso_local global i32 0, align 4
@BOOTLOAD_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"rlc autoload: gc ucode autoload timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_wait_for_rlc_autoload_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_wait_for_rlc_autoload_complete(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = load i32, i32* @GC, align 4
  %16 = load i32, i32* @mmCP_STAT, align 4
  %17 = call i64 @RREG32_SOC15(i32 %15, i32 0, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* @GC, align 4
  %19 = load i32, i32* @mmRLC_RLCS_BOOTLOAD_STATUS, align 4
  %20 = call i64 @RREG32_SOC15(i32 %18, i32 0, i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @RLC_RLCS_BOOTLOAD_STATUS, align 4
  %26 = load i32, i32* @BOOTLOAD_COMPLETE, align 4
  %27 = call i32 @REG_GET_FIELD(i64 %24, i32 %25, i32 %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23, %14
  %31 = call i32 @udelay(i32 1)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %8

35:                                               ; preds = %29, %8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %35
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %48
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = call i32 @gfx_v10_0_rlc_backdoor_autoload_config_me_cache(%struct.amdgpu_device* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %85

62:                                               ; preds = %55
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = call i32 @gfx_v10_0_rlc_backdoor_autoload_config_ce_cache(%struct.amdgpu_device* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %85

69:                                               ; preds = %62
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = call i32 @gfx_v10_0_rlc_backdoor_autoload_config_pfp_cache(%struct.amdgpu_device* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %85

76:                                               ; preds = %69
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %78 = call i32 @gfx_v10_0_rlc_backdoor_autoload_config_mec_cache(%struct.amdgpu_device* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %48
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %81, %74, %67, %60, %41
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i64, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_config_me_cache(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_config_ce_cache(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_config_pfp_cache(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_config_mec_cache(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
