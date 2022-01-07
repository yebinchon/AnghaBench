; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_smc_dpm_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_smc_dpm_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_atomfwctrl_smc_dpm_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_smc_dpm_info_v4_1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@smc_dpm_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error retrieving BIOS Table Address!\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_atomfwctrl_get_smc_dpm_information(%struct.pp_hwmgr* %0, %struct.pp_atomfwctrl_smc_dpm_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_atomfwctrl_smc_dpm_parameters*, align 8
  %6 = alloca %struct.atom_smc_dpm_info_v4_1*, align 8
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_atomfwctrl_smc_dpm_parameters* %1, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %8 = load i32, i32* @smc_dpm_info, align 4
  %9 = call i32 @GetIndexIntoMasterDataTable(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @smu_atom_get_data_table(i32 %12, i32 %13, i32* null, i32* null, i32* null)
  %15 = inttoptr i64 %14 to %struct.atom_smc_dpm_info_v4_1*
  store %struct.atom_smc_dpm_info_v4_1* %15, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %16 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %17 = icmp ne %struct.atom_smc_dpm_info_v4_1* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %303

22:                                               ; preds = %2
  %23 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %24 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %23, i32 0, i32 55
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %27 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %26, i32 0, i32 55
  store i32 %25, i32* %27, align 4
  %28 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %29 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %28, i32 0, i32 54
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %32 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %31, i32 0, i32 54
  store i32 %30, i32* %32, align 4
  %33 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %34 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %33, i32 0, i32 53
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %37 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %36, i32 0, i32 53
  store i32 %35, i32* %37, align 4
  %38 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %39 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %38, i32 0, i32 52
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %42 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %41, i32 0, i32 52
  store i32 %40, i32* %42, align 4
  %43 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %44 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %43, i32 0, i32 51
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %47 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %46, i32 0, i32 51
  store i32 %45, i32* %47, align 4
  %48 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %49 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %48, i32 0, i32 50
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %52 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %51, i32 0, i32 50
  store i32 %50, i32* %52, align 4
  %53 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %54 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %53, i32 0, i32 49
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %57 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %56, i32 0, i32 49
  store i32 %55, i32* %57, align 4
  %58 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %59 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %58, i32 0, i32 48
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %62 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %61, i32 0, i32 48
  store i32 %60, i32* %62, align 4
  %63 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %64 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %63, i32 0, i32 47
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %67 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %66, i32 0, i32 47
  store i32 %65, i32* %67, align 4
  %68 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %69 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %68, i32 0, i32 46
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %72 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %71, i32 0, i32 46
  store i32 %70, i32* %72, align 4
  %73 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %74 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %73, i32 0, i32 45
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %77 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %76, i32 0, i32 45
  store i32 %75, i32* %77, align 4
  %78 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %79 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %78, i32 0, i32 44
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %82 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %81, i32 0, i32 44
  store i32 %80, i32* %82, align 4
  %83 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %84 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %83, i32 0, i32 43
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %87 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %86, i32 0, i32 43
  store i32 %85, i32* %87, align 4
  %88 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %89 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %88, i32 0, i32 42
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %92 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %91, i32 0, i32 42
  store i32 %90, i32* %92, align 4
  %93 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %94 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %93, i32 0, i32 41
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %97 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %96, i32 0, i32 41
  store i32 %95, i32* %97, align 4
  %98 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %99 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %98, i32 0, i32 40
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %102 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %101, i32 0, i32 40
  store i32 %100, i32* %102, align 4
  %103 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %104 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %103, i32 0, i32 39
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %107 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %106, i32 0, i32 39
  store i32 %105, i32* %107, align 4
  %108 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %109 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %108, i32 0, i32 38
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %112 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %111, i32 0, i32 38
  store i32 %110, i32* %112, align 4
  %113 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %114 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %113, i32 0, i32 37
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %117 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %116, i32 0, i32 37
  store i32 %115, i32* %117, align 4
  %118 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %119 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %118, i32 0, i32 36
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %122 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %121, i32 0, i32 36
  store i32 %120, i32* %122, align 4
  %123 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %124 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %123, i32 0, i32 35
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %127 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %126, i32 0, i32 35
  store i32 %125, i32* %127, align 4
  %128 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %129 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %128, i32 0, i32 34
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %132 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %131, i32 0, i32 34
  store i32 %130, i32* %132, align 4
  %133 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %134 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %133, i32 0, i32 33
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %137 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %136, i32 0, i32 33
  store i32 %135, i32* %137, align 4
  %138 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %139 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %138, i32 0, i32 32
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %142 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %141, i32 0, i32 32
  store i32 %140, i32* %142, align 4
  %143 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %144 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %143, i32 0, i32 31
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %147 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %146, i32 0, i32 31
  store i32 %145, i32* %147, align 4
  %148 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %149 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %148, i32 0, i32 30
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %152 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %151, i32 0, i32 30
  store i32 %150, i32* %152, align 4
  %153 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %154 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %153, i32 0, i32 29
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %157 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %156, i32 0, i32 29
  store i32 %155, i32* %157, align 4
  %158 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %159 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %158, i32 0, i32 28
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %162 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %161, i32 0, i32 28
  store i32 %160, i32* %162, align 4
  %163 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %164 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %163, i32 0, i32 27
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %167 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %166, i32 0, i32 27
  store i32 %165, i32* %167, align 4
  %168 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %169 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %168, i32 0, i32 26
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %172 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %171, i32 0, i32 26
  store i32 %170, i32* %172, align 4
  %173 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %174 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %173, i32 0, i32 25
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %177 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %176, i32 0, i32 25
  store i32 %175, i32* %177, align 4
  %178 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %179 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %178, i32 0, i32 24
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %182 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %181, i32 0, i32 24
  store i32 %180, i32* %182, align 4
  %183 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %184 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %183, i32 0, i32 23
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %187 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %186, i32 0, i32 23
  store i32 %185, i32* %187, align 4
  %188 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %189 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %188, i32 0, i32 22
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %192 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %191, i32 0, i32 22
  store i32 %190, i32* %192, align 4
  %193 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %194 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %193, i32 0, i32 21
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %197 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %196, i32 0, i32 21
  store i32 %195, i32* %197, align 4
  %198 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %199 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %198, i32 0, i32 20
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %202 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %201, i32 0, i32 20
  store i32 %200, i32* %202, align 4
  %203 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %204 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %203, i32 0, i32 19
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %207 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %206, i32 0, i32 19
  store i32 %205, i32* %207, align 4
  %208 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %209 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %208, i32 0, i32 18
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %212 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %211, i32 0, i32 18
  store i32 %210, i32* %212, align 4
  %213 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %214 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %213, i32 0, i32 17
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %217 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %216, i32 0, i32 17
  store i32 %215, i32* %217, align 4
  %218 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %219 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %218, i32 0, i32 16
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %222 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %221, i32 0, i32 16
  store i32 %220, i32* %222, align 4
  %223 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %224 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %223, i32 0, i32 15
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %227 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %226, i32 0, i32 15
  store i32 %225, i32* %227, align 4
  %228 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %229 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %228, i32 0, i32 14
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %232 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %231, i32 0, i32 14
  store i32 %230, i32* %232, align 4
  %233 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %234 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %233, i32 0, i32 13
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %237 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %236, i32 0, i32 13
  store i32 %235, i32* %237, align 4
  %238 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %239 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %238, i32 0, i32 12
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %242 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %241, i32 0, i32 12
  store i32 %240, i32* %242, align 4
  %243 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %244 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %243, i32 0, i32 11
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %247 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %246, i32 0, i32 11
  store i32 %245, i32* %247, align 4
  %248 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %249 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %248, i32 0, i32 10
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %252 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %251, i32 0, i32 10
  store i32 %250, i32* %252, align 4
  %253 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %254 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %257 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %256, i32 0, i32 9
  store i32 %255, i32* %257, align 4
  %258 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %259 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %262 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %261, i32 0, i32 8
  store i32 %260, i32* %262, align 4
  %263 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %264 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %267 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %266, i32 0, i32 7
  store i32 %265, i32* %267, align 4
  %268 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %269 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %272 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %271, i32 0, i32 6
  store i32 %270, i32* %272, align 4
  %273 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %274 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %277 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %276, i32 0, i32 5
  store i32 %275, i32* %277, align 4
  %278 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %279 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %282 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 4
  %283 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %284 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %287 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  %288 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %289 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %292 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 4
  %293 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %294 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %297 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  %298 = load %struct.atom_smc_dpm_info_v4_1*, %struct.atom_smc_dpm_info_v4_1** %6, align 8
  %299 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_1, %struct.atom_smc_dpm_info_v4_1* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.pp_atomfwctrl_smc_dpm_parameters*, %struct.pp_atomfwctrl_smc_dpm_parameters** %5, align 8
  %302 = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, %struct.pp_atomfwctrl_smc_dpm_parameters* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 4
  store i32 0, i32* %3, align 4
  br label %303

303:                                              ; preds = %22, %18
  %304 = load i32, i32* %3, align 4
  ret i32 %304
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
