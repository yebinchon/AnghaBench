; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_copy_vbios_bootup_values_3_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_copy_vbios_bootup_values_3_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_atomfwctrl_bios_boot_up_values = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_firmware_info_v3_2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SMU11_SYSPLL0_SOCCLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL0_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL0_DCEFCLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL0_ECLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL0_VCLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL0_DCLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL1_0_FCLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL1_2_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.atom_firmware_info_v3_2*)* @pp_atomfwctrl_copy_vbios_bootup_values_3_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_atomfwctrl_copy_vbios_bootup_values_3_2(%struct.pp_hwmgr* %0, %struct.pp_atomfwctrl_bios_boot_up_values* %1, %struct.atom_firmware_info_v3_2* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_atomfwctrl_bios_boot_up_values*, align 8
  %6 = alloca %struct.atom_firmware_info_v3_2*, align 8
  %7 = alloca i8*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_atomfwctrl_bios_boot_up_values* %1, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  store %struct.atom_firmware_info_v3_2* %2, %struct.atom_firmware_info_v3_2** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.atom_firmware_info_v3_2*, %struct.atom_firmware_info_v3_2** %6, align 8
  %9 = getelementptr inbounds %struct.atom_firmware_info_v3_2, %struct.atom_firmware_info_v3_2* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %12 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %11, i32 0, i32 13
  store i32 %10, i32* %12, align 4
  %13 = load %struct.atom_firmware_info_v3_2*, %struct.atom_firmware_info_v3_2** %6, align 8
  %14 = getelementptr inbounds %struct.atom_firmware_info_v3_2, %struct.atom_firmware_info_v3_2* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %17 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 8
  %18 = load %struct.atom_firmware_info_v3_2*, %struct.atom_firmware_info_v3_2** %6, align 8
  %19 = getelementptr inbounds %struct.atom_firmware_info_v3_2, %struct.atom_firmware_info_v3_2* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %22 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 4
  %23 = load %struct.atom_firmware_info_v3_2*, %struct.atom_firmware_info_v3_2** %6, align 8
  %24 = getelementptr inbounds %struct.atom_firmware_info_v3_2, %struct.atom_firmware_info_v3_2* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %27 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 8
  %28 = load %struct.atom_firmware_info_v3_2*, %struct.atom_firmware_info_v3_2** %6, align 8
  %29 = getelementptr inbounds %struct.atom_firmware_info_v3_2, %struct.atom_firmware_info_v3_2* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %32 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load %struct.atom_firmware_info_v3_2*, %struct.atom_firmware_info_v3_2** %6, align 8
  %34 = getelementptr inbounds %struct.atom_firmware_info_v3_2, %struct.atom_firmware_info_v3_2* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %37 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 8
  %38 = load %struct.atom_firmware_info_v3_2*, %struct.atom_firmware_info_v3_2** %6, align 8
  %39 = getelementptr inbounds %struct.atom_firmware_info_v3_2, %struct.atom_firmware_info_v3_2* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %42 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.atom_firmware_info_v3_2*, %struct.atom_firmware_info_v3_2** %6, align 8
  %44 = getelementptr inbounds %struct.atom_firmware_info_v3_2, %struct.atom_firmware_info_v3_2* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %47 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %49 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %48, i32 0, i32 5
  store i8* null, i8** %49, align 8
  %50 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %51 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %50, i32 0, i32 4
  store i8* null, i8** %51, align 8
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %53 = load i32, i32* @SMU11_SYSPLL0_SOCCLK_ID, align 4
  %54 = load i32, i32* @SMU11_SYSPLL0_ID, align 4
  %55 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %52, i32 %53, i32 %54, i8** %7)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %3
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %60 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %3
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %63 = load i32, i32* @SMU11_SYSPLL0_DCEFCLK_ID, align 4
  %64 = load i32, i32* @SMU11_SYSPLL0_ID, align 4
  %65 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %62, i32 %63, i32 %64, i8** %7)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %70 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %73 = load i32, i32* @SMU11_SYSPLL0_ECLK_ID, align 4
  %74 = load i32, i32* @SMU11_SYSPLL0_ID, align 4
  %75 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %72, i32 %73, i32 %74, i8** %7)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %80 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %83 = load i32, i32* @SMU11_SYSPLL0_VCLK_ID, align 4
  %84 = load i32, i32* @SMU11_SYSPLL0_ID, align 4
  %85 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %82, i32 %83, i32 %84, i8** %7)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %90 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %87, %81
  %92 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %93 = load i32, i32* @SMU11_SYSPLL0_DCLK_ID, align 4
  %94 = load i32, i32* @SMU11_SYSPLL0_ID, align 4
  %95 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %92, i32 %93, i32 %94, i8** %7)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %7, align 8
  %99 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %100 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %103 = load i32, i32* @SMU11_SYSPLL1_0_FCLK_ID, align 4
  %104 = load i32, i32* @SMU11_SYSPLL1_2_ID, align 4
  %105 = call i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %102, i32 %103, i32 %104, i8** %7)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %110 = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, %struct.pp_atomfwctrl_bios_boot_up_values* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %101
  ret void
}

declare dso_local i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
