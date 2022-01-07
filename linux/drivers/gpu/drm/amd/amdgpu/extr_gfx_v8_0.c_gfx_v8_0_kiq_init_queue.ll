; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_kiq_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_kiq_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i64, %struct.vi_mqd*, %struct.amdgpu_device* }
%struct.vi_mqd = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vi_mqd** }
%struct.vi_mqd_allocation = type { i32, i32 }

@AMDGPU_MAX_COMPUTE_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v8_0_kiq_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_kiq_init_queue(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.vi_mqd*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 5
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 4
  %11 = load %struct.vi_mqd*, %struct.vi_mqd** %10, align 8
  store %struct.vi_mqd* %11, %struct.vi_mqd** %4, align 8
  %12 = load i32, i32* @AMDGPU_MAX_COMPUTE_RINGS, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = call i32 @gfx_v8_0_kiq_setting(%struct.amdgpu_ring* %13)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.vi_mqd**, %struct.vi_mqd*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vi_mqd*, %struct.vi_mqd** %24, i64 %26
  %28 = load %struct.vi_mqd*, %struct.vi_mqd** %27, align 8
  %29 = icmp ne %struct.vi_mqd* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %19
  %31 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.vi_mqd**, %struct.vi_mqd*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.vi_mqd*, %struct.vi_mqd** %36, i64 %38
  %40 = load %struct.vi_mqd*, %struct.vi_mqd** %39, align 8
  %41 = call i32 @memcpy(%struct.vi_mqd* %31, %struct.vi_mqd* %40, i32 8)
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
  %60 = call i32 @vi_srbm_select(%struct.amdgpu_device* %50, i32 %53, i32 %56, i32 %59, i32 0)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %63 = call i32 @gfx_v8_0_mqd_commit(%struct.amdgpu_device* %61, %struct.vi_mqd* %62)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = call i32 @vi_srbm_select(%struct.amdgpu_device* %64, i32 0, i32 0, i32 0, i32 0)
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %126

69:                                               ; preds = %1
  %70 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %71 = bitcast %struct.vi_mqd* %70 to i8*
  %72 = call i32 @memset(i8* %71, i32 0, i32 8)
  %73 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %74 = bitcast %struct.vi_mqd* %73 to %struct.vi_mqd_allocation*
  %75 = getelementptr inbounds %struct.vi_mqd_allocation, %struct.vi_mqd_allocation* %74, i32 0, i32 0
  store i32 -1, i32* %75, align 4
  %76 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %77 = bitcast %struct.vi_mqd* %76 to %struct.vi_mqd_allocation*
  %78 = getelementptr inbounds %struct.vi_mqd_allocation, %struct.vi_mqd_allocation* %77, i32 0, i32 1
  store i32 -1, i32* %78, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %87 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @vi_srbm_select(%struct.amdgpu_device* %82, i32 %85, i32 %88, i32 %91, i32 0)
  %93 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %94 = call i32 @gfx_v8_0_mqd_init(%struct.amdgpu_ring* %93)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %96 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %97 = call i32 @gfx_v8_0_mqd_commit(%struct.amdgpu_device* %95, %struct.vi_mqd* %96)
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = call i32 @vi_srbm_select(%struct.amdgpu_device* %98, i32 0, i32 0, i32 0, i32 0)
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load %struct.vi_mqd**, %struct.vi_mqd*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.vi_mqd*, %struct.vi_mqd** %107, i64 %109
  %111 = load %struct.vi_mqd*, %struct.vi_mqd** %110, align 8
  %112 = icmp ne %struct.vi_mqd* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %69
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load %struct.vi_mqd**, %struct.vi_mqd*** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.vi_mqd*, %struct.vi_mqd** %118, i64 %120
  %122 = load %struct.vi_mqd*, %struct.vi_mqd** %121, align 8
  %123 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %124 = call i32 @memcpy(%struct.vi_mqd* %122, %struct.vi_mqd* %123, i32 8)
  br label %125

125:                                              ; preds = %113, %69
  br label %126

126:                                              ; preds = %125, %42
  ret i32 0
}

declare dso_local i32 @gfx_v8_0_kiq_setting(%struct.amdgpu_ring*) #1

declare dso_local i32 @memcpy(%struct.vi_mqd*, %struct.vi_mqd*, i32) #1

declare dso_local i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vi_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v8_0_mqd_commit(%struct.amdgpu_device*, %struct.vi_mqd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @gfx_v8_0_mqd_init(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
