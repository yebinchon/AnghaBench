; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kiq_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kiq_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i64, %struct.v9_mqd*, %struct.amdgpu_device* }
%struct.v9_mqd = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v9_mqd** }
%struct.v9_mqd_allocation = type { i32, i32 }

@AMDGPU_MAX_COMPUTE_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v9_0_kiq_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_kiq_init_queue(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.v9_mqd*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 5
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 4
  %11 = load %struct.v9_mqd*, %struct.v9_mqd** %10, align 8
  store %struct.v9_mqd* %11, %struct.v9_mqd** %4, align 8
  %12 = load i32, i32* @AMDGPU_MAX_COMPUTE_RINGS, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = call i32 @gfx_v9_0_kiq_setting(%struct.amdgpu_ring* %13)
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
  %24 = load %struct.v9_mqd**, %struct.v9_mqd*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.v9_mqd*, %struct.v9_mqd** %24, i64 %26
  %28 = load %struct.v9_mqd*, %struct.v9_mqd** %27, align 8
  %29 = icmp ne %struct.v9_mqd* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %19
  %31 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.v9_mqd**, %struct.v9_mqd*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.v9_mqd*, %struct.v9_mqd** %36, i64 %38
  %40 = load %struct.v9_mqd*, %struct.v9_mqd** %39, align 8
  %41 = call i32 @memcpy(%struct.v9_mqd* %31, %struct.v9_mqd* %40, i32 8)
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
  %60 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %50, i32 %53, i32 %56, i32 %59, i32 0)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %62 = call i32 @gfx_v9_0_kiq_init_register(%struct.amdgpu_ring* %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %63, i32 0, i32 0, i32 0, i32 0)
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %124

68:                                               ; preds = %1
  %69 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %70 = bitcast %struct.v9_mqd* %69 to i8*
  %71 = call i32 @memset(i8* %70, i32 0, i32 8)
  %72 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %73 = bitcast %struct.v9_mqd* %72 to %struct.v9_mqd_allocation*
  %74 = getelementptr inbounds %struct.v9_mqd_allocation, %struct.v9_mqd_allocation* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 4
  %75 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %76 = bitcast %struct.v9_mqd* %75 to %struct.v9_mqd_allocation*
  %77 = getelementptr inbounds %struct.v9_mqd_allocation, %struct.v9_mqd_allocation* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 4
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 1
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %83 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %86 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %89 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %81, i32 %84, i32 %87, i32 %90, i32 0)
  %92 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %93 = call i32 @gfx_v9_0_mqd_init(%struct.amdgpu_ring* %92)
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %95 = call i32 @gfx_v9_0_kiq_init_register(%struct.amdgpu_ring* %94)
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %96, i32 0, i32 0, i32 0, i32 0)
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load %struct.v9_mqd**, %struct.v9_mqd*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.v9_mqd*, %struct.v9_mqd** %105, i64 %107
  %109 = load %struct.v9_mqd*, %struct.v9_mqd** %108, align 8
  %110 = icmp ne %struct.v9_mqd* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %68
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load %struct.v9_mqd**, %struct.v9_mqd*** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.v9_mqd*, %struct.v9_mqd** %116, i64 %118
  %120 = load %struct.v9_mqd*, %struct.v9_mqd** %119, align 8
  %121 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %122 = call i32 @memcpy(%struct.v9_mqd* %120, %struct.v9_mqd* %121, i32 8)
  br label %123

123:                                              ; preds = %111, %68
  br label %124

124:                                              ; preds = %123, %42
  ret i32 0
}

declare dso_local i32 @gfx_v9_0_kiq_setting(%struct.amdgpu_ring*) #1

declare dso_local i32 @memcpy(%struct.v9_mqd*, %struct.v9_mqd*, i32) #1

declare dso_local i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc15_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_kiq_init_register(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @gfx_v9_0_mqd_init(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
