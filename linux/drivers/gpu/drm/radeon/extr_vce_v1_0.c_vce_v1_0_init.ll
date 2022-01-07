; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@TN_RING_TYPE_VCE1_INDEX = common dso_local global i64 0, align 8
@TN_RING_TYPE_VCE2_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"VCE initialized successfully.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vce_v1_0_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i32 @vce_v1_0_start(%struct.radeon_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %16 = load i64, i64* @TN_RING_TYPE_VCE1_INDEX, align 8
  %17 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %15, i64 %16
  store %struct.radeon_ring* %17, %struct.radeon_ring** %4, align 8
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = load i64, i64* @TN_RING_TYPE_VCE1_INDEX, align 8
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %23 = call i32 @radeon_ring_test(%struct.radeon_device* %20, i64 %21, %struct.radeon_ring* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %12
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %12
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %32, align 8
  %34 = load i64, i64* @TN_RING_TYPE_VCE2_INDEX, align 8
  %35 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %33, i64 %34
  store %struct.radeon_ring* %35, %struct.radeon_ring** %4, align 8
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = load i64, i64* @TN_RING_TYPE_VCE2_INDEX, align 8
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %41 = call i32 @radeon_ring_test(%struct.radeon_device* %38, i64 %39, %struct.radeon_ring* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %46 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %30
  %49 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %44, %26, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @vce_v1_0_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
