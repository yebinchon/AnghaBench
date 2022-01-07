; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_is_occupied.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_kgd_hqd_is_occupied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_HQD_ACTIVE = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_BASE = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_BASE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i32, i64, i64)* @kgd_hqd_is_occupied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_hqd_is_occupied(%struct.kgd_dev* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kgd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.kgd_dev*, %struct.kgd_dev** %5, align 8
  %15 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %14)
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.kgd_dev*, %struct.kgd_dev** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @acquire_queue(%struct.kgd_dev* %16, i64 %17, i64 %18)
  %20 = load i32, i32* @GC, align 4
  %21 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %22 = call i32 @SOC15_REG_OFFSET(i32 %20, i32 0, i32 %21)
  %23 = call i64 @RREG32(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = call i64 @lower_32_bits(i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 8
  %32 = call i64 @upper_32_bits(i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* @GC, align 4
  %35 = load i32, i32* @mmCP_HQD_PQ_BASE, align 4
  %36 = call i32 @SOC15_REG_OFFSET(i32 %34, i32 0, i32 %35)
  %37 = call i64 @RREG32(i32 %36)
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %26
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* @GC, align 4
  %42 = load i32, i32* @mmCP_HQD_PQ_BASE_HI, align 4
  %43 = call i32 @SOC15_REG_OFFSET(i32 %41, i32 0, i32 %42)
  %44 = call i64 @RREG32(i32 %43)
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %39, %26
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.kgd_dev*, %struct.kgd_dev** %5, align 8
  %50 = call i32 @release_queue(%struct.kgd_dev* %49)
  %51 = load i32, i32* %11, align 4
  ret i32 %51
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @acquire_queue(%struct.kgd_dev*, i64, i64) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i64 @lower_32_bits(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @release_queue(%struct.kgd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
