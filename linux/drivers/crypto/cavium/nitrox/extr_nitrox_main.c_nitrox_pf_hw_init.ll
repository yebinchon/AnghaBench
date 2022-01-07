; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_pf_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_pf_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"BIST check failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_device*)* @nitrox_pf_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_pf_hw_init(%struct.nitrox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  %5 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %6 = call i32 @nitrox_bist_check(%struct.nitrox_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %11 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %18 = call i32 @nitrox_get_hwinfo(%struct.nitrox_device* %17)
  %19 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %20 = call i32 @nitrox_config_nps_core_unit(%struct.nitrox_device* %19)
  %21 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %22 = call i32 @nitrox_config_aqm_unit(%struct.nitrox_device* %21)
  %23 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %24 = call i32 @nitrox_config_nps_pkt_unit(%struct.nitrox_device* %23)
  %25 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %26 = call i32 @nitrox_config_pom_unit(%struct.nitrox_device* %25)
  %27 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %28 = call i32 @nitrox_config_efl_unit(%struct.nitrox_device* %27)
  %29 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %30 = call i32 @nitrox_config_bmi_unit(%struct.nitrox_device* %29)
  %31 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %32 = call i32 @nitrox_config_bmo_unit(%struct.nitrox_device* %31)
  %33 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %34 = call i32 @nitrox_config_lbc_unit(%struct.nitrox_device* %33)
  %35 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %36 = call i32 @nitrox_config_rand_unit(%struct.nitrox_device* %35)
  %37 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %38 = call i32 @nitrox_load_fw(%struct.nitrox_device* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %16
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %16
  %44 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %45 = call i32 @nitrox_config_emu_unit(%struct.nitrox_device* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %41, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @nitrox_bist_check(%struct.nitrox_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @nitrox_get_hwinfo(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_nps_core_unit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_aqm_unit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_nps_pkt_unit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_pom_unit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_efl_unit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_bmi_unit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_bmo_unit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_lbc_unit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_rand_unit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_load_fw(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_config_emu_unit(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
