; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i64, %struct.TYPE_9__* }
%struct.smc_firmware_header_v1_0 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.common_firmware_header = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"vega20\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"arcturus\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"navi10\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"navi14\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"navi12\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_smc.bin\00", align 1
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SMC = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"smu_v11_0: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_init_microcode(%struct.smu_context* %0) #0 {
  %2 = alloca %struct.smu_context*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [30 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.smc_firmware_header_v1_0*, align 8
  %8 = alloca %struct.common_firmware_header*, align 8
  %9 = alloca %struct.amdgpu_firmware_info*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %2, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %6, align 4
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %9, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %21 [
    i32 128, label %16
    i32 132, label %17
    i32 131, label %18
    i32 129, label %19
    i32 130, label %20
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %23

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %23

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %23

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %23

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %23

21:                                               ; preds = %1
  %22 = call i32 (...) @BUG()
  br label %23

23:                                               ; preds = %21, %20, %19, %18, %17, %16
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @snprintf(i8* %24, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @request_firmware(%struct.TYPE_9__** %29, i8* %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %108

38:                                               ; preds = %23
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = call i32 @amdgpu_ucode_validate(%struct.TYPE_9__* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %108

47:                                               ; preds = %38
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.smc_firmware_header_v1_0*
  store %struct.smc_firmware_header_v1_0* %54, %struct.smc_firmware_header_v1_0** %7, align 8
  %55 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %7, align 8
  %56 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %55, i32 0, i32 0
  %57 = call i32 @amdgpu_ucode_print_smc_hdr(%struct.TYPE_10__* %56)
  %58 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %7, align 8
  %59 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %47
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %75, align 8
  %77 = load i64, i64* @AMDGPU_UCODE_ID_SMC, align 8
  %78 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %76, i64 %77
  store %struct.amdgpu_firmware_info* %78, %struct.amdgpu_firmware_info** %9, align 8
  %79 = load i64, i64* @AMDGPU_UCODE_ID_SMC, align 8
  %80 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %9, align 8
  %81 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %9, align 8
  %87 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %86, i32 0, i32 1
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %87, align 8
  %88 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %9, align 8
  %89 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %93, %struct.common_firmware_header** %8, align 8
  %94 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %95 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = call i64 @ALIGN(i32 %97, i32 %98)
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %99
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  br label %107

107:                                              ; preds = %72, %47
  br label %108

108:                                              ; preds = %107, %46, %37
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %113 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = call i32 @release_firmware(%struct.TYPE_9__* %117)
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %121, align 8
  br label %122

122:                                              ; preds = %111, %108
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_9__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_9__*) #1

declare dso_local i32 @amdgpu_ucode_print_smc_hdr(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
