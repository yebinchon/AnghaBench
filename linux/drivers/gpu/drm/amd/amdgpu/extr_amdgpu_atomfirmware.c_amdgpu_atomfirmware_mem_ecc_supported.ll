; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_mem_ecc_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_mem_ecc_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_mode_info }
%struct.amdgpu_mode_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%union.umc_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@UMC_CONFIG__DEFAULT_MEM_ECC_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atomfirmware_mem_ecc_supported(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_mode_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.umc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  store %struct.amdgpu_mode_info* %12, %struct.amdgpu_mode_info** %3, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %14 = load %union.umc_info*, %union.umc_info** %7, align 8
  %15 = call i32 @get_index_into_master_table(i32 %13, %union.umc_info* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_4__* %18, i32 %19, i64* %6, i32* %8, i32* %9, i64* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %50

31:                                               ; preds = %28, %25
  %32 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %36, %37
  %39 = inttoptr i64 %38 to %union.umc_info*
  store %union.umc_info* %39, %union.umc_info** %7, align 8
  %40 = load %union.umc_info*, %union.umc_info** %7, align 8
  %41 = bitcast %union.umc_info* %40 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load i32, i32* @UMC_CONFIG__DEFAULT_MEM_ECC_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %31, %28
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @get_index_into_master_table(i32, %union.umc_info*) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_4__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
