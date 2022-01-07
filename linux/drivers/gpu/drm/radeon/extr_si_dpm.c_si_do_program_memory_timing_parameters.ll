; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_do_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_do_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.si_power_info = type { i32, i64 }
%struct.ni_ps = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@SMC_SIslands_MCArbDramTimingRegisters = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, i32)* @si_do_program_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_do_program_memory_timing_parameters(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.si_power_info*, align 8
  %8 = alloca %struct.ni_ps*, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %12)
  store %struct.si_power_info* %13, %struct.si_power_info** %7, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %15 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %14)
  store %struct.ni_ps* %15, %struct.ni_ps** %8, align 8
  %16 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %59, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %20 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %26 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @si_populate_memory_timing_parameters(%struct.radeon_device* %24, i32* %30, %struct.TYPE_3__* %9)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %62

35:                                               ; preds = %23
  %36 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %37 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %38 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @SMC_SIslands_MCArbDramTimingRegisters, align 4
  %41 = load i32, i32* @data, align 4
  %42 = call i64 @offsetof(i32 %40, i32 %41)
  %43 = add nsw i64 %39, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = add i64 %43, %48
  %50 = bitcast %struct.TYPE_3__* %9 to i32*
  %51 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %52 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @si_copy_bytes_to_smc(%struct.radeon_device* %36, i64 %49, i32* %50, i32 4, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %35
  br label %62

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %17

62:                                               ; preds = %57, %34, %17
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @si_populate_memory_timing_parameters(%struct.radeon_device*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @si_copy_bytes_to_smc(%struct.radeon_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
