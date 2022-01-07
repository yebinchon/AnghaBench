; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_preempt_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_preempt_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, i32*, i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_kiq }
%struct.amdgpu_kiq = type { %struct.TYPE_4__*, %struct.amdgpu_ring }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_ring*, %struct.amdgpu_ring*, i32, i32, i64)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PREEMPT_QUEUES_NO_UNMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ring %d failed to preempt ib\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v10_0_ring_preempt_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_ring_preempt_ib(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_kiq*, align 8
  %8 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %6, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.amdgpu_kiq* %14, %struct.amdgpu_kiq** %7, align 8
  %15 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %7, align 8
  %16 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %15, i32 0, i32 1
  store %struct.amdgpu_ring* %16, %struct.amdgpu_ring** %8, align 8
  %17 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %7, align 8
  %18 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.amdgpu_ring*, %struct.amdgpu_ring*, i32, i32, i64)*, i32 (%struct.amdgpu_ring*, %struct.amdgpu_ring*, i32, i32, i64)** %25, align 8
  %27 = icmp ne i32 (%struct.amdgpu_ring*, %struct.amdgpu_ring*, i32, i32, i64)* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21, %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %103

31:                                               ; preds = %21
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %33 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %7, align 8
  %34 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @amdgpu_ring_alloc(%struct.amdgpu_ring* %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %103

43:                                               ; preds = %31
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %45 = call i32 @amdgpu_ring_set_preempt_cond_exec(%struct.amdgpu_ring* %44, i32 0)
  %46 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %7, align 8
  %47 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.amdgpu_ring*, %struct.amdgpu_ring*, i32, i32, i64)*, i32 (%struct.amdgpu_ring*, %struct.amdgpu_ring*, i32, i32, i64)** %49, align 8
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %53 = load i32, i32* @PREEMPT_QUEUES_NO_UNMAP, align 4
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = call i32 %50(%struct.amdgpu_ring* %51, %struct.amdgpu_ring* %52, i32 %53, i32 %56, i64 %60)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %63 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %83, %43
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @le32_to_cpu(i32 %77)
  %79 = icmp eq i64 %73, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %86

81:                                               ; preds = %70
  %82 = call i32 @udelay(i32 1)
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %64

86:                                               ; preds = %80, %64
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  %95 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %96 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %92, %86
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %101 = call i32 @amdgpu_ring_set_preempt_cond_exec(%struct.amdgpu_ring* %100, i32 1)
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %40, %28
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_set_preempt_cond_exec(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
