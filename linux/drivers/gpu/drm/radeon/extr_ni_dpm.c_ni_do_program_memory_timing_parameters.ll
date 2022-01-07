; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_do_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_do_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i32 }
%struct.ni_power_info = type { i64 }
%struct.ni_ps = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@SMC_NIslands_MCArbDramTimingRegisters = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, i32)* @ni_do_program_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_do_program_memory_timing_parameters(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rv7xx_power_info*, align 8
  %8 = alloca %struct.ni_power_info*, align 8
  %9 = alloca %struct.ni_ps*, align 8
  %10 = alloca %struct.TYPE_3__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %13)
  store %struct.rv7xx_power_info* %14, %struct.rv7xx_power_info** %7, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %16 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %15)
  store %struct.ni_power_info* %16, %struct.ni_power_info** %8, align 8
  %17 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %18 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %17)
  store %struct.ni_ps* %18, %struct.ni_ps** %9, align 8
  %19 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %63, %3
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.ni_ps*, %struct.ni_ps** %9, align 8
  %23 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %20
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = load %struct.ni_ps*, %struct.ni_ps** %9, align 8
  %29 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @ni_populate_memory_timing_parameters(%struct.radeon_device* %27, i32* %33, %struct.TYPE_3__* %10)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %66

38:                                               ; preds = %26
  %39 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %40 = load %struct.ni_power_info*, %struct.ni_power_info** %8, align 8
  %41 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @SMC_NIslands_MCArbDramTimingRegisters, align 4
  %44 = load i32, i32* @data, align 4
  %45 = call i64 @offsetof(i32 %43, i32 %44)
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = add i64 %46, %51
  %53 = trunc i64 %52 to i32
  %54 = bitcast %struct.TYPE_3__* %10 to i32*
  %55 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %56 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %39, i32 %53, i32* %54, i32 4, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  br label %66

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %20

66:                                               ; preds = %61, %37, %20
  %67 = load i32, i32* %12, align 4
  ret i32 %67
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ni_populate_memory_timing_parameters(%struct.radeon_device*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
