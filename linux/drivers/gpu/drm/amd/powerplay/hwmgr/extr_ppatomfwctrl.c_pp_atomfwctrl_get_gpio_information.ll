; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_gpio_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_gpio_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_atomfwctrl_gpio_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_smu_info_v3_1 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@smu_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error retrieving BIOS smu_info Table Address!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_atomfwctrl_get_gpio_information(%struct.pp_hwmgr* %0, %struct.pp_atomfwctrl_gpio_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_atomfwctrl_gpio_parameters*, align 8
  %6 = alloca %struct.atom_smu_info_v3_1*, align 8
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_atomfwctrl_gpio_parameters* %1, %struct.pp_atomfwctrl_gpio_parameters** %5, align 8
  %8 = load i32, i32* @smu_info, align 4
  %9 = call i32 @GetIndexIntoMasterDataTable(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @smu_atom_get_data_table(i32 %12, i32 %13, i32* null, i32* null, i32* null)
  %15 = inttoptr i64 %14 to %struct.atom_smu_info_v3_1*
  store %struct.atom_smu_info_v3_1* %15, %struct.atom_smu_info_v3_1** %6, align 8
  %16 = load %struct.atom_smu_info_v3_1*, %struct.atom_smu_info_v3_1** %6, align 8
  %17 = icmp ne %struct.atom_smu_info_v3_1* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.atom_smu_info_v3_1*, %struct.atom_smu_info_v3_1** %6, align 8
  %22 = getelementptr inbounds %struct.atom_smu_info_v3_1, %struct.atom_smu_info_v3_1* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pp_atomfwctrl_gpio_parameters*, %struct.pp_atomfwctrl_gpio_parameters** %5, align 8
  %25 = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, %struct.pp_atomfwctrl_gpio_parameters* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.atom_smu_info_v3_1*, %struct.atom_smu_info_v3_1** %6, align 8
  %27 = getelementptr inbounds %struct.atom_smu_info_v3_1, %struct.atom_smu_info_v3_1* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pp_atomfwctrl_gpio_parameters*, %struct.pp_atomfwctrl_gpio_parameters** %5, align 8
  %30 = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, %struct.pp_atomfwctrl_gpio_parameters* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.atom_smu_info_v3_1*, %struct.atom_smu_info_v3_1** %6, align 8
  %32 = getelementptr inbounds %struct.atom_smu_info_v3_1, %struct.atom_smu_info_v3_1* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pp_atomfwctrl_gpio_parameters*, %struct.pp_atomfwctrl_gpio_parameters** %5, align 8
  %35 = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, %struct.pp_atomfwctrl_gpio_parameters* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.atom_smu_info_v3_1*, %struct.atom_smu_info_v3_1** %6, align 8
  %37 = getelementptr inbounds %struct.atom_smu_info_v3_1, %struct.atom_smu_info_v3_1* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pp_atomfwctrl_gpio_parameters*, %struct.pp_atomfwctrl_gpio_parameters** %5, align 8
  %40 = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, %struct.pp_atomfwctrl_gpio_parameters* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.atom_smu_info_v3_1*, %struct.atom_smu_info_v3_1** %6, align 8
  %42 = getelementptr inbounds %struct.atom_smu_info_v3_1, %struct.atom_smu_info_v3_1* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pp_atomfwctrl_gpio_parameters*, %struct.pp_atomfwctrl_gpio_parameters** %5, align 8
  %45 = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, %struct.pp_atomfwctrl_gpio_parameters* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.atom_smu_info_v3_1*, %struct.atom_smu_info_v3_1** %6, align 8
  %47 = getelementptr inbounds %struct.atom_smu_info_v3_1, %struct.atom_smu_info_v3_1* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pp_atomfwctrl_gpio_parameters*, %struct.pp_atomfwctrl_gpio_parameters** %5, align 8
  %50 = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, %struct.pp_atomfwctrl_gpio_parameters* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.atom_smu_info_v3_1*, %struct.atom_smu_info_v3_1** %6, align 8
  %52 = getelementptr inbounds %struct.atom_smu_info_v3_1, %struct.atom_smu_info_v3_1* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pp_atomfwctrl_gpio_parameters*, %struct.pp_atomfwctrl_gpio_parameters** %5, align 8
  %55 = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, %struct.pp_atomfwctrl_gpio_parameters* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.atom_smu_info_v3_1*, %struct.atom_smu_info_v3_1** %6, align 8
  %57 = getelementptr inbounds %struct.atom_smu_info_v3_1, %struct.atom_smu_info_v3_1* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pp_atomfwctrl_gpio_parameters*, %struct.pp_atomfwctrl_gpio_parameters** %5, align 8
  %60 = getelementptr inbounds %struct.pp_atomfwctrl_gpio_parameters, %struct.pp_atomfwctrl_gpio_parameters* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %20, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @GetIndexIntoMasterDataTable(i32) #1

declare dso_local i64 @smu_atom_get_data_table(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
