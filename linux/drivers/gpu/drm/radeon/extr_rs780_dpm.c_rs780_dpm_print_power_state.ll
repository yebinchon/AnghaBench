; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_print_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_print_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32, i32, i32, i32 }
%struct.igp_ps = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\09\09power level 0    sclk: %u vddc_index: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\09\09power level 1    sclk: %u vddc_index: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs780_dpm_print_power_state(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.igp_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %6 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %7 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %6)
  store %struct.igp_ps* %7, %struct.igp_ps** %5, align 8
  %8 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @r600_dpm_print_class_info(i32 %10, i32 %13)
  %15 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @r600_dpm_print_cap_info(i32 %17)
  %19 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %27 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %30 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %34 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %37 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %42 = call i32 @r600_dpm_print_ps_status(%struct.radeon_device* %40, %struct.radeon_ps* %41)
  ret void
}

declare dso_local %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @r600_dpm_print_class_info(i32, i32) #1

declare dso_local i32 @r600_dpm_print_cap_info(i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @r600_dpm_print_ps_status(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
