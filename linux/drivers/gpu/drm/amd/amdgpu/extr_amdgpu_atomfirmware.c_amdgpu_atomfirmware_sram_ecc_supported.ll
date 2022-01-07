; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_sram_ecc_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_sram_ecc_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_mode_info }
%struct.amdgpu_mode_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%union.firmware_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@firmwareinfo = common dso_local global i32 0, align 4
@ATOM_FIRMWARE_CAP_SRAM_ECC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atomfirmware_sram_ecc_supported(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_mode_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.firmware_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  store %struct.amdgpu_mode_info* %12, %struct.amdgpu_mode_info** %3, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %14 = load i32, i32* @firmwareinfo, align 4
  %15 = call i32 @get_index_into_master_table(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_4__* %19, i32 %20, i64* %6, i32* %8, i32* %9, i64* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %51

32:                                               ; preds = %29, %26
  %33 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %37, %38
  %40 = inttoptr i64 %39 to %union.firmware_info*
  store %union.firmware_info* %40, %union.firmware_info** %7, align 8
  %41 = load %union.firmware_info*, %union.firmware_info** %7, align 8
  %42 = bitcast %union.firmware_info* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = load i32, i32* @ATOM_FIRMWARE_CAP_SRAM_ECC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %32, %29
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local i32 @get_index_into_master_table(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_4__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
