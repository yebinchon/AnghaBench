; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_pa_sc_tile_steering_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_pa_sc_tile_steering_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PA_SC_TILE_STEERING_OVERRIDE__NUM_SC__SHIFT = common dso_local global i32 0, align 4
@PA_SC_TILE_STEERING_OVERRIDE__NUM_SC_MASK = common dso_local global i32 0, align 4
@PA_SC_TILE_STEERING_OVERRIDE__NUM_RB_PER_SC__SHIFT = common dso_local global i32 0, align 4
@PA_SC_TILE_STEERING_OVERRIDE__NUM_RB_PER_SC_MASK = common dso_local global i32 0, align 4
@PA_SC_TILE_STEERING_OVERRIDE__NUM_PACKER_PER_SC__SHIFT = common dso_local global i32 0, align 4
@PA_SC_TILE_STEERING_OVERRIDE__NUM_PACKER_PER_SC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_init_pa_sc_tile_steering_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_init_pa_sc_tile_steering_override(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %13, %18
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %19, %24
  store i32 %25, i32* %3, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = call i32 @gfx_v10_0_get_rb_active_bitmap(%struct.amdgpu_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @hweight32(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %30, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @order_base_2(i32 %42)
  %44 = load i32, i32* @PA_SC_TILE_STEERING_OVERRIDE__NUM_SC__SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @PA_SC_TILE_STEERING_OVERRIDE__NUM_SC_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @order_base_2(i32 %50)
  %52 = load i32, i32* @PA_SC_TILE_STEERING_OVERRIDE__NUM_RB_PER_SC__SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @PA_SC_TILE_STEERING_OVERRIDE__NUM_RB_PER_SC_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @order_base_2(i32 %58)
  %60 = load i32, i32* @PA_SC_TILE_STEERING_OVERRIDE__NUM_PACKER_PER_SC__SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @PA_SC_TILE_STEERING_OVERRIDE__NUM_PACKER_PER_SC_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @gfx_v10_0_get_rb_active_bitmap(%struct.amdgpu_device*) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
