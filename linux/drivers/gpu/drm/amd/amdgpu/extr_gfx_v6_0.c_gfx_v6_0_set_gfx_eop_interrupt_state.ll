; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_set_gfx_eop_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_set_gfx_eop_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmCP_INT_CNTL_RING0 = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v6_0_set_gfx_eop_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_set_gfx_eop_interrupt_state(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %26 [
    i32 129, label %7
    i32 128, label %17
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %9 = call i32 @RREG32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @WREG32(i32 %14, i32 %15)
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @WREG32(i32 %23, i32 %24)
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %17, %7
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
