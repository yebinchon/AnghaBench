; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_load_dmcu_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_load_dmcu_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_12__* }
%struct.dmcu_firmware_header_v1_0 = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@FIRMWARE_RAVEN_DMCU = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unsupported ASIC type: 0x%X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"dm: DMCU firmware not supported on direct or SMU loading\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"dm: DMCU firmware not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"amdgpu_dm: Can't load firmware \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"amdgpu_dm: Can't validate firmware \22%s\22\0A\00", align 1
@AMDGPU_UCODE_ID_DMCU_ERAM = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_DMCU_INTV = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"PSP loading DMCU firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @load_dmcu_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_dmcu_fw(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmcu_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %30 [
    i32 148, label %10
    i32 145, label %10
    i32 143, label %10
    i32 144, label %10
    i32 142, label %10
    i32 132, label %10
    i32 146, label %10
    i32 147, label %10
    i32 133, label %10
    i32 137, label %10
    i32 138, label %10
    i32 136, label %10
    i32 128, label %10
    i32 131, label %10
    i32 130, label %10
    i32 129, label %10
    i32 141, label %10
    i32 139, label %10
    i32 140, label %10
    i32 134, label %10
    i32 135, label %11
  ]

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %184

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ASICREV_IS_PICASSO(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i8*, i8** @FIRMWARE_RAVEN_DMCU, align 8
  store i8* %18, i8** %4, align 8
  br label %29

19:                                               ; preds = %11
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ASICREV_IS_RAVEN2(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i8*, i8** @FIRMWARE_RAVEN_DMCU, align 8
  store i8* %26, i8** %4, align 8
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %184

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %17
  br label %37

30:                                               ; preds = %1
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %184

37:                                               ; preds = %29
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %184

46:                                               ; preds = %37
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @request_firmware_direct(%struct.TYPE_12__** %49, i8* %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %63, align 8
  store i32 0, i32* %2, align 4
  br label %184

64:                                               ; preds = %46
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %184

74:                                               ; preds = %64
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = call i32 @amdgpu_ucode_validate(%struct.TYPE_12__* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = call i32 @release_firmware(%struct.TYPE_12__* %91)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %95, align 8
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %184

97:                                               ; preds = %74
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.dmcu_firmware_header_v1_0*
  store %struct.dmcu_firmware_header_v1_0* %104, %struct.dmcu_firmware_header_v1_0** %6, align 8
  %105 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_ERAM, align 8
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_ERAM, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i64 %105, i64* %112, align 8
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_ERAM, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store %struct.TYPE_12__* %116, %struct.TYPE_12__** %123, align 8
  %124 = load %struct.dmcu_firmware_header_v1_0*, %struct.dmcu_firmware_header_v1_0** %6, align 8
  %125 = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, %struct.dmcu_firmware_header_v1_0* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @le32_to_cpu(i32 %127)
  %129 = load %struct.dmcu_firmware_header_v1_0*, %struct.dmcu_firmware_header_v1_0** %6, align 8
  %130 = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, %struct.dmcu_firmware_header_v1_0* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @le32_to_cpu(i32 %131)
  %133 = sub nsw i64 %128, %132
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = call i64 @ALIGN(i64 %133, i32 %134)
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %135
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 8
  %143 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_INTV, align 8
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_INTV, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i64 %143, i64* %150, align 8
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_INTV, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  store %struct.TYPE_12__* %154, %struct.TYPE_12__** %161, align 8
  %162 = load %struct.dmcu_firmware_header_v1_0*, %struct.dmcu_firmware_header_v1_0** %6, align 8
  %163 = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, %struct.dmcu_firmware_header_v1_0* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @le32_to_cpu(i32 %164)
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = call i64 @ALIGN(i64 %165, i32 %166)
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %167
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %170, align 8
  %175 = load %struct.dmcu_firmware_header_v1_0*, %struct.dmcu_firmware_header_v1_0** %6, align 8
  %176 = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, %struct.dmcu_firmware_header_v1_0* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @le32_to_cpu(i32 %178)
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %181 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  store i64 %179, i64* %182, align 8
  %183 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %97, %82, %67, %59, %44, %30, %27, %10
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @ASICREV_IS_PICASSO(i32) #1

declare dso_local i32 @ASICREV_IS_RAVEN2(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @request_firmware_direct(%struct.TYPE_12__**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_12__*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_12__*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
