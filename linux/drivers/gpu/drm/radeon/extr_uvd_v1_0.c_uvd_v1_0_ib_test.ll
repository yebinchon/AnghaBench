; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_ib_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_ib_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i32 }

@CHIP_RV740 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"radeon: failed to raise UVD clocks (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"radeon: failed to get create msg (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"radeon: failed to get destroy ib (%d).\0A\00", align 1
@RADEON_USEC_IB_TEST_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"radeon: fence wait failed (%d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"radeon: fence wait timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"ib test on ring %d succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvd_v1_0_ib_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca %struct.radeon_fence*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  store %struct.radeon_fence* null, %struct.radeon_fence** %6, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHIP_RV740, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %15 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %14, i32 10000, i32 10000)
  store i32 %15, i32* %7, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %17, i32 53300, i32 40000)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %19
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %29 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @radeon_uvd_get_create_msg(%struct.radeon_device* %27, i32 %30, i32 1, i32* null)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %71

37:                                               ; preds = %26
  %38 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @radeon_uvd_get_destroy_msg(%struct.radeon_device* %38, i32 %41, i32 1, %struct.radeon_fence** %6)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %71

48:                                               ; preds = %37
  %49 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %50 = load i32, i32* @RADEON_USEC_IB_TEST_TIMEOUT, align 4
  %51 = call i32 @usecs_to_jiffies(i32 %50)
  %52 = call i32 @radeon_fence_wait_timeout(%struct.radeon_fence* %49, i32 0, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %71

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %71

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %61, %55, %45, %34
  %72 = call i32 @radeon_fence_unref(%struct.radeon_fence** %6)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %74 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %73, i32 0, i32 0)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @radeon_set_uvd_clocks(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_uvd_get_create_msg(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @radeon_uvd_get_destroy_msg(%struct.radeon_device*, i32, i32, %struct.radeon_fence**) #1

declare dso_local i32 @radeon_fence_wait_timeout(%struct.radeon_fence*, i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
