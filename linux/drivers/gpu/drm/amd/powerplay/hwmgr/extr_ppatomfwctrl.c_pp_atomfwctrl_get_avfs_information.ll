; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_avfs_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_avfs_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_atomfwctrl_avfs_parameters = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.atom_asic_profiling_info_v4_1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_asic_profiling_info_v4_2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_common_table_header = type { i32, i32 }

@asic_profiling_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Invalid VBIOS AVFS ProfilingInfo Revision!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_atomfwctrl_get_avfs_information(%struct.pp_hwmgr* %0, %struct.pp_atomfwctrl_avfs_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_atomfwctrl_avfs_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atom_asic_profiling_info_v4_1*, align 8
  %10 = alloca %struct.atom_asic_profiling_info_v4_2*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_atomfwctrl_avfs_parameters* %1, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %11 = load i32, i32* @asic_profiling_info, align 4
  %12 = call i32 @GetIndexIntoMasterDataTable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @smu_atom_get_data_table(i32 %15, i32 %16, i32* null, i32* null, i32* null)
  %18 = inttoptr i64 %17 to %struct.atom_asic_profiling_info_v4_1*
  store %struct.atom_asic_profiling_info_v4_1* %18, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %19 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %20 = icmp ne %struct.atom_asic_profiling_info_v4_1* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %532

22:                                               ; preds = %2
  %23 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %24 = bitcast %struct.atom_asic_profiling_info_v4_1* %23 to %struct.atom_common_table_header*
  %25 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %28 = bitcast %struct.atom_asic_profiling_info_v4_1* %27 to %struct.atom_common_table_header*
  %29 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %261

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %261

36:                                               ; preds = %33
  %37 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %38 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %37, i32 0, i32 34
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le32_to_cpu(i32 %39)
  %41 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %42 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %41, i32 0, i32 42
  store i8* %40, i8** %42, align 8
  %43 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %44 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %43, i32 0, i32 33
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le32_to_cpu(i32 %45)
  %47 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %48 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %47, i32 0, i32 41
  store i8* %46, i8** %48, align 8
  %49 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %50 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %49, i32 0, i32 32
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le32_to_cpu(i32 %51)
  %53 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %53, i32 0, i32 40
  store i8* %52, i8** %54, align 8
  %55 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %56 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %55, i32 0, i32 31
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le32_to_cpu(i32 %57)
  %59 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %60 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %59, i32 0, i32 39
  store i8* %58, i8** %60, align 8
  %61 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %62 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %61, i32 0, i32 30
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %66 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %65, i32 0, i32 38
  store i8* %64, i8** %66, align 8
  %67 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %68 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %67, i32 0, i32 29
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16_to_cpu(i32 %69)
  %71 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %72 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %71, i32 0, i32 37
  store i8* %70, i8** %72, align 8
  %73 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %74 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %73, i32 0, i32 28
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %77, i32 0, i32 36
  store i8* %76, i8** %78, align 8
  %79 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %80 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %79, i32 0, i32 27
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le16_to_cpu(i32 %81)
  %83 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %83, i32 0, i32 35
  store i8* %82, i8** %84, align 8
  %85 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %86 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %85, i32 0, i32 26
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %90 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %89, i32 0, i32 34
  store i8* %88, i8** %90, align 8
  %91 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %92 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %91, i32 0, i32 25
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le32_to_cpu(i32 %93)
  %95 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %96 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %95, i32 0, i32 33
  store i8* %94, i8** %96, align 8
  %97 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %98 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %97, i32 0, i32 24
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @le32_to_cpu(i32 %99)
  %101 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %102 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %101, i32 0, i32 32
  store i8* %100, i8** %102, align 8
  %103 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %104 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %103, i32 0, i32 23
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le32_to_cpu(i32 %105)
  %107 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %108 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %107, i32 0, i32 31
  store i8* %106, i8** %108, align 8
  %109 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %110 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %109, i32 0, i32 22
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @le32_to_cpu(i32 %111)
  %113 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %114 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %113, i32 0, i32 30
  store i8* %112, i8** %114, align 8
  %115 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %116 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %115, i32 0, i32 21
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le32_to_cpu(i32 %117)
  %119 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %120 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %119, i32 0, i32 29
  store i8* %118, i8** %120, align 8
  %121 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %122 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %121, i32 0, i32 20
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @le32_to_cpu(i32 %123)
  %125 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %126 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %125, i32 0, i32 28
  store i8* %124, i8** %126, align 8
  %127 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %128 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %127, i32 0, i32 19
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le32_to_cpu(i32 %129)
  %131 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %132 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %131, i32 0, i32 27
  store i8* %130, i8** %132, align 8
  %133 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %134 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %133, i32 0, i32 18
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le32_to_cpu(i32 %135)
  %137 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %138 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %137, i32 0, i32 26
  store i8* %136, i8** %138, align 8
  %139 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %140 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %139, i32 0, i32 17
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @le32_to_cpu(i32 %141)
  %143 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %144 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %143, i32 0, i32 25
  store i8* %142, i8** %144, align 8
  %145 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %146 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %145, i32 0, i32 16
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @le32_to_cpu(i32 %147)
  %149 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %150 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %149, i32 0, i32 24
  store i8* %148, i8** %150, align 8
  %151 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %152 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %151, i32 0, i32 15
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @le32_to_cpu(i32 %153)
  %155 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %156 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %155, i32 0, i32 23
  store i8* %154, i8** %156, align 8
  %157 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %158 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %161 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %160, i32 0, i32 22
  store i32 %159, i32* %161, align 4
  %162 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %163 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %162, i32 0, i32 13
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %166 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %165, i32 0, i32 21
  store i32 %164, i32* %166, align 8
  %167 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %168 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %167, i32 0, i32 12
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @le16_to_cpu(i32 %169)
  %171 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %172 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %171, i32 0, i32 20
  store i8* %170, i8** %172, align 8
  %173 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %174 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @le32_to_cpu(i32 %175)
  %177 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %178 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %177, i32 0, i32 19
  store i8* %176, i8** %178, align 8
  %179 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %180 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @le32_to_cpu(i32 %181)
  %183 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %184 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %183, i32 0, i32 18
  store i8* %182, i8** %184, align 8
  %185 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %186 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @le32_to_cpu(i32 %187)
  %189 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %190 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %189, i32 0, i32 17
  store i8* %188, i8** %190, align 8
  %191 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %192 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @le32_to_cpu(i32 %193)
  %195 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %196 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %195, i32 0, i32 16
  store i8* %194, i8** %196, align 8
  %197 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %198 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @le32_to_cpu(i32 %199)
  %201 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %202 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %201, i32 0, i32 15
  store i8* %200, i8** %202, align 8
  %203 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %204 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @le32_to_cpu(i32 %205)
  %207 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %208 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %207, i32 0, i32 14
  store i8* %206, i8** %208, align 8
  %209 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %210 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = call i8* @le32_to_cpu(i32 %211)
  %213 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %214 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %213, i32 0, i32 13
  store i8* %212, i8** %214, align 8
  %215 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %216 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = call i8* @le32_to_cpu(i32 %217)
  %219 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %220 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %219, i32 0, i32 12
  store i8* %218, i8** %220, align 8
  %221 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %222 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @le32_to_cpu(i32 %223)
  %225 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %226 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %225, i32 0, i32 11
  store i8* %224, i8** %226, align 8
  %227 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %228 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @le32_to_cpu(i32 %229)
  %231 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %232 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %231, i32 0, i32 10
  store i8* %230, i8** %232, align 8
  %233 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %234 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @le32_to_cpu(i32 %235)
  %237 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %238 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %237, i32 0, i32 9
  store i8* %236, i8** %238, align 8
  %239 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %240 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i8* @le32_to_cpu(i32 %241)
  %243 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %244 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %243, i32 0, i32 8
  store i8* %242, i8** %244, align 8
  %245 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %246 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %245, i32 0, i32 7
  store i8* null, i8** %246, align 8
  %247 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %248 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %247, i32 0, i32 6
  store i8* null, i8** %248, align 8
  %249 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %250 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %249, i32 0, i32 5
  store i8* null, i8** %250, align 8
  %251 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %252 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %251, i32 0, i32 4
  store i8* null, i8** %252, align 8
  %253 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %254 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %253, i32 0, i32 3
  store i8* null, i8** %254, align 8
  %255 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %256 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %255, i32 0, i32 2
  store i8* null, i8** %256, align 8
  %257 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %258 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %257, i32 0, i32 1
  store i8* null, i8** %258, align 8
  %259 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %260 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %259, i32 0, i32 0
  store i8* null, i8** %260, align 8
  br label %531

261:                                              ; preds = %33, %22
  %262 = load i32, i32* %7, align 4
  %263 = icmp eq i32 %262, 4
  br i1 %263, label %264, label %526

264:                                              ; preds = %261
  %265 = load i32, i32* %8, align 4
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %267, label %526

267:                                              ; preds = %264
  %268 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %269 = bitcast %struct.atom_asic_profiling_info_v4_1* %268 to %struct.atom_asic_profiling_info_v4_2*
  store %struct.atom_asic_profiling_info_v4_2* %269, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %270 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %271 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %270, i32 0, i32 41
  %272 = load i32, i32* %271, align 4
  %273 = call i8* @le32_to_cpu(i32 %272)
  %274 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %275 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %274, i32 0, i32 42
  store i8* %273, i8** %275, align 8
  %276 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %277 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %276, i32 0, i32 40
  %278 = load i32, i32* %277, align 4
  %279 = call i8* @le32_to_cpu(i32 %278)
  %280 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %281 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %280, i32 0, i32 41
  store i8* %279, i8** %281, align 8
  %282 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %283 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %282, i32 0, i32 39
  %284 = load i32, i32* %283, align 4
  %285 = call i8* @le32_to_cpu(i32 %284)
  %286 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %287 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %286, i32 0, i32 40
  store i8* %285, i8** %287, align 8
  %288 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %289 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %288, i32 0, i32 38
  %290 = load i32, i32* %289, align 4
  %291 = call i8* @le32_to_cpu(i32 %290)
  %292 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %293 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %292, i32 0, i32 39
  store i8* %291, i8** %293, align 8
  %294 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %295 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %294, i32 0, i32 37
  %296 = load i32, i32* %295, align 4
  %297 = call i8* @le32_to_cpu(i32 %296)
  %298 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %299 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %298, i32 0, i32 38
  store i8* %297, i8** %299, align 8
  %300 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %301 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %300, i32 0, i32 36
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @le16_to_cpu(i32 %302)
  %304 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %305 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %304, i32 0, i32 37
  store i8* %303, i8** %305, align 8
  %306 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %307 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %306, i32 0, i32 35
  %308 = load i32, i32* %307, align 4
  %309 = call i8* @le16_to_cpu(i32 %308)
  %310 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %311 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %310, i32 0, i32 36
  store i8* %309, i8** %311, align 8
  %312 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %313 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %312, i32 0, i32 34
  %314 = load i32, i32* %313, align 4
  %315 = call i8* @le16_to_cpu(i32 %314)
  %316 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %317 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %316, i32 0, i32 35
  store i8* %315, i8** %317, align 8
  %318 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %319 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %318, i32 0, i32 33
  %320 = load i32, i32* %319, align 4
  %321 = call i8* @le32_to_cpu(i32 %320)
  %322 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %323 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %322, i32 0, i32 34
  store i8* %321, i8** %323, align 8
  %324 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %325 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %324, i32 0, i32 32
  %326 = load i32, i32* %325, align 4
  %327 = call i8* @le32_to_cpu(i32 %326)
  %328 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %329 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %328, i32 0, i32 33
  store i8* %327, i8** %329, align 8
  %330 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %331 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %330, i32 0, i32 31
  %332 = load i32, i32* %331, align 4
  %333 = call i8* @le32_to_cpu(i32 %332)
  %334 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %335 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %334, i32 0, i32 32
  store i8* %333, i8** %335, align 8
  %336 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %337 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %336, i32 0, i32 30
  %338 = load i32, i32* %337, align 4
  %339 = call i8* @le32_to_cpu(i32 %338)
  %340 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %341 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %340, i32 0, i32 31
  store i8* %339, i8** %341, align 8
  %342 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %343 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %342, i32 0, i32 29
  %344 = load i32, i32* %343, align 4
  %345 = call i8* @le32_to_cpu(i32 %344)
  %346 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %347 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %346, i32 0, i32 30
  store i8* %345, i8** %347, align 8
  %348 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %349 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %348, i32 0, i32 28
  %350 = load i32, i32* %349, align 4
  %351 = call i8* @le32_to_cpu(i32 %350)
  %352 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %353 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %352, i32 0, i32 29
  store i8* %351, i8** %353, align 8
  %354 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %355 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %354, i32 0, i32 27
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @le32_to_cpu(i32 %356)
  %358 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %359 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %358, i32 0, i32 28
  store i8* %357, i8** %359, align 8
  %360 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %361 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %360, i32 0, i32 26
  %362 = load i32, i32* %361, align 4
  %363 = call i8* @le32_to_cpu(i32 %362)
  %364 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %365 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %364, i32 0, i32 27
  store i8* %363, i8** %365, align 8
  %366 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %367 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %366, i32 0, i32 25
  %368 = load i32, i32* %367, align 4
  %369 = call i8* @le32_to_cpu(i32 %368)
  %370 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %371 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %370, i32 0, i32 26
  store i8* %369, i8** %371, align 8
  %372 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %373 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %372, i32 0, i32 24
  %374 = load i32, i32* %373, align 4
  %375 = call i8* @le32_to_cpu(i32 %374)
  %376 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %377 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %376, i32 0, i32 25
  store i8* %375, i8** %377, align 8
  %378 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %379 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %378, i32 0, i32 23
  %380 = load i32, i32* %379, align 4
  %381 = call i8* @le32_to_cpu(i32 %380)
  %382 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %383 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %382, i32 0, i32 24
  store i8* %381, i8** %383, align 8
  %384 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %385 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %384, i32 0, i32 22
  %386 = load i32, i32* %385, align 4
  %387 = call i8* @le32_to_cpu(i32 %386)
  %388 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %389 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %388, i32 0, i32 23
  store i8* %387, i8** %389, align 8
  %390 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %391 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %390, i32 0, i32 21
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %394 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %393, i32 0, i32 22
  store i32 %392, i32* %394, align 4
  %395 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %396 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %395, i32 0, i32 20
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %399 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %398, i32 0, i32 21
  store i32 %397, i32* %399, align 8
  %400 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %401 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %400, i32 0, i32 19
  %402 = load i32, i32* %401, align 4
  %403 = call i8* @le16_to_cpu(i32 %402)
  %404 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %405 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %404, i32 0, i32 20
  store i8* %403, i8** %405, align 8
  %406 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %407 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %406, i32 0, i32 18
  %408 = load i32, i32* %407, align 4
  %409 = call i8* @le32_to_cpu(i32 %408)
  %410 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %411 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %410, i32 0, i32 19
  store i8* %409, i8** %411, align 8
  %412 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %413 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %412, i32 0, i32 17
  %414 = load i32, i32* %413, align 4
  %415 = call i8* @le32_to_cpu(i32 %414)
  %416 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %417 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %416, i32 0, i32 18
  store i8* %415, i8** %417, align 8
  %418 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %419 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %418, i32 0, i32 16
  %420 = load i32, i32* %419, align 4
  %421 = call i8* @le32_to_cpu(i32 %420)
  %422 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %423 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %422, i32 0, i32 17
  store i8* %421, i8** %423, align 8
  %424 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %425 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %424, i32 0, i32 15
  %426 = load i32, i32* %425, align 4
  %427 = call i8* @le32_to_cpu(i32 %426)
  %428 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %429 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %428, i32 0, i32 16
  store i8* %427, i8** %429, align 8
  %430 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %431 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %430, i32 0, i32 14
  %432 = load i32, i32* %431, align 4
  %433 = call i8* @le32_to_cpu(i32 %432)
  %434 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %435 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %434, i32 0, i32 15
  store i8* %433, i8** %435, align 8
  %436 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %437 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %436, i32 0, i32 13
  %438 = load i32, i32* %437, align 4
  %439 = call i8* @le32_to_cpu(i32 %438)
  %440 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %441 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %440, i32 0, i32 14
  store i8* %439, i8** %441, align 8
  %442 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %443 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %442, i32 0, i32 12
  %444 = load i32, i32* %443, align 4
  %445 = call i8* @le32_to_cpu(i32 %444)
  %446 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %447 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %446, i32 0, i32 13
  store i8* %445, i8** %447, align 8
  %448 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %449 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %448, i32 0, i32 11
  %450 = load i32, i32* %449, align 4
  %451 = call i8* @le32_to_cpu(i32 %450)
  %452 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %453 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %452, i32 0, i32 12
  store i8* %451, i8** %453, align 8
  %454 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %455 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %454, i32 0, i32 10
  %456 = load i32, i32* %455, align 4
  %457 = call i8* @le32_to_cpu(i32 %456)
  %458 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %459 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %458, i32 0, i32 11
  store i8* %457, i8** %459, align 8
  %460 = load %struct.atom_asic_profiling_info_v4_1*, %struct.atom_asic_profiling_info_v4_1** %9, align 8
  %461 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_1, %struct.atom_asic_profiling_info_v4_1* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = call i8* @le32_to_cpu(i32 %462)
  %464 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %465 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %464, i32 0, i32 10
  store i8* %463, i8** %465, align 8
  %466 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %467 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %466, i32 0, i32 9
  %468 = load i32, i32* %467, align 4
  %469 = call i8* @le32_to_cpu(i32 %468)
  %470 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %471 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %470, i32 0, i32 9
  store i8* %469, i8** %471, align 8
  %472 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %473 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %472, i32 0, i32 8
  %474 = load i32, i32* %473, align 4
  %475 = call i8* @le32_to_cpu(i32 %474)
  %476 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %477 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %476, i32 0, i32 8
  store i8* %475, i8** %477, align 8
  %478 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %479 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 4
  %481 = call i8* @le32_to_cpu(i32 %480)
  %482 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %483 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %482, i32 0, i32 7
  store i8* %481, i8** %483, align 8
  %484 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %485 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 4
  %487 = call i8* @le32_to_cpu(i32 %486)
  %488 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %489 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %488, i32 0, i32 6
  store i8* %487, i8** %489, align 8
  %490 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %491 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %490, i32 0, i32 5
  %492 = load i32, i32* %491, align 4
  %493 = call i8* @le32_to_cpu(i32 %492)
  %494 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %495 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %494, i32 0, i32 5
  store i8* %493, i8** %495, align 8
  %496 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %497 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 4
  %499 = call i8* @le32_to_cpu(i32 %498)
  %500 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %501 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %500, i32 0, i32 4
  store i8* %499, i8** %501, align 8
  %502 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %503 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 4
  %505 = call i8* @le32_to_cpu(i32 %504)
  %506 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %507 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %506, i32 0, i32 3
  store i8* %505, i8** %507, align 8
  %508 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %509 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 4
  %511 = call i8* @le32_to_cpu(i32 %510)
  %512 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %513 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %512, i32 0, i32 2
  store i8* %511, i8** %513, align 8
  %514 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %515 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  %517 = call i8* @le32_to_cpu(i32 %516)
  %518 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %519 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %518, i32 0, i32 1
  store i8* %517, i8** %519, align 8
  %520 = load %struct.atom_asic_profiling_info_v4_2*, %struct.atom_asic_profiling_info_v4_2** %10, align 8
  %521 = getelementptr inbounds %struct.atom_asic_profiling_info_v4_2, %struct.atom_asic_profiling_info_v4_2* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = call i8* @le32_to_cpu(i32 %522)
  %524 = load %struct.pp_atomfwctrl_avfs_parameters*, %struct.pp_atomfwctrl_avfs_parameters** %5, align 8
  %525 = getelementptr inbounds %struct.pp_atomfwctrl_avfs_parameters, %struct.pp_atomfwctrl_avfs_parameters* %524, i32 0, i32 0
  store i8* %523, i8** %525, align 8
  br label %530

526:                                              ; preds = %264, %261
  %527 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %528 = load i32, i32* @EINVAL, align 4
  %529 = sub nsw i32 0, %528
  store i32 %529, i32* %3, align 4
  br label %532

530:                                              ; preds = %267
  br label %531

531:                                              ; preds = %530, %36
  store i32 0, i32* %3, align 4
  br label %532

532:                                              ; preds = %531, %526, %21
  %533 = load i32, i32* %3, align 4
  ret i32 %533
}

declare dso_local i32 @GetIndexIntoMasterDataTable(i32) #1

declare dso_local i64 @smu_atom_get_data_table(i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
