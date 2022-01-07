; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_ring_test_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_ring_test_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }

@SDMA_OP_WRITE = common dso_local global i32 0, align 4
@SDMA_SUBOP_WRITE_LINEAR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @sdma_v4_0_ring_test_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_ring_test_ring(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %104

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = mul i32 %24, 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %9, align 8
  store i32 -889266515, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %29, i32* %36, align 4
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %38 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %37, i32 5)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %19
  br label %99

42:                                               ; preds = %19
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %44 = load i32, i32* @SDMA_OP_WRITE, align 4
  %45 = call i32 @SDMA_PKT_HEADER_OP(i32 %44)
  %46 = load i32, i32* @SDMA_SUBOP_WRITE_LINEAR, align 4
  %47 = call i32 @SDMA_PKT_HEADER_SUB_OP(i32 %46)
  %48 = or i32 %45, %47
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %48)
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @lower_32_bits(i64 %51)
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %50, i32 %52)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @upper_32_bits(i64 %55)
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 %56)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %59 = call i32 @SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(i32 0)
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %58, i32 %59)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %62 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %61, i32 -559038737)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %64 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %86, %42
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %65
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, -559038737
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %89

84:                                               ; preds = %71
  %85 = call i32 @udelay(i32 1)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %65

89:                                               ; preds = %83, %65
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp uge i32 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @ETIMEDOUT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %95, %89
  br label %99

99:                                               ; preds = %98, %41
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %99, %17
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_SUB_OP(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @amdgpu_device_wb_free(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
