; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_ib_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_ib_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"radeon: failed to get create msg (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"radeon: failed to get destroy ib (%d).\0A\00", align 1
@RADEON_USEC_IB_TEST_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"radeon: fence wait failed (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"radeon: fence wait timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"ib test on ring %d succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vce_ib_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca %struct.radeon_fence*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  store %struct.radeon_fence* null, %struct.radeon_fence** %5, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @radeon_vce_get_create_msg(%struct.radeon_device* %7, i32 %10, i32 1, i32* null)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @radeon_vce_get_destroy_msg(%struct.radeon_device* %18, i32 %21, i32 1, %struct.radeon_fence** %5)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %52

28:                                               ; preds = %17
  %29 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %30 = load i32, i32* @RADEON_USEC_IB_TEST_TIMEOUT, align 4
  %31 = call i32 @usecs_to_jiffies(i32 %30)
  %32 = call i32 @radeon_fence_wait_timeout(%struct.radeon_fence* %29, i32 0, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %51

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %50

45:                                               ; preds = %38
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %41
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %25, %14
  %53 = call i32 @radeon_fence_unref(%struct.radeon_fence** %5)
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @radeon_vce_get_create_msg(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_vce_get_destroy_msg(%struct.radeon_device*, i32, i32, %struct.radeon_fence**) #1

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
