; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_arcturus.c_kgd_hqd_sdma_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_arcturus.c_kgd_hqd_sdma_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.v9_sdma_mqd = type { i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_RB_CNTL = common dso_local global i32 0, align 4
@SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_CONTEXT_STATUS = common dso_local global i32 0, align 4
@SDMA0_RLC0_CONTEXT_STATUS__IDLE_MASK = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_DOORBELL = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_RB_RPTR = common dso_local global i32 0, align 4
@mmSDMA0_RLC0_RB_RPTR_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i8*, i32)* @kgd_hqd_sdma_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_hqd_sdma_destroy(%struct.kgd_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kgd_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.v9_sdma_mqd*, align 8
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
  %23 = call %struct.v9_sdma_mqd* @get_sdma_mqd(i8* %22)
  store %struct.v9_sdma_mqd* %23, %struct.v9_sdma_mqd** %9, align 8
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %25 = load %struct.v9_sdma_mqd*, %struct.v9_sdma_mqd** %9, align 8
  %26 = getelementptr inbounds %struct.v9_sdma_mqd, %struct.v9_sdma_mqd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v9_sdma_mqd*, %struct.v9_sdma_mqd** %9, align 8
  %29 = getelementptr inbounds %struct.v9_sdma_mqd, %struct.v9_sdma_mqd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_sdma_base_addr(%struct.amdgpu_device* %24, i32 %27, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @RREG32(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @WREG32(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %3, %63
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @mmSDMA0_RLC0_CONTEXT_STATUS, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @SDMA0_RLC0_CONTEXT_STATUS__IDLE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %65

55:                                               ; preds = %45
  %56 = load i32, i32* @jiffies, align 4
  %57 = load i64, i64* %12, align 8
  %58 = call i64 @time_after(i32 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ETIME, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %92

63:                                               ; preds = %55
  %64 = call i32 @usleep_range(i32 500, i32 1000)
  br label %45

65:                                               ; preds = %54
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @mmSDMA0_RLC0_DOORBELL, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @WREG32(i32 %68, i32 0)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @mmSDMA0_RLC0_RB_CNTL, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @RREG32(i32 %75)
  %77 = load i32, i32* @SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @WREG32(i32 %72, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @mmSDMA0_RLC0_RB_RPTR, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @RREG32(i32 %82)
  %84 = load %struct.v9_sdma_mqd*, %struct.v9_sdma_mqd** %9, align 8
  %85 = getelementptr inbounds %struct.v9_sdma_mqd, %struct.v9_sdma_mqd* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @mmSDMA0_RLC0_RB_RPTR_HI, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i32 @RREG32(i32 %88)
  %90 = load %struct.v9_sdma_mqd*, %struct.v9_sdma_mqd** %9, align 8
  %91 = getelementptr inbounds %struct.v9_sdma_mqd, %struct.v9_sdma_mqd* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %65, %60
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local %struct.v9_sdma_mqd* @get_sdma_mqd(i8*) #1

declare dso_local i32 @get_sdma_base_addr(%struct.amdgpu_device*, i32, i32) #1

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
