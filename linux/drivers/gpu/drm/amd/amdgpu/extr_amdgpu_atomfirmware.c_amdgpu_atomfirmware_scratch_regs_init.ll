; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_scratch_regs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_scratch_regs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.atom_firmware_info_v3_1 = type { i32 }

@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@firmwareinfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atomfirmware_scratch_regs_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.atom_firmware_info_v3_1*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %7 = load i32, i32* @firmwareinfo, align 4
  %8 = call i32 @get_index_into_master_table(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_4__* %12, i32 %13, i32* null, i32* null, i32* null, i64* %4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 %22, %23
  %25 = inttoptr i64 %24 to %struct.atom_firmware_info_v3_1*
  store %struct.atom_firmware_info_v3_1* %25, %struct.atom_firmware_info_v3_1** %5, align 8
  %26 = load %struct.atom_firmware_info_v3_1*, %struct.atom_firmware_info_v3_1** %5, align 8
  %27 = getelementptr inbounds %struct.atom_firmware_info_v3_1, %struct.atom_firmware_info_v3_1* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @get_index_into_master_table(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_4__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
