; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_test_create_and_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_test_create_and_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i32 }

@R600_RING_TYPE_UVD_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to get dummy create msg\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get dummy destroy msg\0A\00", align 1
@TN_RING_TYPE_VCE1_INDEX = common dso_local global i32 0, align 4
@TN_RING_TYPE_VCE2_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to lock ring A %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to emit fence\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ring*, %struct.radeon_fence**)* @radeon_test_create_and_emit_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_test_create_and_emit_fence(%struct.radeon_device* %0, %struct.radeon_ring* %1, %struct.radeon_fence** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca %struct.radeon_fence**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store %struct.radeon_fence** %2, %struct.radeon_fence*** %7, align 8
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, -558907665
  store i32 %13, i32* %8, align 4
  %14 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %15 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @R600_RING_TYPE_UVD_INDEX, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %21 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %22 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @radeon_uvd_get_create_msg(%struct.radeon_device* %20, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %116

31:                                               ; preds = %19
  %32 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.radeon_fence**, %struct.radeon_fence*** %7, align 8
  %38 = call i32 @radeon_uvd_get_destroy_msg(%struct.radeon_device* %32, i32 %35, i32 %36, %struct.radeon_fence** %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %116

44:                                               ; preds = %31
  br label %115

45:                                               ; preds = %3
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TN_RING_TYPE_VCE1_INDEX, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TN_RING_TYPE_VCE2_INDEX, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %51, %45
  %58 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %60 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @radeon_vce_get_create_msg(%struct.radeon_device* %58, i32 %61, i32 %62, i32* null)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %116

69:                                               ; preds = %57
  %70 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %72 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.radeon_fence**, %struct.radeon_fence*** %7, align 8
  %76 = call i32 @radeon_vce_get_destroy_msg(%struct.radeon_device* %70, i32 %73, i32 %74, %struct.radeon_fence** %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %116

82:                                               ; preds = %69
  br label %114

83:                                               ; preds = %51
  %84 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %85 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %86 = call i32 @radeon_ring_lock(%struct.radeon_device* %84, %struct.radeon_ring* %85, i32 64)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %91 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %116

95:                                               ; preds = %83
  %96 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %97 = load %struct.radeon_fence**, %struct.radeon_fence*** %7, align 8
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %99 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @radeon_fence_emit(%struct.radeon_device* %96, %struct.radeon_fence** %97, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %108 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %106, %struct.radeon_ring* %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %4, align 4
  br label %116

110:                                              ; preds = %95
  %111 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %112 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %113 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %111, %struct.radeon_ring* %112, i32 0)
  br label %114

114:                                              ; preds = %110, %82
  br label %115

115:                                              ; preds = %114, %44
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %104, %89, %79, %66, %41, %28
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @radeon_uvd_get_create_msg(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_uvd_get_destroy_msg(%struct.radeon_device*, i32, i32, %struct.radeon_fence**) #1

declare dso_local i32 @radeon_vce_get_create_msg(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @radeon_vce_get_destroy_msg(%struct.radeon_device*, i32, i32, %struct.radeon_fence**) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, %struct.radeon_fence**, i32) #1

declare dso_local i32 @radeon_ring_unlock_undo(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
