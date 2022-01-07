; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_ib_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_ib_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_ib = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"radeon: failed to get scratch reg (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"radeon: failed to get ib (%d).\0A\00", align 1
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", align 1
@RADEON_USEC_IB_TEST_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"radeon: fence wait failed (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"radeon: fence wait timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"ib test on ring %d succeeded in %u usecs\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"radeon: ib test failed (scratch(0x%04X)=0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_ib_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
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
  br label %121

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @WREG32(i32 %20, i32 -889266515)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @radeon_ib_get(%struct.radeon_device* %22, i32 %25, %struct.radeon_ib* %6, i32* null, i32 256)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %116

32:                                               ; preds = %19
  %33 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %34 = call i32 @PACKET3(i32 %33, i32 1)
  %35 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PACKET3_SET_CONFIG_REG_OFFSET, align 4
  %40 = sub nsw i32 %38, %39
  %41 = ashr i32 %40, 2
  %42 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %41, i32* %44, align 4
  %45 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 -559038737, i32* %47, align 4
  %48 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 1
  store i32 3, i32* %48, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = call i32 @radeon_ib_schedule(%struct.radeon_device* %49, %struct.radeon_ib* %6, i32* null, i32 0)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %113

56:                                               ; preds = %32
  %57 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* @RADEON_USEC_IB_TEST_TIMEOUT, align 4
  %60 = call i32 @usecs_to_jiffies(i32 %59)
  %61 = call i32 @radeon_fence_wait_timeout(%struct.TYPE_2__* %58, i32 0, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %113

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %113

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %90, %75
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @RREG32(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, -559038737
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %93

88:                                               ; preds = %82
  %89 = call i32 @udelay(i32 1)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %76

93:                                               ; preds = %87, %76
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %104)
  br label %112

106:                                              ; preds = %93
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %106, %99
  br label %113

113:                                              ; preds = %112, %70, %64, %53
  %114 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %115 = call i32 @radeon_ib_free(%struct.radeon_device* %114, %struct.radeon_ib* %6)
  br label %116

116:                                              ; preds = %113, %29
  %117 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @radeon_scratch_free(%struct.radeon_device* %117, i32 %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @radeon_scratch_get(%struct.radeon_device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @radeon_fence_wait_timeout(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_scratch_free(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
