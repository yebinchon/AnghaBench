; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_ring_test_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_ring_test_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }

@SDMA_OPCODE_WRITE = common dso_local global i32 0, align 4
@SDMA_WRITE_SUB_OPCODE_LINEAR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @cik_sdma_ring_test_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_sdma_ring_test_ring(%struct.amdgpu_ring* %0) #0 {
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
  br label %101

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
  br label %96

42:                                               ; preds = %19
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %44 = load i32, i32* @SDMA_OPCODE_WRITE, align 4
  %45 = load i32, i32* @SDMA_WRITE_SUB_OPCODE_LINEAR, align 4
  %46 = call i32 @SDMA_PACKET(i32 %44, i32 %45, i32 0)
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @lower_32_bits(i64 %49)
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @upper_32_bits(i64 %53)
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %54)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 1)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %58, i32 -559038737)
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %61 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %83, %42
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, -559038737
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %86

81:                                               ; preds = %68
  %82 = call i32 @udelay(i32 1)
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %62

86:                                               ; preds = %80, %62
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp uge i32 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @ETIMEDOUT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %86
  br label %96

96:                                               ; preds = %95, %41
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %17
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

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
