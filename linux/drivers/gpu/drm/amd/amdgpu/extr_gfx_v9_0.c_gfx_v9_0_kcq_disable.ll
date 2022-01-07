; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kcq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kcq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.amdgpu_ring*, %struct.TYPE_3__ }
%struct.amdgpu_ring = type { i32 }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }

@.str = private unnamed_addr constant [26 x i8] c"Failed to lock KIQ (%d).\0A\00", align 1
@PACKET3_UNMAP_QUEUES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"KCQ disable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_kcq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_kcq_disable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.amdgpu_ring* %10, %struct.amdgpu_ring** %5, align 8
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 6, %15
  %17 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %11, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %64, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %24
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %35, i64 %37
  store %struct.amdgpu_ring* %38, %struct.amdgpu_ring** %6, align 8
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %40 = load i32, i32* @PACKET3_UNMAP_QUEUES, align 4
  %41 = call i32 @PACKET3(i32 %40, i32 4)
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %41)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %44 = call i32 @PACKET3_UNMAP_QUEUES_ACTION(i32 1)
  %45 = call i32 @PACKET3_UNMAP_QUEUES_QUEUE_SEL(i32 0)
  %46 = or i32 %44, %45
  %47 = call i32 @PACKET3_UNMAP_QUEUES_ENGINE_SEL(i32 0)
  %48 = or i32 %46, %47
  %49 = call i32 @PACKET3_UNMAP_QUEUES_NUM_QUEUES(i32 1)
  %50 = or i32 %48, %49
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PACKET3_UNMAP_QUEUES_DOORBELL_OFFSET0(i32 %55)
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %56)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %58, i32 0)
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %61 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %60, i32 0)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %63 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %62, i32 0)
  br label %64

64:                                               ; preds = %31
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %24

67:                                               ; preds = %24
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %69 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_ACTION(i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_QUEUE_SEL(i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_ENGINE_SEL(i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_NUM_QUEUES(i32) #1

declare dso_local i32 @PACKET3_UNMAP_QUEUES_DOORBELL_OFFSET0(i32) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
