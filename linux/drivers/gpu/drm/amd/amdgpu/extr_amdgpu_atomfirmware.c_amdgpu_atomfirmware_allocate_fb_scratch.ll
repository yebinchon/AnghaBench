; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_allocate_fb_scratch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atomfirmware.c_amdgpu_atomfirmware_allocate_fb_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.atom_context* }
%struct.atom_context = type { i32, i32, i64 }
%struct.vram_usagebyfirmware_v2_1 = type { i32, i32, i32 }

@atom_master_list_of_data_tables_v2_1 = common dso_local global i32 0, align 4
@vram_usagebyfirmware = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"atom firmware requested %08x %dkb fw %dkb drv\0A\00", align 1
@ATOM_VRAM_OPERATION_FLAGS_MASK = common dso_local global i64 0, align 8
@ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION = common dso_local global i32 0, align 4
@ATOM_VRAM_OPERATION_FLAGS_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atomfirmware_allocate_fb_scratch(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.atom_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vram_usagebyfirmware_v2_1*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.atom_context*, %struct.atom_context** %13, align 8
  store %struct.atom_context* %14, %struct.atom_context** %4, align 8
  %15 = load i32, i32* @atom_master_list_of_data_tables_v2_1, align 4
  %16 = load i32, i32* @vram_usagebyfirmware, align 4
  %17 = call i32 @get_index_into_master_table(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @amdgpu_atom_parse_data_header(%struct.atom_context* %18, i32 %19, i32* null, i32* null, i32* null, i64* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %1
  %23 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %24 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %25, %26
  %28 = inttoptr i64 %27 to %struct.vram_usagebyfirmware_v2_1*
  store %struct.vram_usagebyfirmware_v2_1* %28, %struct.vram_usagebyfirmware_v2_1** %6, align 8
  %29 = load %struct.vram_usagebyfirmware_v2_1*, %struct.vram_usagebyfirmware_v2_1** %6, align 8
  %30 = getelementptr inbounds %struct.vram_usagebyfirmware_v2_1, %struct.vram_usagebyfirmware_v2_1* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  %33 = load %struct.vram_usagebyfirmware_v2_1*, %struct.vram_usagebyfirmware_v2_1** %6, align 8
  %34 = getelementptr inbounds %struct.vram_usagebyfirmware_v2_1, %struct.vram_usagebyfirmware_v2_1* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load %struct.vram_usagebyfirmware_v2_1*, %struct.vram_usagebyfirmware_v2_1** %6, align 8
  %38 = getelementptr inbounds %struct.vram_usagebyfirmware_v2_1, %struct.vram_usagebyfirmware_v2_1* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %36, i32 %40)
  %42 = load %struct.vram_usagebyfirmware_v2_1*, %struct.vram_usagebyfirmware_v2_1** %6, align 8
  %43 = getelementptr inbounds %struct.vram_usagebyfirmware_v2_1, %struct.vram_usagebyfirmware_v2_1* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.vram_usagebyfirmware_v2_1*, %struct.vram_usagebyfirmware_v2_1** %6, align 8
  %47 = getelementptr inbounds %struct.vram_usagebyfirmware_v2_1, %struct.vram_usagebyfirmware_v2_1* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @ATOM_VRAM_OPERATION_FLAGS_MASK, align 8
  %53 = and i64 %51, %52
  %54 = load i32, i32* @ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION, align 4
  %55 = load i32, i32* @ATOM_VRAM_OPERATION_FLAGS_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %22
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @ATOM_VRAM_OPERATION_FLAGS_MASK, align 8
  %62 = xor i64 %61, -1
  %63 = and i64 %60, %62
  %64 = shl i64 %63, 10
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = shl i64 %68, 10
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  store i32 0, i32* %10, align 4
  br label %79

73:                                               ; preds = %22
  %74 = load %struct.vram_usagebyfirmware_v2_1*, %struct.vram_usagebyfirmware_v2_1** %6, align 8
  %75 = getelementptr inbounds %struct.vram_usagebyfirmware_v2_1, %struct.vram_usagebyfirmware_v2_1* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = shl i32 %77, 10
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %73, %59
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %82 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 20480, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i32 @kzalloc(i32 %87, i32 %88)
  %90 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %91 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %93 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %103

99:                                               ; preds = %86
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %102 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @get_index_into_master_table(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.atom_context*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
