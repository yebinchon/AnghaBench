; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kcq_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kcq_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, i32, i32, %struct.v9_mqd*, %struct.amdgpu_device* }
%struct.v9_mqd = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.amdgpu_ring* }
%struct.TYPE_3__ = type { %struct.v9_mqd** }
%struct.v9_mqd_allocation = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v9_0_kcq_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_kcq_init_queue(%struct.amdgpu_ring* %0) #0 {
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
  br i1 %26, label %86, label %27

27:                                               ; preds = %1
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %86, label %32

32:                                               ; preds = %27
  %33 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %34 = bitcast %struct.v9_mqd* %33 to i8*
  %35 = call i32 @memset(i8* %34, i32 0, i32 8)
  %36 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %37 = bitcast %struct.v9_mqd* %36 to %struct.v9_mqd_allocation*
  %38 = getelementptr inbounds %struct.v9_mqd_allocation, %struct.v9_mqd_allocation* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 4
  %39 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %40 = bitcast %struct.v9_mqd* %39 to %struct.v9_mqd_allocation*
  %41 = getelementptr inbounds %struct.v9_mqd_allocation, %struct.v9_mqd_allocation* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 4
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %45, i32 %48, i32 %51, i32 %54, i32 0)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %57 = call i32 @gfx_v9_0_mqd_init(%struct.amdgpu_ring* %56)
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %58, i32 0, i32 0, i32 0, i32 0)
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 2
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.v9_mqd**, %struct.v9_mqd*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.v9_mqd*, %struct.v9_mqd** %67, i64 %69
  %71 = load %struct.v9_mqd*, %struct.v9_mqd** %70, align 8
  %72 = icmp ne %struct.v9_mqd* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %32
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.v9_mqd**, %struct.v9_mqd*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.v9_mqd*, %struct.v9_mqd** %78, i64 %80
  %82 = load %struct.v9_mqd*, %struct.v9_mqd** %81, align 8
  %83 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %84 = call i32 @memcpy(%struct.v9_mqd* %82, %struct.v9_mqd* %83, i32 8)
  br label %85

85:                                               ; preds = %73, %32
  br label %123

86:                                               ; preds = %27, %1
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %86
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load %struct.v9_mqd**, %struct.v9_mqd*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.v9_mqd*, %struct.v9_mqd** %96, i64 %98
  %100 = load %struct.v9_mqd*, %struct.v9_mqd** %99, align 8
  %101 = icmp ne %struct.v9_mqd* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %91
  %103 = load %struct.v9_mqd*, %struct.v9_mqd** %4, align 8
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load %struct.v9_mqd**, %struct.v9_mqd*** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.v9_mqd*, %struct.v9_mqd** %108, i64 %110
  %112 = load %struct.v9_mqd*, %struct.v9_mqd** %111, align 8
  %113 = call i32 @memcpy(%struct.v9_mqd* %103, %struct.v9_mqd* %112, i32 8)
  br label %114

114:                                              ; preds = %102, %91
  %115 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %116 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %118 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %117)
  br label %122

119:                                              ; preds = %86
  %120 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %121 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %120)
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %85
  ret i32 0
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc15_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_mqd_init(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.v9_mqd*, %struct.v9_mqd*, i32) #1

declare dso_local i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
