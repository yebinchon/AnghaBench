; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i32, %struct.TYPE_12__* }
%struct.common_firmware_header = type { i32 }
%struct.sdma_firmware_header_v1_0 = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"topaz\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_sdma.bin\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"amdgpu/%s_sdma1.bin\00", align 1
@AMDGPU_FW_LOAD_SMU = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_SDMA0 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"sdma_v2_4: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @sdma_v2_4_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v2_4_init_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [30 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_firmware_info*, align 8
  %8 = alloca %struct.common_firmware_header*, align 8
  %9 = alloca %struct.sdma_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %5, align 4
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %7, align 8
  store %struct.common_firmware_header* null, %struct.common_firmware_header** %8, align 8
  %10 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %15 [
    i32 128, label %14
  ]

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %14
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %178, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %181

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @snprintf(i8* %29, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @snprintf(i8* %33, i32 30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @request_firmware(%struct.TYPE_12__** %44, i8* %45, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %182

53:                                               ; preds = %36
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = call i32 @amdgpu_ucode_validate(%struct.TYPE_12__* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %182

67:                                               ; preds = %53
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.sdma_firmware_header_v1_0*
  store %struct.sdma_firmware_header_v1_0* %79, %struct.sdma_firmware_header_v1_0** %9, align 8
  %80 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %9, align 8
  %81 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @le32_to_cpu(i32 %83)
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i8* %84, i8** %92, align 8
  %93 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %9, align 8
  %94 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 %97, i32* %105, align 8
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %114, 20
  br i1 %115, label %116, label %125

116:                                              ; preds = %67
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %67
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @AMDGPU_FW_LOAD_SMU, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %177

132:                                              ; preds = %125
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %135, align 8
  %137 = load i32, i32* @AMDGPU_UCODE_ID_SDMA0, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %136, i64 %140
  store %struct.amdgpu_firmware_info* %141, %struct.amdgpu_firmware_info** %7, align 8
  %142 = load i32, i32* @AMDGPU_UCODE_ID_SDMA0, align 4
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %142, %143
  %145 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %146 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %157 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %156, i32 0, i32 1
  store %struct.TYPE_12__* %155, %struct.TYPE_12__** %157, align 8
  %158 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %159 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %158, i32 0, i32 1
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %163, %struct.common_firmware_header** %8, align 8
  %164 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %165 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le32_to_cpu(i32 %166)
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = call i64 @ALIGN(i8* %167, i32 %168)
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %171 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %169
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  br label %177

177:                                              ; preds = %132, %125
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %18

181:                                              ; preds = %18
  br label %182

182:                                              ; preds = %181, %66, %52
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %218

185:                                              ; preds = %182
  %186 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %187 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %186)
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %214, %185
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %191 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %189, %193
  br i1 %194, label %195, label %217

195:                                              ; preds = %188
  %196 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %197 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = call i32 @release_firmware(%struct.TYPE_12__* %204)
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %207 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %213, align 8
  br label %214

214:                                              ; preds = %195
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %188

217:                                              ; preds = %188
  br label %218

218:                                              ; preds = %217, %182
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_12__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_12__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
