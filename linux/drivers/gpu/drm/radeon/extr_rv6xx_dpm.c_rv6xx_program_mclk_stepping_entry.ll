; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_mclk_stepping_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_mclk_stepping_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_clock_dividers = type { i64, i32, i32, i32 }

@COMPUTE_MEMORY_PLL_PARAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32)* @rv6xx_program_mclk_stepping_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv6xx_program_mclk_stepping_entry(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.atom_clock_dividers, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %10 = load i32, i32* @COMPUTE_MEMORY_PLL_PARAM, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @radeon_atom_get_clock_dividers(%struct.radeon_device* %9, i32 %10, i32 %11, i32 0, %struct.atom_clock_dividers* %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rv6xx_memory_clock_entry_set_reference_divider(%struct.radeon_device* %18, i32 %19, i32 %21)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rv6xx_memory_clock_entry_set_feedback_divider(%struct.radeon_device* %23, i32 %24, i32 %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @rv6xx_memory_clock_entry_set_post_divider(%struct.radeon_device* %28, i32 %29, i32 %31)
  %33 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %17
  %37 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @rv6xx_memory_clock_entry_enable_post_divider(%struct.radeon_device* %37, i32 %38, i32 1)
  br label %44

40:                                               ; preds = %17
  %41 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @rv6xx_memory_clock_entry_enable_post_divider(%struct.radeon_device* %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %40, %36
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @rv6xx_memory_clock_entry_set_reference_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv6xx_memory_clock_entry_set_feedback_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv6xx_memory_clock_entry_set_post_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv6xx_memory_clock_entry_enable_post_divider(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
