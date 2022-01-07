; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_enc_ring_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_enc_ring_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i64, i32, i32, i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amdgpu_ring* }

@UVD = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @vcn_v2_5_enc_ring_set_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_5_enc_ring_set_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 5
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %16, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i64 0
  %19 = icmp eq %struct.amdgpu_ring* %7, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @lower_32_bits(i32 %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  store i8* %29, i8** %37, align 8
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @lower_32_bits(i32 %43)
  %45 = call i32 @WDOORBELL32(i32 %40, i8* %44)
  br label %57

46:                                               ; preds = %20
  %47 = load i32, i32* @UVD, align 4
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @lower_32_bits(i32 %54)
  %56 = call i32 @WREG32_SOC15(i32 %47, i64 %50, i32 %51, i8* %55)
  br label %57

57:                                               ; preds = %46, %25
  br label %96

58:                                               ; preds = %1
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %60 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @lower_32_bits(i32 %66)
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  store i8* %67, i8** %75, align 8
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %80 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @lower_32_bits(i32 %81)
  %83 = call i32 @WDOORBELL32(i32 %78, i8* %82)
  br label %95

84:                                               ; preds = %58
  %85 = load i32, i32* @UVD, align 4
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %87 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %90 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @lower_32_bits(i32 %92)
  %94 = call i32 @WREG32_SOC15(i32 %85, i64 %88, i32 %89, i8* %93)
  br label %95

95:                                               ; preds = %84, %63
  br label %96

96:                                               ; preds = %95, %57
  ret void
}

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @WDOORBELL32(i32, i8*) #1

declare dso_local i32 @WREG32_SOC15(i32, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
