; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_smc_voltage_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_smc_voltage_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32*)* @ci_populate_smc_voltage_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_smc_voltage_tables(%struct.radeon_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @ci_populate_smc_vddc_table(%struct.radeon_device* %7, i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ci_populate_smc_vddci_table(%struct.radeon_device* %15, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ci_populate_smc_mvdd_table(%struct.radeon_device* %23, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28, %20, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ci_populate_smc_vddc_table(%struct.radeon_device*, i32*) #1

declare dso_local i32 @ci_populate_smc_vddci_table(%struct.radeon_device*, i32*) #1

declare dso_local i32 @ci_populate_smc_mvdd_table(%struct.radeon_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
