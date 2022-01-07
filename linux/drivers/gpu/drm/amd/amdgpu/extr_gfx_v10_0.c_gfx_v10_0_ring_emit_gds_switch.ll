; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_gds_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_gds_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmGDS_VMID0_BASE = common dso_local global i32 0, align 4
@mmGDS_VMID0_SIZE = common dso_local global i32 0, align 4
@mmGDS_GWS_VMID0 = common dso_local global i32 0, align 4
@GDS_GWS_VMID0__SIZE__SHIFT = common dso_local global i32 0, align 4
@mmGDS_OA_VMID0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32, i32, i32, i32, i32)* @gfx_v10_0_ring_emit_gds_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_ring_emit_gds_switch(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.amdgpu_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %19, align 8
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %17, align 8
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %22 = load i32, i32* @GC, align 4
  %23 = load i32, i32* @mmGDS_VMID0_BASE, align 4
  %24 = call i64 @SOC15_REG_OFFSET(i32 %22, i32 0, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @gfx_v10_0_write_data_to_reg(%struct.amdgpu_ring* %21, i32 0, i32 0, i64 %28, i32 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %32 = load i32, i32* @GC, align 4
  %33 = load i32, i32* @mmGDS_VMID0_SIZE, align 4
  %34 = call i64 @SOC15_REG_OFFSET(i32 %32, i32 0, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @gfx_v10_0_write_data_to_reg(%struct.amdgpu_ring* %31, i32 0, i32 0, i64 %38, i32 %39)
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %42 = load i32, i32* @GC, align 4
  %43 = load i32, i32* @mmGDS_GWS_VMID0, align 4
  %44 = call i64 @SOC15_REG_OFFSET(i32 %42, i32 0, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @GDS_GWS_VMID0__SIZE__SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @gfx_v10_0_write_data_to_reg(%struct.amdgpu_ring* %41, i32 0, i32 0, i64 %47, i32 %52)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %55 = load i32, i32* @GC, align 4
  %56 = load i32, i32* @mmGDS_OA_VMID0, align 4
  %57 = call i64 @SOC15_REG_OFFSET(i32 %55, i32 0, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %61, %62
  %64 = shl i32 1, %63
  %65 = load i32, i32* %15, align 4
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %64, %66
  %68 = call i32 @gfx_v10_0_write_data_to_reg(%struct.amdgpu_ring* %54, i32 0, i32 0, i64 %60, i32 %67)
  ret void
}

declare dso_local i32 @gfx_v10_0_write_data_to_reg(%struct.amdgpu_ring*, i32, i32, i64, i32) #1

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
