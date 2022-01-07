; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"IH: CPC GENERIC2_INT, me:%d, pipe:%d, queue:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @gfx_v10_0_kiq_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_kiq_irq(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.amdgpu_ring* %14, %struct.amdgpu_ring** %10, align 8
  %15 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 12
  %19 = ashr i32 %18, 2
  store i32 %19, i32* %7, align 4
  %20 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 3
  %24 = ashr i32 %23, 0
  store i32 %24, i32* %8, align 4
  %25 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 112
  %29 = ashr i32 %28, 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %35 = call i32 @amdgpu_fence_process(%struct.amdgpu_ring* %34)
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_fence_process(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
