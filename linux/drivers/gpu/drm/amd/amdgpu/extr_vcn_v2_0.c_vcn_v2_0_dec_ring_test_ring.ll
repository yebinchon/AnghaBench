; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_test_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_test_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@VCN_DEC_KMD_CMD = common dso_local global i32 0, align 4
@VCN_DEC_CMD_PACKET_START = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @vcn_v2_0_dec_ring_test_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_0_dec_ring_test_ring(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WREG32(i32 %21, i32 -889266515)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %24 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %23, i32 4)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %94

29:                                               ; preds = %1
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PACKET0(i32 %35, i32 0)
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %30, i32 %36)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %39 = load i32, i32* @VCN_DEC_KMD_CMD, align 4
  %40 = load i32, i32* @VCN_DEC_CMD_PACKET_START, align 4
  %41 = shl i32 %40, 1
  %42 = or i32 %39, %41
  %43 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 %42)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PACKET0(i32 %49, i32 0)
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 -559038737)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %55 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %80, %29
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @RREG32(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, -559038737
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %83

78:                                               ; preds = %62
  %79 = call i32 @udelay(i32 1)
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %56

83:                                               ; preds = %77, %56
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp uge i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @ETIMEDOUT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %83
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %27
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
