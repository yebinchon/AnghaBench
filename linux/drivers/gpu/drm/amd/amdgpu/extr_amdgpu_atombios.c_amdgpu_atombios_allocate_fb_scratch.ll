; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_allocate_fb_scratch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_allocate_fb_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.atom_context* }
%struct.atom_context = type { i32, i32, i64 }
%struct._ATOM_VRAM_USAGE_BY_FIRMWARE = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@VRAM_UsageByFirmware = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"atom firmware requested %08x %dkb\0A\00", align 1
@ATOM_VRAM_OPERATION_FLAGS_MASK = common dso_local global i32 0, align 4
@ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION = common dso_local global i32 0, align 4
@ATOM_VRAM_OPERATION_FLAGS_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_atombios_allocate_fb_scratch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_atombios_allocate_fb_scratch(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.atom_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.atom_context*, %struct.atom_context** %13, align 8
  store %struct.atom_context* %14, %struct.atom_context** %4, align 8
  %15 = load i32, i32* @DATA, align 4
  %16 = load i32, i32* @VRAM_UsageByFirmware, align 4
  %17 = call i32 @GetIndexIntoMasterTable(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @amdgpu_atom_parse_data_header(%struct.atom_context* %18, i32 %19, i32* null, i32* null, i32* null, i64* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %89

22:                                               ; preds = %1
  %23 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %24 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %25, %26
  %28 = inttoptr i64 %27 to %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*
  store %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %28, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %8, align 8
  %29 = load %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %8, align 8
  %30 = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %8, align 8
  %37 = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %42)
  %44 = load %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %8, align 8
  %45 = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %8, align 8
  %51 = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ATOM_VRAM_OPERATION_FLAGS_MASK, align 4
  %58 = and i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* @ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION, align 4
  %61 = load i32, i32* @ATOM_VRAM_OPERATION_FLAGS_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %22
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @ATOM_VRAM_OPERATION_FLAGS_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = shl i32 %69, 10
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %10, align 4
  %75 = shl i32 %74, 10
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  store i32 0, i32* %7, align 4
  br label %88

79:                                               ; preds = %22
  %80 = load %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %8, align 8
  %81 = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = mul nsw i32 %86, 1024
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %79, %65
  br label %89

89:                                               ; preds = %88, %1
  %90 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %91 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 20480, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32 @kzalloc(i32 %96, i32 %97)
  %99 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %100 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %102 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %112

108:                                              ; preds = %95
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %111 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.atom_context*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
