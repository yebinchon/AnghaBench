; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_compute_pipe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_compute_pipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GFX7_MEC_HPD_SIZE = common dso_local global i32 0, align 4
@mmCP_HPD_EOP_BASE_ADDR = common dso_local global i32 0, align 4
@mmCP_HPD_EOP_BASE_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_HPD_EOP_VMID = common dso_local global i32 0, align 4
@mmCP_HPD_EOP_CONTROL = common dso_local global i32 0, align 4
@CP_HPD_EOP_CONTROL__EOP_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32)* @gfx_v7_0_compute_pipe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_compute_pipe_init(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %10, %15
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @GFX7_MEC_HPD_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cik_srbm_select(%struct.amdgpu_device* %35, i32 %37, i32 %38, i32 0, i32 0)
  %40 = load i32, i32* @mmCP_HPD_EOP_BASE_ADDR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 8
  %43 = call i32 @WREG32(i32 %40, i32 %42)
  %44 = load i32, i32* @mmCP_HPD_EOP_BASE_ADDR_HI, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = ashr i32 %46, 8
  %48 = call i32 @WREG32(i32 %44, i32 %47)
  %49 = load i32, i32* @mmCP_HPD_EOP_VMID, align 4
  %50 = call i32 @WREG32(i32 %49, i32 0)
  %51 = load i32, i32* @mmCP_HPD_EOP_CONTROL, align 4
  %52 = call i32 @RREG32(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @CP_HPD_EOP_CONTROL__EOP_SIZE_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @GFX7_MEC_HPD_SIZE, align 4
  %58 = sdiv i32 %57, 8
  %59 = call i32 @order_base_2(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @mmCP_HPD_EOP_CONTROL, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %66 = call i32 @cik_srbm_select(%struct.amdgpu_device* %65, i32 0, i32 0, i32 0, i32 0)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cik_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
