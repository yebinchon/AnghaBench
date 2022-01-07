; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_get_invalidate_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_get_invalidate_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GCVM_INVALIDATE_ENG0_REQ = common dso_local global i32 0, align 4
@PER_VMID_INVALIDATE_REQ = common dso_local global i32 0, align 4
@FLUSH_TYPE = common dso_local global i32 0, align 4
@INVALIDATE_L2_PTES = common dso_local global i32 0, align 4
@INVALIDATE_L2_PDE0 = common dso_local global i32 0, align 4
@INVALIDATE_L2_PDE1 = common dso_local global i32 0, align 4
@INVALIDATE_L2_PDE2 = common dso_local global i32 0, align 4
@INVALIDATE_L1_PTES = common dso_local global i32 0, align 4
@CLEAR_PROTECTION_FAULT_STATUS_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gmc_v10_0_get_invalidate_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v10_0_get_invalidate_req(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GCVM_INVALIDATE_ENG0_REQ, align 4
  %8 = load i32, i32* @PER_VMID_INVALIDATE_REQ, align 4
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 1, %9
  %11 = call i32 @REG_SET_FIELD(i32 %6, i32 %7, i32 %8, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GCVM_INVALIDATE_ENG0_REQ, align 4
  %14 = load i32, i32* @FLUSH_TYPE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @REG_SET_FIELD(i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GCVM_INVALIDATE_ENG0_REQ, align 4
  %19 = load i32, i32* @INVALIDATE_L2_PTES, align 4
  %20 = call i32 @REG_SET_FIELD(i32 %17, i32 %18, i32 %19, i32 1)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GCVM_INVALIDATE_ENG0_REQ, align 4
  %23 = load i32, i32* @INVALIDATE_L2_PDE0, align 4
  %24 = call i32 @REG_SET_FIELD(i32 %21, i32 %22, i32 %23, i32 1)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GCVM_INVALIDATE_ENG0_REQ, align 4
  %27 = load i32, i32* @INVALIDATE_L2_PDE1, align 4
  %28 = call i32 @REG_SET_FIELD(i32 %25, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @GCVM_INVALIDATE_ENG0_REQ, align 4
  %31 = load i32, i32* @INVALIDATE_L2_PDE2, align 4
  %32 = call i32 @REG_SET_FIELD(i32 %29, i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @GCVM_INVALIDATE_ENG0_REQ, align 4
  %35 = load i32, i32* @INVALIDATE_L1_PTES, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %33, i32 %34, i32 %35, i32 1)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @GCVM_INVALIDATE_ENG0_REQ, align 4
  %39 = load i32, i32* @CLEAR_PROTECTION_FAULT_STATUS_ADDR, align 4
  %40 = call i32 @REG_SET_FIELD(i32 %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
