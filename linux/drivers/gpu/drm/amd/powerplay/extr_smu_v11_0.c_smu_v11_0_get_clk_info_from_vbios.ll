; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_clk_info_from_vbios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_clk_info_from_vbios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_7__, %struct.amdgpu_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.atom_get_smu_clock_info_parameters_v3_1 = type { i8*, i32, i32, i32 }
%struct.atom_get_smu_clock_info_output_parameters_v3_1 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SMU11_SYSPLL0_SOCCLK_ID = common dso_local global i32 0, align 4
@GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ = common dso_local global i8* null, align 8
@atom_master_list_of_command_functions_v2_1 = common dso_local global i32 0, align 4
@getsmuclockinfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMU11_SYSPLL0_DCEFCLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL0_ECLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL0_VCLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL0_DCLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL1_0_FCLK_ID = common dso_local global i32 0, align 4
@SMU11_SYSPLL1_2_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_get_clk_info_from_vbios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_get_clk_info_from_vbios(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 8
  %8 = alloca %struct.atom_get_smu_clock_info_output_parameters_v3_1*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %9 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %10 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %9, i32 0, i32 1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %6, align 8
  %12 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load i32, i32* @SMU11_SYSPLL0_SOCCLK_ID, align 4
  %14 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** @GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ, align 8
  %16 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @atom_master_list_of_command_functions_v2_1, align 4
  %18 = load i32, i32* @getsmuclockinfo, align 4
  %19 = call i32 @get_index_into_master_table(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to i32*
  %26 = call i32 @amdgpu_atom_execute_table(i32 %23, i32 %24, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %221

32:                                               ; preds = %1
  %33 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to %struct.atom_get_smu_clock_info_output_parameters_v3_1*
  store %struct.atom_get_smu_clock_info_output_parameters_v3_1* %33, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %34 = load %struct.atom_get_smu_clock_info_output_parameters_v3_1*, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %35 = getelementptr inbounds %struct.atom_get_smu_clock_info_output_parameters_v3_1, %struct.atom_get_smu_clock_info_output_parameters_v3_1* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = sdiv i32 %38, 10000
  %40 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %41 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = call i32 @memset(%struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 24)
  %45 = load i32, i32* @SMU11_SYSPLL0_DCEFCLK_ID, align 4
  %46 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** @GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ, align 8
  %48 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* @atom_master_list_of_command_functions_v2_1, align 4
  %50 = load i32, i32* @getsmuclockinfo, align 4
  %51 = call i32 @get_index_into_master_table(i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to i32*
  %58 = call i32 @amdgpu_atom_execute_table(i32 %55, i32 %56, i32* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %32
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %221

64:                                               ; preds = %32
  %65 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to %struct.atom_get_smu_clock_info_output_parameters_v3_1*
  store %struct.atom_get_smu_clock_info_output_parameters_v3_1* %65, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %66 = load %struct.atom_get_smu_clock_info_output_parameters_v3_1*, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %67 = getelementptr inbounds %struct.atom_get_smu_clock_info_output_parameters_v3_1, %struct.atom_get_smu_clock_info_output_parameters_v3_1* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = sdiv i32 %70, 10000
  %72 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %73 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = call i32 @memset(%struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 24)
  %77 = load i32, i32* @SMU11_SYSPLL0_ECLK_ID, align 4
  %78 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  %79 = load i8*, i8** @GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ, align 8
  %80 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 0
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* @atom_master_list_of_command_functions_v2_1, align 4
  %82 = load i32, i32* @getsmuclockinfo, align 4
  %83 = call i32 @get_index_into_master_table(i32 %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to i32*
  %90 = call i32 @amdgpu_atom_execute_table(i32 %87, i32 %88, i32* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %64
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %221

96:                                               ; preds = %64
  %97 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to %struct.atom_get_smu_clock_info_output_parameters_v3_1*
  store %struct.atom_get_smu_clock_info_output_parameters_v3_1* %97, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %98 = load %struct.atom_get_smu_clock_info_output_parameters_v3_1*, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %99 = getelementptr inbounds %struct.atom_get_smu_clock_info_output_parameters_v3_1, %struct.atom_get_smu_clock_info_output_parameters_v3_1* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  %103 = sdiv i32 %102, 10000
  %104 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %105 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i32 %103, i32* %107, align 8
  %108 = call i32 @memset(%struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 24)
  %109 = load i32, i32* @SMU11_SYSPLL0_VCLK_ID, align 4
  %110 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 2
  store i32 %109, i32* %110, align 4
  %111 = load i8*, i8** @GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ, align 8
  %112 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load i32, i32* @atom_master_list_of_command_functions_v2_1, align 4
  %114 = load i32, i32* @getsmuclockinfo, align 4
  %115 = call i32 @get_index_into_master_table(i32 %113, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to i32*
  %122 = call i32 @amdgpu_atom_execute_table(i32 %119, i32 %120, i32* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %96
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %221

128:                                              ; preds = %96
  %129 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to %struct.atom_get_smu_clock_info_output_parameters_v3_1*
  store %struct.atom_get_smu_clock_info_output_parameters_v3_1* %129, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %130 = load %struct.atom_get_smu_clock_info_output_parameters_v3_1*, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %131 = getelementptr inbounds %struct.atom_get_smu_clock_info_output_parameters_v3_1, %struct.atom_get_smu_clock_info_output_parameters_v3_1* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = sdiv i32 %134, 10000
  %136 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %137 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  store i32 %135, i32* %139, align 4
  %140 = call i32 @memset(%struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 24)
  %141 = load i32, i32* @SMU11_SYSPLL0_DCLK_ID, align 4
  %142 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 2
  store i32 %141, i32* %142, align 4
  %143 = load i8*, i8** @GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ, align 8
  %144 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 0
  store i8* %143, i8** %144, align 8
  %145 = load i32, i32* @atom_master_list_of_command_functions_v2_1, align 4
  %146 = load i32, i32* @getsmuclockinfo, align 4
  %147 = call i32 @get_index_into_master_table(i32 %145, i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %5, align 4
  %153 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to i32*
  %154 = call i32 @amdgpu_atom_execute_table(i32 %151, i32 %152, i32* %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %128
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %221

160:                                              ; preds = %128
  %161 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to %struct.atom_get_smu_clock_info_output_parameters_v3_1*
  store %struct.atom_get_smu_clock_info_output_parameters_v3_1* %161, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %162 = load %struct.atom_get_smu_clock_info_output_parameters_v3_1*, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %163 = getelementptr inbounds %struct.atom_get_smu_clock_info_output_parameters_v3_1, %struct.atom_get_smu_clock_info_output_parameters_v3_1* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le32_to_cpu(i32 %165)
  %167 = sdiv i32 %166, 10000
  %168 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %169 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 4
  store i32 %167, i32* %171, align 8
  %172 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %173 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %220

178:                                              ; preds = %160
  %179 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %180 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = icmp sge i32 %183, 2
  br i1 %184, label %185, label %220

185:                                              ; preds = %178
  %186 = call i32 @memset(%struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 24)
  %187 = load i32, i32* @SMU11_SYSPLL1_0_FCLK_ID, align 4
  %188 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 2
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* @SMU11_SYSPLL1_2_ID, align 4
  %190 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 1
  store i32 %189, i32* %190, align 8
  %191 = load i8*, i8** @GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ, align 8
  %192 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %7, i32 0, i32 0
  store i8* %191, i8** %192, align 8
  %193 = load i32, i32* @atom_master_list_of_command_functions_v2_1, align 4
  %194 = load i32, i32* @getsmuclockinfo, align 4
  %195 = call i32 @get_index_into_master_table(i32 %193, i32 %194)
  store i32 %195, i32* %5, align 4
  %196 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %197 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %5, align 4
  %201 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to i32*
  %202 = call i32 @amdgpu_atom_execute_table(i32 %199, i32 %200, i32* %201)
  store i32 %202, i32* %4, align 4
  %203 = load i32, i32* %4, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %185
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %2, align 4
  br label %221

208:                                              ; preds = %185
  %209 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %7 to %struct.atom_get_smu_clock_info_output_parameters_v3_1*
  store %struct.atom_get_smu_clock_info_output_parameters_v3_1* %209, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %210 = load %struct.atom_get_smu_clock_info_output_parameters_v3_1*, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %8, align 8
  %211 = getelementptr inbounds %struct.atom_get_smu_clock_info_output_parameters_v3_1, %struct.atom_get_smu_clock_info_output_parameters_v3_1* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @le32_to_cpu(i32 %213)
  %215 = sdiv i32 %214, 10000
  %216 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %217 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 7
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %208, %178, %160
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %220, %205, %157, %125, %93, %61, %29
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_index_into_master_table(i32, i32) #2

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @memset(%struct.atom_get_smu_clock_info_parameters_v3_1*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
