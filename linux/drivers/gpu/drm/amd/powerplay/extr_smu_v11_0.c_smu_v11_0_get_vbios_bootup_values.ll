; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_vbios_bootup_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_get_vbios_bootup_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_common_table_header = type { i32, i32 }
%struct.atom_firmware_info_v3_3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_firmware_info_v3_1 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@firmwareinfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unknown atom_firmware_info version! for smu11\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_v11_0_get_vbios_bootup_values(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atom_common_table_header*, align 8
  %10 = alloca %struct.atom_firmware_info_v3_3*, align 8
  %11 = alloca %struct.atom_firmware_info_v3_1*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %12 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %13 = load i32, i32* @firmwareinfo, align 4
  %14 = call i32 @get_index_into_master_table(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = bitcast %struct.atom_common_table_header** %9 to i32**
  %18 = call i32 @smu_get_atom_data_table(%struct.smu_context* %15, i32 %16, i32* %6, i32* %7, i32* %8, i32** %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %197

23:                                               ; preds = %1
  %24 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %9, align 8
  %25 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %197

32:                                               ; preds = %23
  %33 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %9, align 8
  %34 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %108 [
    i32 0, label %36
    i32 1, label %36
    i32 2, label %36
    i32 3, label %107
  ]

36:                                               ; preds = %32, %32, %32
  %37 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %9, align 8
  %38 = bitcast %struct.atom_common_table_header* %37 to %struct.atom_firmware_info_v3_1*
  store %struct.atom_firmware_info_v3_1* %38, %struct.atom_firmware_info_v3_1** %11, align 8
  %39 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %11, align 8
  %40 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %43 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 12
  store i32 %41, i32* %45, align 4
  %46 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %11, align 8
  %47 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %50 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 11
  store i32 %48, i32* %52, align 4
  %53 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %11, align 8
  %54 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %57 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 10
  store i32 %55, i32* %59, align 4
  %60 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %61 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 9
  store i32 0, i32* %63, align 4
  %64 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %65 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 8
  store i32 0, i32* %67, align 4
  %68 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %11, align 8
  %69 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %72 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 7
  store i32 %70, i32* %74, align 4
  %75 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %11, align 8
  %76 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %79 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 6
  store i32 %77, i32* %81, align 4
  %82 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %11, align 8
  %83 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %86 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  store i32 %84, i32* %88, align 4
  %89 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %11, align 8
  %90 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %93 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  store i32 %91, i32* %95, align 4
  %96 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %11, align 8
  %97 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %100 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i32 %98, i32* %102, align 4
  %103 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %104 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32 0, i32* %106, align 4
  br label %182

107:                                              ; preds = %32
  br label %108

108:                                              ; preds = %32, %107
  %109 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %9, align 8
  %110 = bitcast %struct.atom_common_table_header* %109 to %struct.atom_firmware_info_v3_3*
  store %struct.atom_firmware_info_v3_3* %110, %struct.atom_firmware_info_v3_3** %10, align 8
  %111 = load %struct.atom_firmware_info_v3_3*, %struct.atom_firmware_info_v3_3** %10, align 8
  %112 = getelementptr inbounds %struct.atom_firmware_info_v3_3, %struct.atom_firmware_info_v3_3* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %115 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 12
  store i32 %113, i32* %117, align 4
  %118 = load %struct.atom_firmware_info_v3_3*, %struct.atom_firmware_info_v3_3** %10, align 8
  %119 = getelementptr inbounds %struct.atom_firmware_info_v3_3, %struct.atom_firmware_info_v3_3* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %122 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 11
  store i32 %120, i32* %124, align 4
  %125 = load %struct.atom_firmware_info_v3_3*, %struct.atom_firmware_info_v3_3** %10, align 8
  %126 = getelementptr inbounds %struct.atom_firmware_info_v3_3, %struct.atom_firmware_info_v3_3* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %129 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 10
  store i32 %127, i32* %131, align 4
  %132 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %133 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 9
  store i32 0, i32* %135, align 4
  %136 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %137 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 8
  store i32 0, i32* %139, align 4
  %140 = load %struct.atom_firmware_info_v3_3*, %struct.atom_firmware_info_v3_3** %10, align 8
  %141 = getelementptr inbounds %struct.atom_firmware_info_v3_3, %struct.atom_firmware_info_v3_3* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %144 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 7
  store i32 %142, i32* %146, align 4
  %147 = load %struct.atom_firmware_info_v3_3*, %struct.atom_firmware_info_v3_3** %10, align 8
  %148 = getelementptr inbounds %struct.atom_firmware_info_v3_3, %struct.atom_firmware_info_v3_3* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %151 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 6
  store i32 %149, i32* %153, align 4
  %154 = load %struct.atom_firmware_info_v3_3*, %struct.atom_firmware_info_v3_3** %10, align 8
  %155 = getelementptr inbounds %struct.atom_firmware_info_v3_3, %struct.atom_firmware_info_v3_3* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %158 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 5
  store i32 %156, i32* %160, align 4
  %161 = load %struct.atom_firmware_info_v3_3*, %struct.atom_firmware_info_v3_3** %10, align 8
  %162 = getelementptr inbounds %struct.atom_firmware_info_v3_3, %struct.atom_firmware_info_v3_3* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %165 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  store i32 %163, i32* %167, align 4
  %168 = load %struct.atom_firmware_info_v3_3*, %struct.atom_firmware_info_v3_3** %10, align 8
  %169 = getelementptr inbounds %struct.atom_firmware_info_v3_3, %struct.atom_firmware_info_v3_3* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %172 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  store i32 %170, i32* %174, align 4
  %175 = load %struct.atom_firmware_info_v3_3*, %struct.atom_firmware_info_v3_3** %10, align 8
  %176 = getelementptr inbounds %struct.atom_firmware_info_v3_3, %struct.atom_firmware_info_v3_3* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %179 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  store i32 %177, i32* %181, align 4
  br label %182

182:                                              ; preds = %108, %36
  %183 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %9, align 8
  %184 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %187 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 4
  %190 = load %struct.atom_common_table_header*, %struct.atom_common_table_header** %9, align 8
  %191 = getelementptr inbounds %struct.atom_common_table_header, %struct.atom_common_table_header* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %194 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  store i32 %192, i32* %196, align 4
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %182, %28, %21
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @get_index_into_master_table(i32, i32) #1

declare dso_local i32 @smu_get_atom_data_table(%struct.smu_context*, i32, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
