; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_ring_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_ring_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"radeon: cp failed to get scratch reg (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"radeon: cp failed to lock ring (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ring test succeeded in %d usecs\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"radeon: ring test failed (scratch(0x%04X)=0x%08X)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_ring_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
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
  br label %80

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @WREG32(i32 %19, i32 -889266515)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %23 = call i32 @radeon_ring_lock(%struct.radeon_device* %21, %struct.radeon_ring* %22, i32 2)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @radeon_scratch_free(%struct.radeon_device* %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %80

33:                                               ; preds = %18
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @PACKET0(i32 %35, i32 0)
  %37 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 %36)
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %39 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 -559038737)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %42 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %40, %struct.radeon_ring* %41, i32 0)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %57, %33
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @RREG32(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, -559038737
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %60

55:                                               ; preds = %49
  %56 = call i32 @udelay(i32 1)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %43

60:                                               ; preds = %54, %43
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @DRM_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %75

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @radeon_scratch_free(%struct.radeon_device* %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %26, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @radeon_scratch_get(%struct.radeon_device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_scratch_free(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
