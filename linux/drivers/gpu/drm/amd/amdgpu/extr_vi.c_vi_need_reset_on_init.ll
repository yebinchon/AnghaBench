; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_need_reset_on_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_need_reset_on_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@ixSMC_SYSCON_CLOCK_CNTL_0 = common dso_local global i32 0, align 4
@ixSMC_PC_C = common dso_local global i32 0, align 4
@SMC_SYSCON_CLOCK_CNTL_0 = common dso_local global i32 0, align 4
@ck_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vi_need_reset_on_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vi_need_reset_on_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AMD_IS_APU, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @ixSMC_SYSCON_CLOCK_CNTL_0, align 4
  %15 = call i32 @RREG32_SMC(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @ixSMC_PC_C, align 4
  %17 = call i32 @RREG32_SMC(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SMC_SYSCON_CLOCK_CNTL_0, align 4
  %20 = load i32, i32* @ck_disable, align 4
  %21 = call i64 @REG_GET_FIELD(i32 %18, i32 %19, i32 %20)
  %22 = icmp eq i64 0, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 131328, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %28

27:                                               ; preds = %23, %13
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
