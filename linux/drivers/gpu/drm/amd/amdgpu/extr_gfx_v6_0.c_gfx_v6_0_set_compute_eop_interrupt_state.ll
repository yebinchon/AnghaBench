; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_set_compute_eop_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_set_compute_eop_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmCP_INT_CNTL_RING1 = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING1__TIME_STAMP_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@mmCP_INT_CNTL_RING2 = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING2__TIME_STAMP_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32)* @gfx_v6_0_set_compute_eop_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %53 [
    i32 129, label %9
    i32 128, label %32
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i32, i32* @mmCP_INT_CNTL_RING1, align 4
  %14 = call i32 @RREG32(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @CP_INT_CNTL_RING1__TIME_STAMP_INT_ENABLE_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @mmCP_INT_CNTL_RING1, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @WREG32(i32 %19, i32 %20)
  br label %55

22:                                               ; preds = %9
  %23 = load i32, i32* @mmCP_INT_CNTL_RING2, align 4
  %24 = call i32 @RREG32(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @CP_INT_CNTL_RING2__TIME_STAMP_INT_ENABLE_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @mmCP_INT_CNTL_RING2, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @WREG32(i32 %29, i32 %30)
  br label %55

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* @mmCP_INT_CNTL_RING1, align 4
  %37 = call i32 @RREG32(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @CP_INT_CNTL_RING1__TIME_STAMP_INT_ENABLE_MASK, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @mmCP_INT_CNTL_RING1, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  br label %55

44:                                               ; preds = %32
  %45 = load i32, i32* @mmCP_INT_CNTL_RING2, align 4
  %46 = call i32 @RREG32(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @CP_INT_CNTL_RING2__TIME_STAMP_INT_ENABLE_MASK, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @mmCP_INT_CNTL_RING2, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  br label %55

53:                                               ; preds = %3
  %54 = call i32 (...) @BUG()
  br label %55

55:                                               ; preds = %53, %44, %35, %22, %12
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
