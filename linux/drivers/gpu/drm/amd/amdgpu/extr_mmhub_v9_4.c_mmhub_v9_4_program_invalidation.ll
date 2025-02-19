; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_program_invalidation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_program_invalidation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmVML2VC0_VM_INVALIDATE_ENG0_ADDR_RANGE_LO32 = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@mmVML2VC0_VM_INVALIDATE_ENG0_ADDR_RANGE_HI32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v9_4_program_invalidation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v9_4_program_invalidation(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 18
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i32, i32* @MMHUB, align 4
  %11 = load i32, i32* @mmVML2VC0_VM_INVALIDATE_ENG0_ADDR_RANGE_LO32, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = mul i32 2, %15
  %17 = add i32 %14, %16
  %18 = call i32 @WREG32_SOC15_OFFSET(i32 %10, i32 0, i32 %11, i32 %17, i32 -1)
  %19 = load i32, i32* @MMHUB, align 4
  %20 = load i32, i32* @mmVML2VC0_VM_INVALIDATE_ENG0_ADDR_RANGE_HI32, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = mul i32 2, %24
  %26 = add i32 %23, %25
  %27 = call i32 @WREG32_SOC15_OFFSET(i32 %19, i32 0, i32 %20, i32 %26, i32 31)
  br label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  ret void
}

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
