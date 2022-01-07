; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_append_powerplay_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_append_powerplay_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.atom_smc_dpm_info_v4_4 = type { %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@smc_dpm_info = common dso_local global i32 0, align 4
@I2C_CONTROLLER_NAME_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @vega20_append_powerplay_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_append_powerplay_table(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_table_context*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.atom_smc_dpm_info_v4_4*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 0
  store %struct.smu_table_context* %11, %struct.smu_table_context** %4, align 8
  %12 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %13 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  %15 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %16 = load i32, i32* @smc_dpm_info, align 4
  %17 = call i32 @get_index_into_master_table(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = bitcast %struct.atom_smc_dpm_info_v4_4** %6 to i32**
  %21 = call i32 @smu_get_atom_data_table(%struct.smu_context* %18, i32 %19, i32* null, i32* null, i32* null, i32** %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %2, align 4
  br label %343

26:                                               ; preds = %1
  %27 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %28 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %27, i32 0, i32 43
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 44
  store i32 %29, i32* %31, align 8
  %32 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %33 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %32, i32 0, i32 42
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 43
  store i32 %34, i32* %36, align 4
  %37 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %38 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %37, i32 0, i32 41
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 42
  store i32 %39, i32* %41, align 8
  %42 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %43 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %42, i32 0, i32 40
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 41
  store i32 %44, i32* %46, align 4
  %47 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %48 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %47, i32 0, i32 39
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 40
  store i32 %49, i32* %51, align 8
  %52 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %53 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %52, i32 0, i32 38
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 39
  store i32 %54, i32* %56, align 4
  %57 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %58 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %57, i32 0, i32 37
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 38
  store i32 %59, i32* %61, align 8
  %62 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %63 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %62, i32 0, i32 36
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 37
  store i32 %64, i32* %66, align 4
  %67 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %68 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %67, i32 0, i32 35
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 36
  store i32 %69, i32* %71, align 8
  %72 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %73 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %72, i32 0, i32 34
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 35
  store i32 %74, i32* %76, align 4
  %77 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %78 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %77, i32 0, i32 33
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 34
  store i32 %79, i32* %81, align 8
  %82 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %83 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %82, i32 0, i32 32
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 33
  store i32 %84, i32* %86, align 4
  %87 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %88 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %87, i32 0, i32 31
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 32
  store i32 %89, i32* %91, align 8
  %92 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %93 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %92, i32 0, i32 30
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 31
  store i32 %94, i32* %96, align 4
  %97 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %98 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %97, i32 0, i32 29
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 30
  store i32 %99, i32* %101, align 8
  %102 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %103 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %102, i32 0, i32 28
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 29
  store i32 %104, i32* %106, align 4
  %107 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %108 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %107, i32 0, i32 27
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 28
  store i32 %109, i32* %111, align 8
  %112 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %113 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %112, i32 0, i32 26
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 27
  store i32 %114, i32* %116, align 4
  %117 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %118 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %117, i32 0, i32 25
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 26
  store i32 %119, i32* %121, align 8
  %122 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %123 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %122, i32 0, i32 24
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 25
  store i32 %124, i32* %126, align 4
  %127 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %128 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %127, i32 0, i32 23
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 24
  store i32 %129, i32* %131, align 8
  %132 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %133 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %132, i32 0, i32 22
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 23
  store i32 %134, i32* %136, align 4
  %137 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %138 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %137, i32 0, i32 21
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 22
  store i32 %139, i32* %141, align 8
  %142 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %143 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %142, i32 0, i32 20
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 21
  store i32 %144, i32* %146, align 4
  %147 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %148 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %147, i32 0, i32 19
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 20
  store i32 %149, i32* %151, align 8
  %152 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %153 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %152, i32 0, i32 18
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 19
  store i32 %154, i32* %156, align 4
  %157 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %158 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %157, i32 0, i32 17
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 18
  store i32 %159, i32* %161, align 8
  %162 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %163 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %162, i32 0, i32 16
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 17
  store i32 %164, i32* %166, align 4
  %167 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %168 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %167, i32 0, i32 15
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 16
  store i32 %169, i32* %171, align 8
  %172 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %173 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %172, i32 0, i32 14
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 15
  store i32 %174, i32* %176, align 4
  %177 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %178 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %177, i32 0, i32 13
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 14
  store i32 %179, i32* %181, align 8
  %182 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %183 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %182, i32 0, i32 12
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 13
  store i32 %184, i32* %186, align 4
  %187 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %188 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %187, i32 0, i32 11
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 12
  store i32 %189, i32* %191, align 8
  %192 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %193 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 11
  store i32 %194, i32* %196, align 4
  %197 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %198 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 10
  store i32 %199, i32* %201, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 9
  store i64 0, i64* %203, align 8
  %204 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %205 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 8
  store i32 %206, i32* %208, align 4
  %209 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %210 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 7
  store i32 %211, i32* %213, align 8
  %214 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %215 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 6
  store i32 %216, i32* %218, align 4
  %219 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %220 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 8
  %224 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %225 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 4
  %229 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %230 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 8
  %234 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %235 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 4
  %239 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %240 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 8
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %339, %26
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @I2C_CONTROLLER_NAME_COUNT, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %342

248:                                              ; preds = %244
  %249 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %250 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %249, i32 0, i32 0
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 5
  store i32 %256, i32* %263, align 4
  %264 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %265 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %264, i32 0, i32 0
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = load i32, i32* %8, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 4
  store i32 %271, i32* %278, align 4
  %279 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %280 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %279, i32 0, i32 0
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 3
  store i32 %286, i32* %293, align 4
  %294 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %295 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %294, i32 0, i32 0
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = load i32, i32* %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 2
  store i32 %301, i32* %308, align 4
  %309 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %310 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %309, i32 0, i32 0
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  store i32 %316, i32* %323, align 4
  %324 = load %struct.atom_smc_dpm_info_v4_4*, %struct.atom_smc_dpm_info_v4_4** %6, align 8
  %325 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, %struct.atom_smc_dpm_info_v4_4* %324, i32 0, i32 0
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %325, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %333, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  store i32 %331, i32* %338, align 4
  br label %339

339:                                              ; preds = %248
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  br label %244

342:                                              ; preds = %244
  store i32 0, i32* %2, align 4
  br label %343

343:                                              ; preds = %342, %24
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i32 @get_index_into_master_table(i32, i32) #1

declare dso_local i32 @smu_get_atom_data_table(%struct.smu_context*, i32, i32*, i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
