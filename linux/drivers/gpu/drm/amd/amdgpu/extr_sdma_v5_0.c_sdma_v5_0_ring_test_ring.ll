; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_test_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_test_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i64 }

@.str = private unnamed_addr constant [33 x i8] c"(%d) failed to allocate wb slot\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"amdgpu: dma failed to lock ring %d (%d).\0A\00", align 1
@SDMA_OP_WRITE = common dso_local global i32 0, align 4
@SDMA_SUBOP_WRITE_LINEAR = common dso_local global i32 0, align 4
@amdgpu_emu_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ring test on %d succeeded in %d msecs\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"ring test on %d succeeded in %d usecs\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"amdgpu: ring %d test failed (0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @sdma_v5_0_ring_test_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v5_0_ring_test_ring(%struct.amdgpu_ring* %0) #0 {
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
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %144

24:                                               ; preds = %1
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = mul i32 %29, 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %9, align 8
  store i32 -889266515, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %34, i32* %41, align 4
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %43 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %42, i32 5)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %24
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %144

56:                                               ; preds = %24
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %58 = load i32, i32* @SDMA_OP_WRITE, align 4
  %59 = call i32 @SDMA_PKT_HEADER_OP(i32 %58)
  %60 = load i32, i32* @SDMA_SUBOP_WRITE_LINEAR, align 4
  %61 = call i32 @SDMA_PKT_HEADER_SUB_OP(i32 %60)
  %62 = or i32 %59, %61
  %63 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %57, i32 %62)
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @lower_32_bits(i64 %65)
  %67 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %64, i32 %66)
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @upper_32_bits(i64 %69)
  %71 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %68, i32 %70)
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %73 = call i32 @SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(i32 0)
  %74 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %72, i32 %73)
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %76 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %75, i32 -559038737)
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %78 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %106, %56
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %79
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, -559038737
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %109

98:                                               ; preds = %85
  %99 = load i32, i32* @amdgpu_emu_mode, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @msleep(i32 1)
  br label %105

103:                                              ; preds = %98
  %104 = call i32 @udelay(i32 1)
  br label %105

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %79

109:                                              ; preds = %97, %79
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %109
  %116 = load i32, i32* @amdgpu_emu_mode, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %120 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122)
  br label %130

124:                                              ; preds = %115
  %125 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %126 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %124, %118
  br label %139

131:                                              ; preds = %109
  %132 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %133 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %131, %130
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %140, i32 %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %139, %46, %17
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_device_wb_free(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_SUB_OP(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
