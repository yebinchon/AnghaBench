; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_find_memory_clock_with_highest_vco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_find_memory_clock_with_highest_vco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_clock_dividers = type { i32 }
%struct.rv6xx_power_info = type { i32 }

@COMPUTE_MEMORY_PLL_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i64, i64, %struct.atom_clock_dividers*, i64*)* @rv6xx_find_memory_clock_with_highest_vco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_find_memory_clock_with_highest_vco(%struct.radeon_device* %0, i64 %1, i64 %2, %struct.atom_clock_dividers* %3, i64* %4) #0 {
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.atom_clock_dividers*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.rv6xx_power_info*, align 8
  %12 = alloca %struct.atom_clock_dividers, align 4
  %13 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.atom_clock_dividers* %3, %struct.atom_clock_dividers** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %15 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %14)
  store %struct.rv6xx_power_info* %15, %struct.rv6xx_power_info** %11, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %17 = load i32, i32* @COMPUTE_MEMORY_PLL_PARAM, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @radeon_atom_get_clock_dividers(%struct.radeon_device* %16, i32 %17, i64 %18, i32 0, %struct.atom_clock_dividers* %12)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %11, align 8
  %24 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @rv6xx_calculate_vco_frequency(i64 %22, %struct.atom_clock_dividers* %12, i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.atom_clock_dividers*, %struct.atom_clock_dividers** %9, align 8
  %33 = bitcast %struct.atom_clock_dividers* %32 to i8*
  %34 = bitcast %struct.atom_clock_dividers* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load i64, i64* %13, align 8
  %36 = load i64*, i64** %10, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %21
  br label %38

38:                                               ; preds = %37, %5
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i64, i32, %struct.atom_clock_dividers*) #1

declare dso_local i64 @rv6xx_calculate_vco_frequency(i64, %struct.atom_clock_dividers*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
