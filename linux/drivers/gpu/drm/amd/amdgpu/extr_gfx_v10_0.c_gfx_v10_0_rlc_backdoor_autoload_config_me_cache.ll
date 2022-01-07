; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_rlc_backdoor_autoload_config_me_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_rlc_backdoor_autoload_config_me_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.amdgpu_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GC = common dso_local global i32 0, align 4
@mmCP_ME_IC_OP_CNTL = common dso_local global i32 0, align 4
@CP_ME_IC_OP_CNTL = common dso_local global i32 0, align 4
@INVALIDATE_CACHE = common dso_local global i32 0, align 4
@INVALIDATE_CACHE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to invalidate instruction cache\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rlc_autoload_info = common dso_local global %struct.TYPE_6__* null, align 8
@FIRMWARE_ID_CP_ME = common dso_local global i64 0, align 8
@mmCP_ME_IC_BASE_LO = common dso_local global i32 0, align 4
@mmCP_ME_IC_BASE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_rlc_backdoor_autoload_config_me_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_rlc_backdoor_autoload_config_me_cache(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 50000, i32* %4, align 4
  %8 = load i32, i32* @GC, align 4
  %9 = load i32, i32* @mmCP_ME_IC_OP_CNTL, align 4
  %10 = call i32 @RREG32_SOC15(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CP_ME_IC_OP_CNTL, align 4
  %13 = load i32, i32* @INVALIDATE_CACHE, align 4
  %14 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 %13, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @GC, align 4
  %16 = load i32, i32* @mmCP_ME_IC_OP_CNTL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @WREG32_SOC15(i32 %15, i32 0, i32 %16, i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %35, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32, i32* @GC, align 4
  %25 = load i32, i32* @mmCP_ME_IC_OP_CNTL, align 4
  %26 = call i32 @RREG32_SOC15(i32 %24, i32 0, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CP_ME_IC_OP_CNTL, align 4
  %29 = load i32, i32* @INVALIDATE_CACHE_COMPLETE, align 4
  %30 = call i32 @REG_GET_FIELD(i32 %27, i32 %28, i32 %29)
  %31 = icmp eq i32 1, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %38

33:                                               ; preds = %23
  %34 = call i32 @udelay(i32 1)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %19

38:                                               ; preds = %32, %19
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %72

49:                                               ; preds = %38
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rlc_autoload_info, align 8
  %56 = load i64, i64* @FIRMWARE_ID_CP_ME, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %54, %59
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* @GC, align 4
  %62 = load i32, i32* @mmCP_ME_IC_BASE_LO, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @lower_32_bits(i64 %63)
  %65 = and i32 %64, -4096
  %66 = call i32 @WREG32_SOC15(i32 %61, i32 0, i32 %62, i32 %65)
  %67 = load i32, i32* @GC, align 4
  %68 = load i32, i32* @mmCP_ME_IC_BASE_HI, align 4
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @upper_32_bits(i64 %69)
  %71 = call i32 @WREG32_SOC15(i32 %67, i32 0, i32 %68, i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %49, %42
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
