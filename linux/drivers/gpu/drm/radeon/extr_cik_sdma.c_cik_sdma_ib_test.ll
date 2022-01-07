; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_ib_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_ib_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64 }
%struct.radeon_ring = type { i64 }
%struct.radeon_ib = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@R600_WB_DMA_RING_TEST_OFFSET = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RING_TEST_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"radeon: failed to get ib (%d).\0A\00", align 1
@SDMA_OPCODE_WRITE = common dso_local global i32 0, align 4
@SDMA_WRITE_SUB_OPCODE_LINEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", align 1
@RADEON_USEC_IB_TEST_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"radeon: fence wait failed (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"radeon: fence wait timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"ib test on ring %d succeeded in %u usecs\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"radeon: ib test failed (0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_sdma_ib_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca %struct.radeon_ib, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @R600_WB_DMA_RING_TEST_OFFSET, align 4
  store i32 %18, i32* %8, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @CAYMAN_WB_DMA1_RING_TEST_OFFSET, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  store i64 %28, i64* %11, align 8
  store i32 -889266515, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = udiv i32 %35, 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %30, i32* %38, align 4
  %39 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @radeon_ib_get(%struct.radeon_device* %39, i64 %42, %struct.radeon_ib* %6, i32* null, i32 256)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %21
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %152

50:                                               ; preds = %21
  %51 = load i32, i32* @SDMA_OPCODE_WRITE, align 4
  %52 = load i32, i32* @SDMA_WRITE_SUB_OPCODE_LINEAR, align 4
  %53 = call i32 @SDMA_PACKET(i32 %51, i32 %52, i32 0)
  %54 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @lower_32_bits(i64 %57)
  %59 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %58, i32* %61, align 4
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @upper_32_bits(i64 %62)
  %64 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %63, i32* %66, align 4
  %67 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 -559038737, i32* %72, align 4
  %73 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 1
  store i32 5, i32* %73, align 8
  %74 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %75 = call i32 @radeon_ib_schedule(%struct.radeon_device* %74, %struct.radeon_ib* %6, i32* null, i32 0)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %50
  %79 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %80 = call i32 @radeon_ib_free(%struct.radeon_device* %79, %struct.radeon_ib* %6)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %152

84:                                               ; preds = %50
  %85 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* @RADEON_USEC_IB_TEST_TIMEOUT, align 4
  %88 = call i32 @usecs_to_jiffies(i32 %87)
  %89 = call i32 @radeon_fence_wait_timeout(%struct.TYPE_4__* %86, i32 0, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %152

96:                                               ; preds = %84
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @ETIMEDOUT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %152

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %127, %104
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %105
  %112 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = udiv i32 %116, 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le32_to_cpu(i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, -559038737
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %130

125:                                              ; preds = %111
  %126 = call i32 @udelay(i32 1)
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %7, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %105

130:                                              ; preds = %124, %105
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %140, i32 %141)
  br label %148

143:                                              ; preds = %130
  %144 = load i32, i32* %10, align 4
  %145 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %143, %136
  %149 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %150 = call i32 @radeon_ib_free(%struct.radeon_device* %149, %struct.radeon_ib* %6)
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %99, %92, %78, %46
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i64, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_fence_wait_timeout(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
