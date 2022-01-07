; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_enable_system_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_enable_system_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmVML2VC0_VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@VML2VC0_VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@PAGE_TABLE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v9_4_enable_system_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v9_4_enable_system_domain(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MMHUB, align 4
  %7 = load i32, i32* @mmVML2VC0_VM_CONTEXT0_CNTL, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %10 = mul nsw i32 %8, %9
  %11 = call i32 @RREG32_SOC15_OFFSET(i32 %6, i32 0, i32 %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VML2VC0_VM_CONTEXT0_CNTL, align 4
  %14 = load i32, i32* @ENABLE_CONTEXT, align 4
  %15 = call i32 @REG_SET_FIELD(i32 %12, i32 %13, i32 %14, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VML2VC0_VM_CONTEXT0_CNTL, align 4
  %18 = load i32, i32* @PAGE_TABLE_DEPTH, align 4
  %19 = call i32 @REG_SET_FIELD(i32 %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @MMHUB, align 4
  %21 = load i32, i32* @mmVML2VC0_VM_CONTEXT0_CNTL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @WREG32_SOC15_OFFSET(i32 %20, i32 0, i32 %21, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @RREG32_SOC15_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
