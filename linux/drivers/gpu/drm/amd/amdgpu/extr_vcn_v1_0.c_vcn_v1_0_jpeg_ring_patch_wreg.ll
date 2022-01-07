; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_patch_wreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_patch_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32*, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_JRBC_EXTERNAL_REG_BASE = common dso_local global i32 0, align 4
@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32*, i32, i32)* @vcn_v1_0_jpeg_ring_patch_wreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_jpeg_ring_patch_wreg(%struct.amdgpu_ring* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %9, align 8
  %13 = load i32, i32* @UVD, align 4
  %14 = load i32, i32* @mmUVD_JRBC_EXTERNAL_REG_BASE, align 4
  %15 = call i32 @SOC15_REG_OFFSET(i32 %13, i32 0, i32 %14)
  %16 = load i32, i32* @PACKETJ_TYPE0, align 4
  %17 = call i8* @PACKETJ(i32 %15, i32 0, i32 0, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32 %18, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 129024
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 139263
  br i1 %31, label %38, label %32

32:                                               ; preds = %29, %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 122880
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %36, 123391
  br i1 %37, label %38, label %60

38:                                               ; preds = %35, %29
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 2
  %49 = load i32, i32* @PACKETJ_TYPE0, align 4
  %50 = call i8* @PACKETJ(i32 %48, i32 0, i32 0, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32 %51, i32* %59, align 4
  br label %81

60:                                               ; preds = %35, %32
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32 %61, i32* %69, align 4
  %70 = load i32, i32* @PACKETJ_TYPE0, align 4
  %71 = call i8* @PACKETJ(i32 0, i32 0, i32 0, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32 %72, i32* %80, align 4
  br label %81

81:                                               ; preds = %60, %38
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  store i32 %82, i32* %90, align 4
  ret void
}

declare dso_local i8* @PACKETJ(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
