; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_test_ring_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_test_ring_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i32 }
%struct.radeon_semaphore = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to create semaphore\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to lock ring A %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Fence 1 signaled without waiting for semaphore.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to lock ring B %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to wait for sync fence 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Fence 2 signaled without waiting for semaphore.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Error while testing ring sync (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_test_ring_sync(%struct.radeon_device* %0, %struct.radeon_ring* %1, %struct.radeon_ring* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca %struct.radeon_fence*, align 8
  %8 = alloca %struct.radeon_fence*, align 8
  %9 = alloca %struct.radeon_semaphore*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  store %struct.radeon_ring* %2, %struct.radeon_ring** %6, align 8
  store %struct.radeon_fence* null, %struct.radeon_fence** %7, align 8
  store %struct.radeon_fence* null, %struct.radeon_fence** %8, align 8
  store %struct.radeon_semaphore* null, %struct.radeon_semaphore** %9, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call i32 @radeon_semaphore_create(%struct.radeon_device* %11, %struct.radeon_semaphore** %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %136

17:                                               ; preds = %3
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %20 = call i32 @radeon_ring_lock(%struct.radeon_device* %18, %struct.radeon_ring* %19, i32 64)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %25 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %136

28:                                               ; preds = %17
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %9, align 8
  %34 = call i32 @radeon_semaphore_emit_wait(%struct.radeon_device* %29, i32 %32, %struct.radeon_semaphore* %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %37 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %35, %struct.radeon_ring* %36, i32 0)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = call i32 @radeon_test_create_and_emit_fence(%struct.radeon_device* %38, %struct.radeon_ring* %39, %struct.radeon_fence** %7)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %136

44:                                               ; preds = %28
  %45 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %47 = call i32 @radeon_ring_lock(%struct.radeon_device* %45, %struct.radeon_ring* %46, i32 64)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %136

55:                                               ; preds = %44
  %56 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %58 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %9, align 8
  %61 = call i32 @radeon_semaphore_emit_wait(%struct.radeon_device* %56, i32 %59, %struct.radeon_semaphore* %60)
  %62 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %64 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %62, %struct.radeon_ring* %63, i32 0)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %66 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %67 = call i32 @radeon_test_create_and_emit_fence(%struct.radeon_device* %65, %struct.radeon_ring* %66, %struct.radeon_fence** %8)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %136

71:                                               ; preds = %55
  %72 = call i32 @msleep(i32 1000)
  %73 = load %struct.radeon_fence*, %struct.radeon_fence** %7, align 8
  %74 = call i64 @radeon_fence_signaled(%struct.radeon_fence* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %136

78:                                               ; preds = %71
  %79 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %80 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %81 = call i32 @radeon_ring_lock(%struct.radeon_device* %79, %struct.radeon_ring* %80, i32 64)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %86 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.radeon_ring* %85)
  br label %136

87:                                               ; preds = %78
  %88 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %89 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %90 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %9, align 8
  %93 = call i32 @radeon_semaphore_emit_signal(%struct.radeon_device* %88, i32 %91, %struct.radeon_semaphore* %92)
  %94 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %95 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %96 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %94, %struct.radeon_ring* %95, i32 0)
  %97 = load %struct.radeon_fence*, %struct.radeon_fence** %7, align 8
  %98 = call i32 @radeon_fence_wait(%struct.radeon_fence* %97, i32 0)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %87
  %102 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %136

103:                                              ; preds = %87
  %104 = call i32 @msleep(i32 1000)
  %105 = load %struct.radeon_fence*, %struct.radeon_fence** %8, align 8
  %106 = call i64 @radeon_fence_signaled(%struct.radeon_fence* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %136

110:                                              ; preds = %103
  %111 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %112 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %113 = call i32 @radeon_ring_lock(%struct.radeon_device* %111, %struct.radeon_ring* %112, i32 64)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %118 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.radeon_ring* %117)
  br label %136

119:                                              ; preds = %110
  %120 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %121 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %122 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %9, align 8
  %125 = call i32 @radeon_semaphore_emit_signal(%struct.radeon_device* %120, i32 %123, %struct.radeon_semaphore* %124)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %127 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %128 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %126, %struct.radeon_ring* %127, i32 0)
  %129 = load %struct.radeon_fence*, %struct.radeon_fence** %8, align 8
  %130 = call i32 @radeon_fence_wait(%struct.radeon_fence* %129, i32 0)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %136

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135, %133, %116, %108, %101, %84, %76, %70, %50, %43, %23, %15
  %137 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %138 = call i32 @radeon_semaphore_free(%struct.radeon_device* %137, %struct.radeon_semaphore** %9, i32* null)
  %139 = load %struct.radeon_fence*, %struct.radeon_fence** %7, align 8
  %140 = icmp ne %struct.radeon_fence* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i32 @radeon_fence_unref(%struct.radeon_fence** %7)
  br label %143

143:                                              ; preds = %141, %136
  %144 = load %struct.radeon_fence*, %struct.radeon_fence** %8, align 8
  %145 = icmp ne %struct.radeon_fence* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 @radeon_fence_unref(%struct.radeon_fence** %8)
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %151, %148
  ret void
}

declare dso_local i32 @radeon_semaphore_create(%struct.radeon_device*, %struct.radeon_semaphore**) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_semaphore_emit_wait(%struct.radeon_device*, i32, %struct.radeon_semaphore*) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_test_create_and_emit_fence(%struct.radeon_device*, %struct.radeon_ring*, %struct.radeon_fence**) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @radeon_fence_signaled(%struct.radeon_fence*) #1

declare dso_local i32 @radeon_semaphore_emit_signal(%struct.radeon_device*, i32, %struct.radeon_semaphore*) #1

declare dso_local i32 @radeon_fence_wait(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_semaphore_free(%struct.radeon_device*, %struct.radeon_semaphore**, i32*) #1

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
