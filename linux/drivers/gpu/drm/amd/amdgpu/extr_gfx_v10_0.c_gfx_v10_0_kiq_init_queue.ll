; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i64, %struct.v10_compute_mqd*, %struct.amdgpu_device* }
%struct.v10_compute_mqd = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v10_compute_mqd** }

@AMDGPU_MAX_COMPUTE_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v10_0_kiq_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_kiq_init_queue(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.v10_compute_mqd*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 5
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 4
  %11 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %10, align 8
  store %struct.v10_compute_mqd* %11, %struct.v10_compute_mqd** %4, align 8
  %12 = load i32, i32* @AMDGPU_MAX_COMPUTE_RINGS, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = call i32 @gfx_v10_0_kiq_setting(%struct.amdgpu_ring* %13)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.v10_compute_mqd**, %struct.v10_compute_mqd*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %24, i64 %26
  %28 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %27, align 8
  %29 = icmp ne %struct.v10_compute_mqd* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %19
  %31 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.v10_compute_mqd**, %struct.v10_compute_mqd*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %36, i64 %38
  %40 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %39, align 8
  %41 = call i32 @memcpy(%struct.v10_compute_mqd* %31, %struct.v10_compute_mqd* %40, i32 4)
  br label %42

42:                                               ; preds = %30, %19
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %46 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %45)
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @nv_grbm_select(%struct.amdgpu_device* %50, i32 %53, i32 %56, i32 %59, i32 0)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %62 = call i32 @gfx_v10_0_kiq_init_register(%struct.amdgpu_ring* %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = call i32 @nv_grbm_select(%struct.amdgpu_device* %63, i32 0, i32 0, i32 0, i32 0)
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %118

68:                                               ; preds = %1
  %69 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %70 = bitcast %struct.v10_compute_mqd* %69 to i8*
  %71 = call i32 @memset(i8* %70, i32 0, i32 4)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %80 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %83 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @nv_grbm_select(%struct.amdgpu_device* %75, i32 %78, i32 %81, i32 %84, i32 0)
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %87 = call i32 @gfx_v10_0_compute_mqd_init(%struct.amdgpu_ring* %86)
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %89 = call i32 @gfx_v10_0_kiq_init_register(%struct.amdgpu_ring* %88)
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %91 = call i32 @nv_grbm_select(%struct.amdgpu_device* %90, i32 0, i32 0, i32 0, i32 0)
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.v10_compute_mqd**, %struct.v10_compute_mqd*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %99, i64 %101
  %103 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %102, align 8
  %104 = icmp ne %struct.v10_compute_mqd* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %68
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load %struct.v10_compute_mqd**, %struct.v10_compute_mqd*** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %110, i64 %112
  %114 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %113, align 8
  %115 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %116 = call i32 @memcpy(%struct.v10_compute_mqd* %114, %struct.v10_compute_mqd* %115, i32 4)
  br label %117

117:                                              ; preds = %105, %68
  br label %118

118:                                              ; preds = %117, %42
  ret i32 0
}

declare dso_local i32 @gfx_v10_0_kiq_setting(%struct.amdgpu_ring*) #1

declare dso_local i32 @memcpy(%struct.v10_compute_mqd*, %struct.v10_compute_mqd*, i32) #1

declare dso_local i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nv_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_kiq_init_register(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @gfx_v10_0_compute_mqd_init(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
