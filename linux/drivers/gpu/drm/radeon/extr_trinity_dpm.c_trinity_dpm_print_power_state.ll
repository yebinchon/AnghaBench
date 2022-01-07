; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_print_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_print_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32, i32, i32, i32 }
%struct.trinity_ps = type { i32, %struct.trinity_pl* }
%struct.trinity_pl = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\09\09power level %d    sclk: %u vddc: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trinity_dpm_print_power_state(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trinity_ps*, align 8
  %7 = alloca %struct.trinity_pl*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %8 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %9 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %8)
  store %struct.trinity_ps* %9, %struct.trinity_ps** %6, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @r600_dpm_print_class_info(i32 %12, i32 %15)
  %17 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @r600_dpm_print_cap_info(i32 %19)
  %21 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %51, %2
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %31 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %36 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %35, i32 0, i32 1
  %37 = load %struct.trinity_pl*, %struct.trinity_pl** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %37, i64 %39
  store %struct.trinity_pl* %40, %struct.trinity_pl** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.trinity_pl*, %struct.trinity_pl** %7, align 8
  %43 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = load %struct.trinity_pl*, %struct.trinity_pl** %7, align 8
  %47 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @trinity_convert_voltage_index_to_value(%struct.radeon_device* %45, i32 %48)
  %50 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %57 = call i32 @r600_dpm_print_ps_status(%struct.radeon_device* %55, %struct.radeon_ps* %56)
  ret void
}

declare dso_local %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @r600_dpm_print_class_info(i32, i32) #1

declare dso_local i32 @r600_dpm_print_cap_info(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i32 @trinity_convert_voltage_index_to_value(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_dpm_print_ps_status(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
