; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ucode.c_amdgpu_ucode_init_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ucode.c_amdgpu_ucode_init_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64, i32, i64, i64, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { i32 }

@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_MAXIMUM = common dso_local global i8* null, align 8
@AMDGPU_UCODE_ID_CP_MEC1 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ucode_init_bo(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_firmware_info*, align 8
  %7 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i64 0, i64* %4, align 8
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %6, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11
  store i32 0, i32* %2, align 4
  br label %143

22:                                               ; preds = %16, %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8*, i8** @AMDGPU_UCODE_ID_MAXIMUM, align 8
  %35 = getelementptr i8, i8* %34, i64 -3
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  br label %47

40:                                               ; preds = %29
  %41 = load i8*, i8** @AMDGPU_UCODE_ID_MAXIMUM, align 8
  %42 = getelementptr i8, i8* %41, i64 -4
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  br label %47

47:                                               ; preds = %40, %33
  br label %54

48:                                               ; preds = %22
  %49 = load i8*, i8** @AMDGPU_UCODE_ID_MAXIMUM, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %47
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %139, %54
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %142

62:                                               ; preds = %55
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %66, i64 %68
  store %struct.amdgpu_firmware_info* %69, %struct.amdgpu_firmware_info** %6, align 8
  %70 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %71 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %138

74:                                               ; preds = %62
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @amdgpu_ucode_init_single_fw(%struct.amdgpu_device* %75, %struct.amdgpu_firmware_info* %76, i64 %82, i64 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @AMDGPU_UCODE_ID_CP_MEC1, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %74
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %93
  %101 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %102 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %106, %struct.gfx_firmware_header_v1_0** %7, align 8
  %107 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %4, align 8
  %113 = add nsw i64 %111, %112
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %4, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @amdgpu_ucode_patch_jt(%struct.amdgpu_firmware_info* %107, i64 %113, i64 %119)
  %121 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %122 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = shl i32 %124, 2
  %126 = load i32, i32* @PAGE_SIZE, align 4
  %127 = call i64 @ALIGN(i32 %125, i32 %126)
  %128 = load i64, i64* %4, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %100, %93, %74
  %131 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %6, align 8
  %132 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = call i64 @ALIGN(i32 %133, i32 %134)
  %136 = load i64, i64* %4, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %130, %62
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %55

142:                                              ; preds = %55
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %21
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ucode_init_single_fw(%struct.amdgpu_device*, %struct.amdgpu_firmware_info*, i64, i64) #1

declare dso_local i32 @amdgpu_ucode_patch_jt(%struct.amdgpu_firmware_info*, i64, i64) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
