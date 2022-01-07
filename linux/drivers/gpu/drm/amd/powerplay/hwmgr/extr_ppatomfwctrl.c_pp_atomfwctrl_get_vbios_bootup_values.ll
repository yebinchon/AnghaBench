; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_vbios_bootup_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_vbios_bootup_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_atomfwctrl_bios_boot_up_values = type { i32 }
%struct.atom_firmware_info_v3_2 = type { i32 }
%struct.atom_firmware_info_v3_1 = type { i32 }
%struct.atom_common_table_header = type { i32, i32 }

@firmwareinfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error retrieving BIOS firmwareinfo!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Fw info table revision does not match!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_atomfwctrl_get_vbios_bootup_values(%struct.pp_hwmgr* %0, %struct.pp_atomfwctrl_bios_boot_up_values* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_atomfwctrl_bios_boot_up_values*, align 8
  %6 = alloca %struct.atom_firmware_info_v3_2*, align 8
  %7 = alloca %struct.atom_firmware_info_v3_1*, align 8
  %8 = alloca %struct.atom_common_table_header*, align 8
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_atomfwctrl_bios_boot_up_values* %1, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  store %struct.atom_common_table_header* null, %struct.atom_common_table_header** %8, align 8
  %10 = load i32, i32* @firmwareinfo, align 4
  %11 = call i32 @GetIndexIntoMasterDataTable(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @smu_atom_get_data_table(i32 %14, i32 %15, i32* null, i32* null, i32* null)
  %17 = inttoptr i64 %16 to %struct.atom_common_table_header*
  store %struct.atom_common_table_header* %17, %struct.atom_common_table_header** %8, align 8
  %18 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %8, align 8
  %19 = icmp ne %struct.atom_common_table_header* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %64

24:                                               ; preds = %2
  %25 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %8, align 8
  %26 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %8, align 8
  %31 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %8, align 8
  %36 = bitcast %struct.atom_common_table_header* %35 to %struct.atom_firmware_info_v3_2*
  store %struct.atom_firmware_info_v3_2* %36, %struct.atom_firmware_info_v3_2** %6, align 8
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %38 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %39 = load %struct.atom_firmware_info_v3_2*, %struct.atom_firmware_info_v3_2** %6, align 8
  %40 = call i32 @pp_atomfwctrl_copy_vbios_bootup_values_3_2(%struct.pp_hwmgr* %37, %struct.pp_atomfwctrl_bios_boot_up_values* %38, %struct.atom_firmware_info_v3_2* %39)
  br label %63

41:                                               ; preds = %29, %24
  %42 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %8, align 8
  %43 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %8, align 8
  %48 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %8, align 8
  %53 = bitcast %struct.atom_common_table_header* %52 to %struct.atom_firmware_info_v3_1*
  store %struct.atom_firmware_info_v3_1* %53, %struct.atom_firmware_info_v3_1** %7, align 8
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %55 = load %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.pp_atomfwctrl_bios_boot_up_values** %5, align 8
  %56 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %7, align 8
  %57 = call i32 @pp_atomfwctrl_copy_vbios_bootup_values_3_1(%struct.pp_hwmgr* %54, %struct.pp_atomfwctrl_bios_boot_up_values* %55, %struct.atom_firmware_info_v3_1* %56)
  br label %62

58:                                               ; preds = %46, %41
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %34
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %58, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @GetIndexIntoMasterDataTable(i32) #1

declare dso_local i64 @smu_atom_get_data_table(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pp_atomfwctrl_copy_vbios_bootup_values_3_2(%struct.pp_hwmgr*, %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.atom_firmware_info_v3_2*) #1

declare dso_local i32 @pp_atomfwctrl_copy_vbios_bootup_values_3_1(%struct.pp_hwmgr*, %struct.pp_atomfwctrl_bios_boot_up_values*, %struct.atom_firmware_info_v3_1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
