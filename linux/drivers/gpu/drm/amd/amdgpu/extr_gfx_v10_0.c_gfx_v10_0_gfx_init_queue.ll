; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_gfx_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_gfx_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i64, %struct.v10_gfx_mqd*, %struct.amdgpu_device* }
%struct.v10_gfx_mqd = type { i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v10_gfx_mqd** }

@AMDGPU_MAX_GFX_RINGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v10_0_gfx_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_gfx_init_queue(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.v10_gfx_mqd*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 5
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 4
  %10 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %9, align 8
  store %struct.v10_gfx_mqd* %10, %struct.v10_gfx_mqd** %4, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %66, label %15

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %15
  %21 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %22 = bitcast %struct.v10_gfx_mqd* %21 to i8*
  %23 = call i32 @memset(i8* %22, i32 0, i32 4)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nv_grbm_select(%struct.amdgpu_device* %27, i32 %30, i32 %33, i32 %36, i32 0)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %39 = call i32 @gfx_v10_0_gfx_mqd_init(%struct.amdgpu_ring* %38)
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = call i32 @nv_grbm_select(%struct.amdgpu_device* %40, i32 0, i32 0, i32 0, i32 0)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.v10_gfx_mqd**, %struct.v10_gfx_mqd*** %48, align 8
  %50 = load i64, i64* @AMDGPU_MAX_GFX_RINGS, align 8
  %51 = getelementptr inbounds %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %49, i64 %50
  %52 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %51, align 8
  %53 = icmp ne %struct.v10_gfx_mqd* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %20
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.v10_gfx_mqd**, %struct.v10_gfx_mqd*** %58, align 8
  %60 = load i64, i64* @AMDGPU_MAX_GFX_RINGS, align 8
  %61 = getelementptr inbounds %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %59, i64 %60
  %62 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %61, align 8
  %63 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %64 = call i32 @memcpy(%struct.v10_gfx_mqd* %62, %struct.v10_gfx_mqd* %63, i32 4)
  br label %65

65:                                               ; preds = %54, %20
  br label %101

66:                                               ; preds = %15, %1
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %66
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load %struct.v10_gfx_mqd**, %struct.v10_gfx_mqd*** %75, align 8
  %77 = load i64, i64* @AMDGPU_MAX_GFX_RINGS, align 8
  %78 = getelementptr inbounds %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %76, i64 %77
  %79 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %78, align 8
  %80 = icmp ne %struct.v10_gfx_mqd* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load %struct.v10_gfx_mqd**, %struct.v10_gfx_mqd*** %86, align 8
  %88 = load i64, i64* @AMDGPU_MAX_GFX_RINGS, align 8
  %89 = getelementptr inbounds %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %87, i64 %88
  %90 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %89, align 8
  %91 = call i32 @memcpy(%struct.v10_gfx_mqd* %82, %struct.v10_gfx_mqd* %90, i32 4)
  br label %92

92:                                               ; preds = %81, %71
  %93 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %94 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %96 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %95)
  br label %100

97:                                               ; preds = %66
  %98 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %99 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %98)
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %65
  ret i32 0
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nv_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_gfx_mqd_init(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.v10_gfx_mqd*, %struct.v10_gfx_mqd*, i32) #1

declare dso_local i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
