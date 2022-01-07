; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_ib_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_ib_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_ib = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"radeon: failed to get scratch reg (%d).\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"radeon: failed to get ib (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", align 1
@RADEON_USEC_IB_TEST_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"radeon: fence wait failed (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"radeon: fence wait timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"ib test succeeded in %u usecs\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"radeon: ib test failed (scratch(0x%04X)=0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_ib_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca %struct.radeon_ib, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call i32 @radeon_scratch_get(%struct.radeon_device* %11, i32* %7)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  %17 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %138

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @WREG32(i32 %20, i32 -889266515)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %24 = call i32 @radeon_ib_get(%struct.radeon_device* %22, i32 %23, %struct.radeon_ib* %6, i32* null, i32 256)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %133

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @PACKET0(i32 %31, i32 0)
  %33 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %32, i32* %35, align 4
  %36 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 -559038737, i32* %38, align 4
  %39 = call i8* @PACKET2(i32 0)
  %40 = ptrtoint i8* %39 to i32
  %41 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %40, i32* %43, align 4
  %44 = call i8* @PACKET2(i32 0)
  %45 = ptrtoint i8* %44 to i32
  %46 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %45, i32* %48, align 4
  %49 = call i8* @PACKET2(i32 0)
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 %50, i32* %53, align 4
  %54 = call i8* @PACKET2(i32 0)
  %55 = ptrtoint i8* %54 to i32
  %56 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  store i32 %55, i32* %58, align 4
  %59 = call i8* @PACKET2(i32 0)
  %60 = ptrtoint i8* %59 to i32
  %61 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  store i32 %60, i32* %63, align 4
  %64 = call i8* @PACKET2(i32 0)
  %65 = ptrtoint i8* %64 to i32
  %66 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 7
  store i32 %65, i32* %68, align 4
  %69 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 1
  store i32 8, i32* %69, align 8
  %70 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %71 = call i32 @radeon_ib_schedule(%struct.radeon_device* %70, %struct.radeon_ib* %6, i32* null, i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %30
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %130

77:                                               ; preds = %30
  %78 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @RADEON_USEC_IB_TEST_TIMEOUT, align 4
  %81 = call i32 @usecs_to_jiffies(i32 %80)
  %82 = call i32 @radeon_fence_wait_timeout(i32 %79, i32 0, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %130

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @ETIMEDOUT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %130

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @RREG32(i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, -559038737
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %114

109:                                              ; preds = %103
  %110 = call i32 @udelay(i32 1)
  br label %111

111:                                              ; preds = %109
  %112 = load i32, i32* %9, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %97

114:                                              ; preds = %108, %97
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ult i32 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %129

123:                                              ; preds = %114
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %123, %120
  br label %130

130:                                              ; preds = %129, %91, %85, %74
  %131 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %132 = call i32 @radeon_ib_free(%struct.radeon_device* %131, %struct.radeon_ib* %6)
  br label %133

133:                                              ; preds = %130, %27
  %134 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @radeon_scratch_free(%struct.radeon_device* %134, i32 %135)
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %15
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @radeon_scratch_get(%struct.radeon_device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i8* @PACKET2(i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @radeon_fence_wait_timeout(i32, i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_scratch_free(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
