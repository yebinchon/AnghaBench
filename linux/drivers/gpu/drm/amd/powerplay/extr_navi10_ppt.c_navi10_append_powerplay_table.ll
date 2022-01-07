; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_append_powerplay_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_append_powerplay_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context, %struct.amdgpu_device* }
%struct.smu_table_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.atom_smc_dpm_info_v4_5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@smc_dpm_info = common dso_local global i32 0, align 4
@NUM_I2C_CONTROLLERS = common dso_local global i32 0, align 4
@PP_GFXOFF_MASK = common dso_local global i32 0, align 4
@DPM_OVERRIDE_DISABLE_DFLL_PLL_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @navi10_append_powerplay_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_append_powerplay_table(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.smu_table_context*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.atom_smc_dpm_info_v4_5*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %14 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %13, i32 0, i32 0
  store %struct.smu_table_context* %14, %struct.smu_table_context** %5, align 8
  %15 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %16 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %19 = load i32, i32* @smc_dpm_info, align 4
  %20 = call i32 @get_index_into_master_table(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %22 = load i32, i32* %8, align 4
  %23 = bitcast %struct.atom_smc_dpm_info_v4_5** %7 to i32**
  %24 = call i32 @smu_get_atom_data_table(%struct.smu_context* %21, i32 %22, i32* null, i32* null, i32* null, i32** %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %2, align 4
  br label %300

29:                                               ; preds = %1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 50
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %34 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %33, i32 0, i32 49
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NUM_I2C_CONTROLLERS, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i32 %32, i32 %35, i32 %39)
  %41 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %42 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %41, i32 0, i32 48
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 49
  store i32 %43, i32* %45, align 4
  %46 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %47 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %46, i32 0, i32 47
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 48
  store i32 %48, i32* %50, align 4
  %51 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %52 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %51, i32 0, i32 46
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 47
  store i32 %53, i32* %55, align 4
  %56 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %57 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %56, i32 0, i32 45
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 46
  store i32 %58, i32* %60, align 4
  %61 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %62 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %61, i32 0, i32 44
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 45
  store i32 %63, i32* %65, align 4
  %66 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %67 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %66, i32 0, i32 43
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 44
  store i32 %68, i32* %70, align 4
  %71 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %72 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %71, i32 0, i32 42
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 43
  store i32 %73, i32* %75, align 4
  %76 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %77 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %76, i32 0, i32 41
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 42
  store i32 %78, i32* %80, align 4
  %81 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %82 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %81, i32 0, i32 40
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 41
  store i32 %83, i32* %85, align 4
  %86 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %87 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %86, i32 0, i32 39
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 40
  store i32 %88, i32* %90, align 4
  %91 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %92 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %91, i32 0, i32 38
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 39
  store i32 %93, i32* %95, align 4
  %96 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %97 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %96, i32 0, i32 37
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 38
  store i32 %98, i32* %100, align 4
  %101 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %102 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %101, i32 0, i32 36
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 37
  store i32 %103, i32* %105, align 4
  %106 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %107 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %106, i32 0, i32 35
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 36
  store i32 %108, i32* %110, align 4
  %111 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %112 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %111, i32 0, i32 34
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 35
  store i32 %113, i32* %115, align 4
  %116 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %117 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %116, i32 0, i32 33
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 34
  store i32 %118, i32* %120, align 4
  %121 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %122 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %121, i32 0, i32 32
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 33
  store i32 %123, i32* %125, align 4
  %126 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %127 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %126, i32 0, i32 31
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 32
  store i32 %128, i32* %130, align 4
  %131 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %132 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %131, i32 0, i32 30
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 31
  store i32 %133, i32* %135, align 4
  %136 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %137 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %136, i32 0, i32 29
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 30
  store i32 %138, i32* %140, align 4
  %141 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %142 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %141, i32 0, i32 28
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 29
  store i32 %143, i32* %145, align 4
  %146 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %147 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %146, i32 0, i32 27
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 28
  store i32 %148, i32* %150, align 4
  %151 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %152 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %151, i32 0, i32 26
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 27
  store i32 %153, i32* %155, align 4
  %156 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %157 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %156, i32 0, i32 25
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 26
  store i32 %158, i32* %160, align 4
  %161 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %162 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %161, i32 0, i32 24
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 25
  store i32 %163, i32* %165, align 4
  %166 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %167 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %166, i32 0, i32 23
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 24
  store i32 %168, i32* %170, align 4
  %171 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %172 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %171, i32 0, i32 22
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 23
  store i32 %173, i32* %175, align 4
  %176 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %177 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %176, i32 0, i32 21
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 22
  store i32 %178, i32* %180, align 4
  %181 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %182 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %181, i32 0, i32 20
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 21
  store i32 %183, i32* %185, align 4
  %186 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %187 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %186, i32 0, i32 19
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 20
  store i32 %188, i32* %190, align 4
  %191 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %192 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %191, i32 0, i32 18
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 19
  store i32 %193, i32* %195, align 4
  %196 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %197 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %196, i32 0, i32 17
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 18
  store i32 %198, i32* %200, align 4
  %201 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %202 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %201, i32 0, i32 16
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 17
  store i32 %203, i32* %205, align 4
  %206 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %207 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %206, i32 0, i32 15
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 16
  store i32 %208, i32* %210, align 4
  %211 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %212 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %211, i32 0, i32 14
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 15
  store i32 %213, i32* %215, align 4
  %216 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %217 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %216, i32 0, i32 13
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 14
  store i32 %218, i32* %220, align 4
  %221 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %222 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %221, i32 0, i32 12
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 13
  store i32 %223, i32* %225, align 4
  %226 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %227 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %226, i32 0, i32 11
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 12
  store i32 %228, i32* %230, align 4
  %231 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %232 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %231, i32 0, i32 10
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 11
  store i32 %233, i32* %235, align 4
  %236 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %237 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %236, i32 0, i32 9
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 10
  store i32 %238, i32* %240, align 4
  %241 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %242 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 9
  store i32 %243, i32* %245, align 4
  %246 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %247 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 8
  store i32 %248, i32* %250, align 4
  %251 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %252 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 7
  store i32 %253, i32* %255, align 4
  %256 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %257 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 6
  store i32 %258, i32* %260, align 4
  %261 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %262 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 5
  store i32 %263, i32* %265, align 4
  %266 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %267 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 4
  store i32 %268, i32* %270, align 4
  %271 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %272 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 4
  %276 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %277 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 4
  %281 = load %struct.atom_smc_dpm_info_v4_5*, %struct.atom_smc_dpm_info_v4_5** %7, align 8
  %282 = getelementptr inbounds %struct.atom_smc_dpm_info_v4_5, %struct.atom_smc_dpm_info_v4_5* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %287 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @PP_GFXOFF_MASK, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %29
  %294 = load i32, i32* @DPM_OVERRIDE_DISABLE_DFLL_PLL_SHUTDOWN, align 4
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %293, %29
  store i32 0, i32* %2, align 4
  br label %300

300:                                              ; preds = %299, %27
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local i32 @get_index_into_master_table(i32, i32) #1

declare dso_local i32 @smu_get_atom_data_table(%struct.smu_context*, i32, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
