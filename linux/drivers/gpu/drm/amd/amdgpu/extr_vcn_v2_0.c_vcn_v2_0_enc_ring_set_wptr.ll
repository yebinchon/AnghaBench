; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_enc_ring_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_enc_ring_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, i32, i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amdgpu_ring* }

@UVD = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @vcn_v2_0_enc_ring_set_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_0_enc_ring_set_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i64 0
  %15 = icmp eq %struct.amdgpu_ring* %7, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @lower_32_bits(i32 %24)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  store i8* %25, i8** %33, align 8
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @lower_32_bits(i32 %39)
  %41 = call i32 @WDOORBELL32(i32 %36, i8* %40)
  br label %50

42:                                               ; preds = %16
  %43 = load i32, i32* @UVD, align 4
  %44 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @lower_32_bits(i32 %47)
  %49 = call i32 @WREG32_SOC15(i32 %43, i32 0, i32 %44, i8* %48)
  br label %50

50:                                               ; preds = %42, %21
  br label %86

51:                                               ; preds = %1
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %51
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @lower_32_bits(i32 %59)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %60, i8** %68, align 8
  %69 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @lower_32_bits(i32 %74)
  %76 = call i32 @WDOORBELL32(i32 %71, i8* %75)
  br label %85

77:                                               ; preds = %51
  %78 = load i32, i32* @UVD, align 4
  %79 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %81 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @lower_32_bits(i32 %82)
  %84 = call i32 @WREG32_SOC15(i32 %78, i32 0, i32 %79, i8* %83)
  br label %85

85:                                               ; preds = %77, %56
  br label %86

86:                                               ; preds = %85, %50
  ret void
}

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @WDOORBELL32(i32, i8*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
