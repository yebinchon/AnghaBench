; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_jpeg_ring_emit_reg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_jpeg_ring_emit_reg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@PACKETJ_TYPE3 = common dso_local global i32 0, align 4
@JRBC_DEC_EXTERNAL_REG_WRITE_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcn_v2_0_jpeg_ring_emit_reg_wait(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 2
  store i32 %11, i32* %9, align 4
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %13 = load i32, i32* @mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET, align 4
  %14 = load i32, i32* @PACKETJ_TYPE0, align 4
  %15 = call i32 @PACKETJ(i32 %13, i32 0, i32 0, i32 %14)
  %16 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %12, i32 %15)
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 20972032)
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %20 = load i32, i32* @mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET, align 4
  %21 = load i32, i32* @PACKETJ_TYPE0, align 4
  %22 = call i32 @PACKETJ(i32 %20, i32 0, i32 0, i32 %21)
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %19, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %25)
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %28 = load i32, i32* @mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET, align 4
  %29 = load i32, i32* @PACKETJ_TYPE0, align 4
  %30 = call i32 @PACKETJ(i32 %28, i32 0, i32 0, i32 %29)
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %27, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 65536
  br i1 %33, label %34, label %46

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sle i32 %35, 67071
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %39 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 0)
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 2
  %43 = load i32, i32* @PACKETJ_TYPE3, align 4
  %44 = call i32 @PACKETJ(i32 %42, i32 0, i32 0, i32 %43)
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %40, i32 %44)
  br label %55

46:                                               ; preds = %34, %4
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 %48)
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %51 = load i32, i32* @JRBC_DEC_EXTERNAL_REG_WRITE_ADDR, align 4
  %52 = load i32, i32* @PACKETJ_TYPE3, align 4
  %53 = call i32 @PACKETJ(i32 %51, i32 0, i32 0, i32 %52)
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %50, i32 %53)
  br label %55

55:                                               ; preds = %46, %37
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %57)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKETJ(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
