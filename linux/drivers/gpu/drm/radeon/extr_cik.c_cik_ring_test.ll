; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_ring_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_ring_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"radeon: cp failed to get scratch reg (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"radeon: cp failed to lock ring %d (%d).\0A\00", align 1
@PACKET3_SET_UCONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_UCONFIG_REG_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ring test on %d succeeded in %d usecs\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"radeon: ring %d test failed (scratch(0x%04X)=0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_ring_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call i32 @radeon_scratch_get(%struct.radeon_device* %10, i32* %6)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  %16 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @WREG32(i32 %19, i32 -889266515)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %23 = call i32 @radeon_ring_lock(%struct.radeon_device* %21, %struct.radeon_ring* %22, i32 3)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @radeon_scratch_free(%struct.radeon_device* %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %95

36:                                               ; preds = %18
  %37 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %38 = load i32, i32* @PACKET3_SET_UCONFIG_REG, align 4
  %39 = call i32 @PACKET3(i32 %38, i32 1)
  %40 = call i32 @radeon_ring_write(%struct.radeon_ring* %37, i32 %39)
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PACKET3_SET_UCONFIG_REG_START, align 4
  %44 = sub nsw i32 %42, %43
  %45 = ashr i32 %44, 2
  %46 = call i32 @radeon_ring_write(%struct.radeon_ring* %41, i32 %45)
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %47, i32 -559038737)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %51 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %49, %struct.radeon_ring* %50, i32 0)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %66, %36
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @RREG32(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, -559038737
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %69

64:                                               ; preds = %58
  %65 = call i32 @udelay(i32 1)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %52

69:                                               ; preds = %63, %52
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %77 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  br label %90

81:                                               ; preds = %69
  %82 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %83 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %81, %75
  %91 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @radeon_scratch_free(%struct.radeon_device* %91, i32 %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %26, %14
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @radeon_scratch_get(%struct.radeon_device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_scratch_free(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

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
