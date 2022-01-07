; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_ring_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_ring_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@UVD_CONTEXT_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"radeon: cp failed to lock ring %d (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ring test on %d succeeded in %d usecs\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"radeon: ring %d test failed (0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvd_v1_0_ring_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @UVD_CONTEXT_ID, align 4
  %10 = call i32 @WREG32(i32 %9, i32 -889266515)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %13 = call i32 @radeon_ring_lock(%struct.radeon_device* %11, %struct.radeon_ring* %12, i32 3)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %25 = load i32, i32* @UVD_CONTEXT_ID, align 4
  %26 = call i32 @PACKET0(i32 %25, i32 0)
  %27 = call i32 @radeon_ring_write(%struct.radeon_ring* %24, i32 %26)
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %29 = call i32 @radeon_ring_write(%struct.radeon_ring* %28, i32 -559038737)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %32 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %30, %struct.radeon_ring* %31, i32 0)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %47, %23
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i32, i32* @UVD_CONTEXT_ID, align 4
  %41 = call i32 @RREG32(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, -559038737
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %50

45:                                               ; preds = %39
  %46 = call i32 @udelay(i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %33

50:                                               ; preds = %44, %33
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %58 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  br label %70

62:                                               ; preds = %50
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %62, %56
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
