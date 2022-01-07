; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_update_medium_grain_light_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_update_medium_grain_light_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@MMHUB_NUM_INSTANCES = common dso_local global i32 0, align 4
@MMHUB = common dso_local global i32 0, align 4
@mmATCL2_0_ATC_L2_MISC_CG = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_MC_LS = common dso_local global i32 0, align 4
@ATCL2_0_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v9_4_update_medium_grain_light_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v9_4_update_medium_grain_light_sleep(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MMHUB_NUM_INSTANCES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load i32, i32* @MMHUB, align 4
  %14 = load i32, i32* @mmATCL2_0_ATC_L2_MISC_CG, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i32 @RREG32_SOC15_OFFSET(i32 %13, i32 0, i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AMD_CG_SUPPORT_MC_LS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @ATCL2_0_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %37

32:                                               ; preds = %21, %12
  %33 = load i32, i32* @ATCL2_0_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* @MMHUB, align 4
  %43 = load i32, i32* @mmATCL2_0_ATC_L2_MISC_CG, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @WREG32_SOC15_OFFSET(i32 %42, i32 0, i32 %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %8

53:                                               ; preds = %8
  ret void
}

declare dso_local i32 @RREG32_SOC15_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
