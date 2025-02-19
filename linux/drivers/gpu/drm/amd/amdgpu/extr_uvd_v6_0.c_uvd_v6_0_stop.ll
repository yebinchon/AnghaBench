; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmUVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @uvd_v6_0_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v6_0_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %4 = call i32 @WREG32(i32 %3, i32 285278465)
  %5 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %6 = call i32 @WREG32_P(i32 %5, i32 256, i32 -257)
  %7 = call i32 @mdelay(i32 1)
  %8 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %9 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %10 = call i32 @WREG32(i32 %8, i32 %9)
  %11 = call i32 @mdelay(i32 5)
  %12 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %13 = call i32 @WREG32(i32 %12, i32 0)
  %14 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %15 = call i32 @WREG32_P(i32 %14, i32 0, i32 -257)
  %16 = load i32, i32* @mmUVD_STATUS, align 4
  %17 = call i32 @WREG32(i32 %16, i32 0)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
