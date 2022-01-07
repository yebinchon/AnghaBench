; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_reg_write_reg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_reg_write_reg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device*, %struct.TYPE_3__* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@AMDGPU_RING_TYPE_GFX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32, i32)* @gfx_v10_0_ring_emit_reg_write_reg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_ring_emit_reg_write_reg_wait(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AMDGPU_RING_TYPE_GFX, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 0
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %23, align 8
  store %struct.amdgpu_device* %24, %struct.amdgpu_device** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @gfx_v10_0_wait_reg_mem(%struct.amdgpu_ring* %32, i32 %33, i32 0, i32 1, i32 %34, i32 %35, i32 %36, i32 %37, i32 32)
  br label %46

39:                                               ; preds = %5
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @amdgpu_ring_emit_reg_write_reg_wait_helper(%struct.amdgpu_ring* %40, i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %31
  ret void
}

declare dso_local i32 @gfx_v10_0_wait_reg_mem(%struct.amdgpu_ring*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_emit_reg_write_reg_wait_helper(%struct.amdgpu_ring*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
