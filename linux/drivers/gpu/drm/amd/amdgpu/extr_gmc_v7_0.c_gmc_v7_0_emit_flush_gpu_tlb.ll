; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_emit_flush_gpu_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_emit_flush_gpu_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@mmVM_INVALIDATE_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i32, i32)* @gmc_v7_0_emit_flush_gpu_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v7_0_emit_flush_gpu_tlb(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i64, i64* @mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  store i64 %14, i64* %7, align 8
  br label %21

15:                                               ; preds = %3
  %16 = load i64, i64* @mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = sub nsw i64 %19, 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 12
  %26 = call i32 @amdgpu_ring_emit_wreg(%struct.amdgpu_ring* %22, i64 %23, i32 %25)
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %28 = load i64, i64* @mmVM_INVALIDATE_REQUEST, align 8
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @amdgpu_ring_emit_wreg(%struct.amdgpu_ring* %27, i64 %28, i32 %30)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @amdgpu_ring_emit_wreg(%struct.amdgpu_ring*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
