; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_init_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_init_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@mmCPC_INT_CNTL = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@CP_INT_CNTL_RING0__OPCODE_ERROR_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i32)* @kgd_init_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_init_interrupts(%struct.kgd_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.kgd_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %9 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %8)
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %10, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %18, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @lock_srbm(%struct.kgd_dev* %25, i32 %26, i32 %27, i32 0, i32 0)
  %29 = load i32, i32* @mmCPC_INT_CNTL, align 4
  %30 = load i32, i32* @CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK, align 4
  %31 = load i32, i32* @CP_INT_CNTL_RING0__OPCODE_ERROR_INT_ENABLE_MASK, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @WREG32(i32 %29, i32 %32)
  %34 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %35 = call i32 @unlock_srbm(%struct.kgd_dev* %34)
  ret i32 0
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @lock_srbm(%struct.kgd_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @unlock_srbm(%struct.kgd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
