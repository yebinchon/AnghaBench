; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_copy_vbios_bootup_values_3_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_copy_vbios_bootup_values_3_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_atomfwctrl_bios_boot_up_values = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_firmware_info_v3_1 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SMU9_SYSPLL0_SOCCLK_ID = common dso_local global i32 0, align 4
@SMU9_SYSPLL0_DCEFCLK_ID = common dso_local global i32 0, align 4
@SMU9_SYSPLL0_ECLK_ID = common dso_local global i32 0, align 4
@SMU9_SYSPLL0_VCLK_ID = common dso_local global i32 0, align 4
@SMU9_SYSPLL0_DCLK_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.atom_firmware_info_v3_1*)* @pp_atomfwctrl_copy_vbios_bootup_values_3_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_atomfwctrl_copy_vbios_bootup_values_3_1(%struct.pp_hwmgr* %0, %struct.pp_atomfwctrl_bios_boot_up_values* %1, %struct.atom_firmware_info_v3_1* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_atomfwctrl_bios_boot_up_values*, align 8
  %6 = alloca %struct.atom_firmware_info_v3_1*, align 8
  %7 = alloca i8*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_atomfwctrl_bios_boot_up_values* %1, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  store %struct.atom_firmware_info_v3_1* %2, %struct.atom_firmware_info_v3_1** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %6, align 8
  %9 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %12 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %11, i32 0, i32 12
  store i32 %10, i32* %12, align 4
  %13 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %6, align 8
  %14 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %17 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 8
  %18 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %6, align 8
  %19 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %22 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 4
  %23 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %6, align 8
  %24 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %27 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %6, align 8
  %29 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %32 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %6, align 8
  %34 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %37 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %6, align 8
  %39 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %42 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %6, align 8
  %44 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %47 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %49 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %48, i32 0, i32 4
  store i8* null, i8** %49, align 8
  %50 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %51 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %50, i32 0, i32 3
  store i8* null, i8** %51, align 8
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %53 = load i32, i32* @SMU9_SYSPLL0_SOCCLK_ID, align 4
  %54 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %52, i32 %53, i32 0, i8** %7)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %3
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %59 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %3
  %61 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %62 = load i32, i32* @SMU9_SYSPLL0_DCEFCLK_ID, align 4
  %63 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %61, i32 %62, i32 0, i8** %7)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %68 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %71 = load i32, i32* @SMU9_SYSPLL0_ECLK_ID, align 4
  %72 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %70, i32 %71, i32 0, i8** %7)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %77 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %80 = load i32, i32* @SMU9_SYSPLL0_VCLK_ID, align 4
  %81 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %79, i32 %80, i32 0, i8** %7)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %86 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %89 = load i32, i32* @SMU9_SYSPLL0_DCLK_ID, align 4
  %90 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %88, i32 %89, i32 0, i8** %7)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %95 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %92, %87
  ret void
}

declare dso_local i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
