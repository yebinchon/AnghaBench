; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_jpeg_ring_emit_wreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_jpeg_ring_emit_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@JRBC_DEC_EXTERNAL_REG_WRITE_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcn_v2_0_jpeg_ring_emit_wreg(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 %8, 2
  store i32 %9, i32* %7, align 4
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %11 = load i32, i32* @mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET, align 4
  %12 = load i32, i32* @PACKETJ_TYPE0, align 4
  %13 = call i32 @PACKETJ(i32 %11, i32 0, i32 0, i32 %12)
  %14 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %10, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 65536
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 67071
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 0)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 2
  %26 = load i32, i32* @PACKETJ_TYPE0, align 4
  %27 = call i32 @PACKETJ(i32 %25, i32 0, i32 0, i32 %26)
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 %27)
  br label %38

29:                                               ; preds = %17, %3
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %30, i32 %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %34 = load i32, i32* @JRBC_DEC_EXTERNAL_REG_WRITE_ADDR, align 4
  %35 = load i32, i32* @PACKETJ_TYPE0, align 4
  %36 = call i32 @PACKETJ(i32 %34, i32 0, i32 0, i32 %35)
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 %36)
  br label %38

38:                                               ; preds = %29, %20
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %40)
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
