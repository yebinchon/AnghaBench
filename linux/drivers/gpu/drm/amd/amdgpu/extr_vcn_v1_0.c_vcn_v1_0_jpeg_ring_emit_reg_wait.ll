; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_emit_reg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_emit_reg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_COND_RD_TIMER = common dso_local global i32 0, align 4
@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_REF_DATA = common dso_local global i32 0, align 4
@mmUVD_JRBC_EXTERNAL_REG_BASE = common dso_local global i32 0, align 4
@PACKETJ_TYPE3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @vcn_v1_0_jpeg_ring_emit_reg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_jpeg_ring_emit_reg_wait(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 2
  store i32 %15, i32* %10, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %17 = load i32, i32* @UVD, align 4
  %18 = load i32, i32* @mmUVD_JRBC_RB_COND_RD_TIMER, align 4
  %19 = call i32 @SOC15_REG_OFFSET(i32 %17, i32 0, i32 %18)
  %20 = load i32, i32* @PACKETJ_TYPE0, align 4
  %21 = call i32 @PACKETJ(i32 %19, i32 0, i32 0, i32 %20)
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %16, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 20972032)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %26 = load i32, i32* @UVD, align 4
  %27 = load i32, i32* @mmUVD_JRBC_RB_REF_DATA, align 4
  %28 = call i32 @SOC15_REG_OFFSET(i32 %26, i32 0, i32 %27)
  %29 = load i32, i32* @PACKETJ_TYPE0, align 4
  %30 = call i32 @PACKETJ(i32 %28, i32 0, i32 0, i32 %29)
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 %33)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %36 = load i32, i32* @UVD, align 4
  %37 = load i32, i32* @mmUVD_JRBC_EXTERNAL_REG_BASE, align 4
  %38 = call i32 @SOC15_REG_OFFSET(i32 %36, i32 0, i32 %37)
  %39 = load i32, i32* @PACKETJ_TYPE0, align 4
  %40 = call i32 @PACKETJ(i32 %38, i32 0, i32 0, i32 %39)
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 129024
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 %45, 139263
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, 122880
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp sle i32 %51, 123391
  br i1 %52, label %53, label %62

53:                                               ; preds = %50, %44
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 0)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %57, 2
  %59 = load i32, i32* @PACKETJ_TYPE3, align 4
  %60 = call i32 @PACKETJ(i32 %58, i32 0, i32 0, i32 %59)
  %61 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %60)
  br label %70

62:                                               ; preds = %50, %47
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %63, i32 %64)
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %67 = load i32, i32* @PACKETJ_TYPE3, align 4
  %68 = call i32 @PACKETJ(i32 0, i32 0, i32 0, i32 %67)
  %69 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %66, i32 %68)
  br label %70

70:                                               ; preds = %62, %53
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %71, i32 %72)
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
