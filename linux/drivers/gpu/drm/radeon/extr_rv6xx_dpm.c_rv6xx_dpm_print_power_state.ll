; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_print_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_print_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32, i32, i32, i32 }
%struct.rv6xx_ps = type { %struct.rv6xx_pl, %struct.rv6xx_pl, %struct.rv6xx_pl }
%struct.rv6xx_pl = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\09\09power level 0    sclk: %u mclk: %u vddc: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\09\09power level 1    sclk: %u mclk: %u vddc: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\09\09power level 2    sclk: %u mclk: %u vddc: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv6xx_dpm_print_power_state(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv6xx_ps*, align 8
  %6 = alloca %struct.rv6xx_pl*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %7 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %8 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %7)
  store %struct.rv6xx_ps* %8, %struct.rv6xx_ps** %5, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @r600_dpm_print_class_info(i32 %11, i32 %14)
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @r600_dpm_print_cap_info(i32 %18)
  %20 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %5, align 8
  %28 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %27, i32 0, i32 2
  store %struct.rv6xx_pl* %28, %struct.rv6xx_pl** %6, align 8
  %29 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %6, align 8
  %30 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %6, align 8
  %33 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %6, align 8
  %36 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34, i32 %37)
  %39 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %5, align 8
  %40 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %39, i32 0, i32 1
  store %struct.rv6xx_pl* %40, %struct.rv6xx_pl** %6, align 8
  %41 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %6, align 8
  %42 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %6, align 8
  %45 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %6, align 8
  %48 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %46, i32 %49)
  %51 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %5, align 8
  %52 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %51, i32 0, i32 0
  store %struct.rv6xx_pl* %52, %struct.rv6xx_pl** %6, align 8
  %53 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %6, align 8
  %54 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %6, align 8
  %57 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %6, align 8
  %60 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %65 = call i32 @r600_dpm_print_ps_status(%struct.radeon_device* %63, %struct.radeon_ps* %64)
  ret void
}

declare dso_local %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @r600_dpm_print_class_info(i32, i32) #1

declare dso_local i32 @r600_dpm_print_cap_info(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i32 @r600_dpm_print_ps_status(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
