; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_get_rev_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_get_rev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@ATI_REV_ID_FUSE_MACRO__ADDRESS = common dso_local global i32 0, align 4
@ATI_REV_ID_FUSE_MACRO__MASK = common dso_local global i32 0, align 4
@ATI_REV_ID_FUSE_MACRO__SHIFT = common dso_local global i32 0, align 4
@mmPCIE_EFUSE4 = common dso_local global i32 0, align 4
@PCIE_EFUSE4__STRAP_BIF_ATI_REV_ID_MASK = common dso_local global i32 0, align 4
@PCIE_EFUSE4__STRAP_BIF_ATI_REV_ID__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vi_get_rev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vi_get_rev_id(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AMD_IS_APU, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @ATI_REV_ID_FUSE_MACRO__ADDRESS, align 4
  %12 = call i32 @RREG32_SMC(i32 %11)
  %13 = load i32, i32* @ATI_REV_ID_FUSE_MACRO__MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @ATI_REV_ID_FUSE_MACRO__SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @mmPCIE_EFUSE4, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = load i32, i32* @PCIE_EFUSE4__STRAP_BIF_ATI_REV_ID_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @PCIE_EFUSE4__STRAP_BIF_ATI_REV_ID__SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
