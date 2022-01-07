; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_enable_kcq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_enable_kcq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_4__, %struct.amdgpu_kiq }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_kiq = type { %struct.TYPE_5__*, %struct.amdgpu_ring }
%struct.TYPE_5__ = type { i32, i32 (%struct.amdgpu_ring*, i32*)*, i32 (%struct.amdgpu_ring*, i64)*, i64 }
%struct.amdgpu_ring = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_MAX_COMPUTE_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid KCQ enabled: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"kiq ring mec %d pipe %d q %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to lock KIQ (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"KCQ enable failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gfx_enable_kcq(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_kiq*, align 8
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store %struct.amdgpu_kiq* %11, %struct.amdgpu_kiq** %4, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %14, i32 0, i32 1
  store %struct.amdgpu_ring* %15, %struct.amdgpu_ring** %5, align 8
  store i64 0, i64* %6, align 8
  %16 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32 (%struct.amdgpu_ring*, i32*)*, i32 (%struct.amdgpu_ring*, i32*)** %24, align 8
  %26 = icmp ne i32 (%struct.amdgpu_ring*, i32*)* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32 (%struct.amdgpu_ring*, i64)*, i32 (%struct.amdgpu_ring*, i64)** %31, align 8
  %33 = icmp ne i32 (%struct.amdgpu_ring*, i64)* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %20, %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %150

37:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @AMDGPU_MAX_COMPUTE_QUEUES, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @test_bit(i32 %43, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %68

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %54, 64
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %71

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  %66 = load i64, i64* %6, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %62, %51
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %38

71:                                               ; preds = %59, %38
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %79 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DRM_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77, i32 %80)
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %83 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %87, %91
  %93 = sext i32 %92 to i64
  %94 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %95 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %93, %98
  %100 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %82, i64 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %71
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %150

107:                                              ; preds = %71
  %108 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %109 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32 (%struct.amdgpu_ring*, i64)*, i32 (%struct.amdgpu_ring*, i64)** %111, align 8
  %113 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 %112(%struct.amdgpu_ring* %113, i64 %114)
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %138, %107
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %116
  %124 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %125 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32 (%struct.amdgpu_ring*, i32*)*, i32 (%struct.amdgpu_ring*, i32*)** %127, align 8
  %129 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 %128(%struct.amdgpu_ring* %129, i32* %136)
  br label %138

138:                                              ; preds = %123
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %116

141:                                              ; preds = %116
  %142 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %143 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %141
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %103, %34
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i64) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
