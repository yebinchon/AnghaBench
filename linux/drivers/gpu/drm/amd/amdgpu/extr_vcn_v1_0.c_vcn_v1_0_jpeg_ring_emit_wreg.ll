; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_emit_wreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_emit_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_JRBC_EXTERNAL_REG_BASE = common dso_local global i32 0, align 4
@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32)* @vcn_v1_0_jpeg_ring_emit_wreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_jpeg_ring_emit_wreg(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 2
  store i32 %13, i32* %8, align 4
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %15 = load i32, i32* @UVD, align 4
  %16 = load i32, i32* @mmUVD_JRBC_EXTERNAL_REG_BASE, align 4
  %17 = call i32 @SOC15_REG_OFFSET(i32 %15, i32 0, i32 %16)
  %18 = load i32, i32* @PACKETJ_TYPE0, align 4
  %19 = call i32 @PACKETJ(i32 %17, i32 0, i32 0, i32 %18)
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %14, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %21, 129024
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 139263
  br i1 %25, label %32, label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 122880
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 123391
  br i1 %31, label %32, label %41

32:                                               ; preds = %29, %23
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 0)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 2
  %38 = load i32, i32* @PACKETJ_TYPE0, align 4
  %39 = call i32 @PACKETJ(i32 %37, i32 0, i32 0, i32 %38)
  %40 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %39)
  br label %49

41:                                               ; preds = %29, %26
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %46 = load i32, i32* @PACKETJ_TYPE0, align 4
  %47 = call i32 @PACKETJ(i32 0, i32 0, i32 0, i32 %46)
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 %47)
  br label %49

49:                                               ; preds = %41, %32
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %50, i32 %51)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKETJ(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
