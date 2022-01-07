; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kcq_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kcq_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, i32, i32, %struct.v10_compute_mqd*, %struct.amdgpu_device* }
%struct.v10_compute_mqd = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.amdgpu_ring* }
%struct.TYPE_3__ = type { %struct.v10_compute_mqd** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v10_0_kcq_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_kcq_init_queue(%struct.amdgpu_ring* %0) #0 {
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
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %15, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i64 0
  %18 = ptrtoint %struct.amdgpu_ring* %12 to i64
  %19 = ptrtoint %struct.amdgpu_ring* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 40
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %80, label %27

27:                                               ; preds = %1
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %80, label %32

32:                                               ; preds = %27
  %33 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %34 = bitcast %struct.v10_compute_mqd* %33 to i8*
  %35 = call i32 @memset(i8* %34, i32 0, i32 4)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @nv_grbm_select(%struct.amdgpu_device* %39, i32 %42, i32 %45, i32 %48, i32 0)
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %51 = call i32 @gfx_v10_0_compute_mqd_init(%struct.amdgpu_ring* %50)
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = call i32 @nv_grbm_select(%struct.amdgpu_device* %52, i32 0, i32 0, i32 0, i32 0)
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.v10_compute_mqd**, %struct.v10_compute_mqd*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %61, i64 %63
  %65 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %64, align 8
  %66 = icmp ne %struct.v10_compute_mqd* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %32
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load %struct.v10_compute_mqd**, %struct.v10_compute_mqd*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %72, i64 %74
  %76 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %75, align 8
  %77 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %78 = call i32 @memcpy(%struct.v10_compute_mqd* %76, %struct.v10_compute_mqd* %77, i32 4)
  br label %79

79:                                               ; preds = %67, %32
  br label %117

80:                                               ; preds = %27, %1
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %80
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load %struct.v10_compute_mqd**, %struct.v10_compute_mqd*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %90, i64 %92
  %94 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %93, align 8
  %95 = icmp ne %struct.v10_compute_mqd* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %85
  %97 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load %struct.v10_compute_mqd**, %struct.v10_compute_mqd*** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %102, i64 %104
  %106 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %105, align 8
  %107 = call i32 @memcpy(%struct.v10_compute_mqd* %97, %struct.v10_compute_mqd* %106, i32 4)
  br label %108

108:                                              ; preds = %96, %85
  %109 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %112 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %111)
  br label %116

113:                                              ; preds = %80
  %114 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %115 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %114)
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116, %79
  ret i32 0
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nv_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_compute_mqd_init(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.v10_compute_mqd*, %struct.v10_compute_mqd*, i32) #1

declare dso_local i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
