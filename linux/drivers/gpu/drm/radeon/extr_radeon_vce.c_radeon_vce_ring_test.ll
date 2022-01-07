; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_ring_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_ring_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"radeon: vce failed to lock ring %d (%d).\0A\00", align 1
@VCE_CMD_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ring test on %d succeeded in %d usecs\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"radeon: ring %d test failed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vce_ring_test(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %11 = call i64 @vce_v1_0_get_rptr(%struct.radeon_device* %9, %struct.radeon_ring* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %14 = call i32 @radeon_ring_lock(%struct.radeon_device* %12, %struct.radeon_ring* %13, i32 16)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %26 = load i32, i32* @VCE_CMD_END, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = call i32 @radeon_ring_write(%struct.radeon_ring* %25, i32 %27)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %31 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %29, %struct.radeon_ring* %30, i32 0)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %47, %24
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %41 = call i64 @vce_v1_0_get_rptr(%struct.radeon_device* %39, %struct.radeon_ring* %40)
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %50

45:                                               ; preds = %38
  %46 = call i32 @udelay(i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %32

50:                                               ; preds = %44, %32
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
  br label %69

62:                                               ; preds = %50
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @ETIMEDOUT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @vce_v1_0_get_rptr(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
