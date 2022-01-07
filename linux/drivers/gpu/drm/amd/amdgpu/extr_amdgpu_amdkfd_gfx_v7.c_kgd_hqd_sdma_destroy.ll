; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_hqd_sdma_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_hqd_sdma_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.cik_sdma_rlc_registers = type { i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_CONTEXT_STATUS = common dso_local global i32 0, align 4
@SDMA0_RLC0_CONTEXT_STATUS__IDLE_MASK = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_DOORBELL = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_RB_RPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i8*, i32)* @kgd_hqd_sdma_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_hqd_sdma_destroy(%struct.kgd_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kgd_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.cik_sdma_rlc_registers*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.kgd_dev*, %struct.kgd_dev** %5, align 8
  %14 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %13)
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @HZ, align 4
  %17 = mul i32 %15, %16
  %18 = udiv i32 %17, 1000
  %19 = load i32, i32* @jiffies, align 4
  %20 = add i32 %18, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call %struct.cik_sdma_rlc_registers* @get_sdma_mqd(i8* %22)
  store %struct.cik_sdma_rlc_registers* %23, %struct.cik_sdma_rlc_registers** %9, align 8
  %24 = load %struct.cik_sdma_rlc_registers*, %struct.cik_sdma_rlc_registers** %9, align 8
  %25 = call i32 @get_sdma_base_addr(%struct.cik_sdma_rlc_registers* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @WREG32(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %3, %57
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @mmSDMA0_RLC0_CONTEXT_STATUS, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @RREG32(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @SDMA0_RLC0_CONTEXT_STATUS__IDLE_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %59

49:                                               ; preds = %39
  %50 = load i32, i32* @jiffies, align 4
  %51 = load i64, i64* %12, align 8
  %52 = call i64 @time_after(i32 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ETIME, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %80

57:                                               ; preds = %49
  %58 = call i32 @usleep_range(i32 500, i32 1000)
  br label %39

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @mmSDMA0_RLC0_DOORBELL, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @WREG32(i32 %62, i32 0)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @RREG32(i32 %69)
  %71 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @WREG32(i32 %66, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @mmSDMA0_RLC0_RB_RPTR, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @RREG32(i32 %76)
  %78 = load %struct.cik_sdma_rlc_registers*, %struct.cik_sdma_rlc_registers** %9, align 8
  %79 = getelementptr inbounds %struct.cik_sdma_rlc_registers, %struct.cik_sdma_rlc_registers* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %59, %54
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local %struct.cik_sdma_rlc_registers* @get_sdma_mqd(i8*) #1

declare dso_local i32 @get_sdma_base_addr(%struct.cik_sdma_rlc_registers*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
