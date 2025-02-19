; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_emit_flush_gpu_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_emit_flush_gpu_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.amdgpu_vmhub* }
%struct.amdgpu_vmhub = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i32, i32)* @gmc_v10_0_emit_flush_gpu_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v10_0_emit_flush_gpu_tlb(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_vmhub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %13, align 8
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %14, i64 %19
  store %struct.amdgpu_vmhub* %20, %struct.amdgpu_vmhub** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @gmc_v10_0_get_invalidate_req(i32 %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %27 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul i32 2, %30
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @lower_32_bits(i32 %34)
  %36 = call i32 @amdgpu_ring_emit_wreg(%struct.amdgpu_ring* %26, i64 %33, i32 %35)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %38 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %7, align 8
  %39 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = mul i32 2, %41
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = call i32 @amdgpu_ring_emit_wreg(%struct.amdgpu_ring* %37, i64 %44, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %49 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %7, align 8
  %50 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %7, align 8
  %56 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %5, align 4
  %63 = shl i32 1, %62
  %64 = call i32 @amdgpu_ring_emit_reg_write_reg_wait(%struct.amdgpu_ring* %48, i64 %54, i64 %60, i32 %61, i32 %63)
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @gmc_v10_0_get_invalidate_req(i32, i32) #1

declare dso_local i32 @amdgpu_ring_emit_wreg(%struct.amdgpu_ring*, i64, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @amdgpu_ring_emit_reg_write_reg_wait(%struct.amdgpu_ring*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
