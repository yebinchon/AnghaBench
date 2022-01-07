; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_debugfs_print_current_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_debugfs_print_current_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.seq_file = type { i32 }
%struct.ci_power_info = type { i64, %struct.radeon_ps }
%struct.radeon_ps = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"uvd    %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"vce    %sabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"power level avg    sclk: %u mclk: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ci_dpm_debugfs_print_current_performance_level(%struct.radeon_device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.ci_power_info*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %9)
  store %struct.ci_power_info* %10, %struct.ci_power_info** %5, align 8
  %11 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %12 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %11, i32 0, i32 1
  store %struct.radeon_ps* %12, %struct.radeon_ps** %6, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @ci_get_average_sclk_freq(%struct.radeon_device* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i32 @ci_get_average_mclk_freq(%struct.radeon_device* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %19 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %36, i32 %37)
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_get_average_sclk_freq(%struct.radeon_device*) #1

declare dso_local i32 @ci_get_average_mclk_freq(%struct.radeon_device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
