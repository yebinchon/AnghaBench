; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_srbm_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_srbm_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@SRBM_GFX_CNTL__PIPEID__SHIFT = common dso_local global i32 0, align 4
@SRBM_GFX_CNTL__PIPEID_MASK = common dso_local global i32 0, align 4
@SRBM_GFX_CNTL__MEID__SHIFT = common dso_local global i32 0, align 4
@SRBM_GFX_CNTL__MEID_MASK = common dso_local global i32 0, align 4
@SRBM_GFX_CNTL__VMID__SHIFT = common dso_local global i32 0, align 4
@SRBM_GFX_CNTL__VMID_MASK = common dso_local global i32 0, align 4
@SRBM_GFX_CNTL__QUEUEID__SHIFT = common dso_local global i32 0, align 4
@SRBM_GFX_CNTL__QUEUEID_MASK = common dso_local global i32 0, align 4
@mmSRBM_GFX_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_srbm_select(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SRBM_GFX_CNTL__PIPEID__SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* @SRBM_GFX_CNTL__PIPEID_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SRBM_GFX_CNTL__MEID__SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* @SRBM_GFX_CNTL__MEID_MASK, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %16, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @SRBM_GFX_CNTL__VMID__SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @SRBM_GFX_CNTL__VMID_MASK, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %22, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SRBM_GFX_CNTL__QUEUEID__SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @SRBM_GFX_CNTL__QUEUEID_MASK, align 4
  %33 = and i32 %31, %32
  %34 = or i32 %28, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @mmSRBM_GFX_CNTL, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
