; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_firmware_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_firmware_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_amdgpu_info_firmware = type { i32, i32 }
%struct.drm_amdgpu_query_fw = type { i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_11__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_query_fw*, %struct.amdgpu_device*)* @amdgpu_firmware_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_firmware_info(%struct.drm_amdgpu_info_firmware* %0, %struct.drm_amdgpu_query_fw* %1, %struct.amdgpu_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_amdgpu_info_firmware*, align 8
  %6 = alloca %struct.drm_amdgpu_query_fw*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  store %struct.drm_amdgpu_info_firmware* %0, %struct.drm_amdgpu_info_firmware** %5, align 8
  store %struct.drm_amdgpu_query_fw* %1, %struct.drm_amdgpu_query_fw** %6, align 8
  store %struct.amdgpu_device* %2, %struct.amdgpu_device** %7, align 8
  %8 = load %struct.drm_amdgpu_query_fw*, %struct.drm_amdgpu_query_fw** %6, align 8
  %9 = getelementptr inbounds %struct.drm_amdgpu_query_fw, %struct.drm_amdgpu_query_fw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %306 [
    i32 129, label %11
    i32 130, label %24
    i32 128, label %33
    i32 135, label %42
    i32 142, label %51
    i32 140, label %64
    i32 143, label %77
    i32 139, label %90
    i32 138, label %103
    i32 137, label %116
    i32 136, label %129
    i32 141, label %142
    i32 133, label %183
    i32 131, label %192
    i32 134, label %232
    i32 132, label %271
    i32 145, label %284
    i32 144, label %297
  ]

11:                                               ; preds = %3
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %17 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %23 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %309

24:                                               ; preds = %3
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %30 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %32 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %309

33:                                               ; preds = %3
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %39 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %41 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %309

42:                                               ; preds = %3
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %48 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %50 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %309

51:                                               ; preds = %3
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 17
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %57 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 16
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %63 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %309

64:                                               ; preds = %3
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 15
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %70 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 14
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %76 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %309

77:                                               ; preds = %3
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 13
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %83 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 12
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %89 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %309

90:                                               ; preds = %3
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %96 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %102 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  br label %309

103:                                              ; preds = %3
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %109 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %115 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %309

116:                                              ; preds = %3
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %122 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %128 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  br label %309

129:                                              ; preds = %3
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %135 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %141 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %309

142:                                              ; preds = %3
  %143 = load %struct.drm_amdgpu_query_fw*, %struct.drm_amdgpu_query_fw** %6, align 8
  %144 = getelementptr inbounds %struct.drm_amdgpu_query_fw, %struct.drm_amdgpu_query_fw* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %142
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %153 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %159 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  br label %182

160:                                              ; preds = %142
  %161 = load %struct.drm_amdgpu_query_fw*, %struct.drm_amdgpu_query_fw** %6, align 8
  %162 = getelementptr inbounds %struct.drm_amdgpu_query_fw, %struct.drm_amdgpu_query_fw* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %167 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %171 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %173 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %177 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  br label %181

178:                                              ; preds = %160
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %310

181:                                              ; preds = %165
  br label %182

182:                                              ; preds = %181, %147
  br label %309

183:                                              ; preds = %3
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %185 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %189 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %191 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %190, i32 0, i32 0
  store i32 0, i32* %191, align 4
  br label %309

192:                                              ; preds = %3
  %193 = load %struct.drm_amdgpu_query_fw*, %struct.drm_amdgpu_query_fw** %6, align 8
  %194 = getelementptr inbounds %struct.drm_amdgpu_query_fw, %struct.drm_amdgpu_query_fw* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %195, 1
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %4, align 4
  br label %310

200:                                              ; preds = %192
  %201 = load %struct.drm_amdgpu_query_fw*, %struct.drm_amdgpu_query_fw** %6, align 8
  %202 = getelementptr inbounds %struct.drm_amdgpu_query_fw, %struct.drm_amdgpu_query_fw* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %200
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %207 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %211 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %213 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %217 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  br label %231

218:                                              ; preds = %200
  %219 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %220 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %224 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %226 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %230 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %218, %205
  br label %309

232:                                              ; preds = %3
  %233 = load %struct.drm_amdgpu_query_fw*, %struct.drm_amdgpu_query_fw** %6, align 8
  %234 = getelementptr inbounds %struct.drm_amdgpu_query_fw, %struct.drm_amdgpu_query_fw* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %237 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp sge i32 %235, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %232
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %4, align 4
  br label %310

244:                                              ; preds = %232
  %245 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %246 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %247, align 8
  %249 = load %struct.drm_amdgpu_query_fw*, %struct.drm_amdgpu_query_fw** %6, align 8
  %250 = getelementptr inbounds %struct.drm_amdgpu_query_fw, %struct.drm_amdgpu_query_fw* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %257 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  %258 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %259 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = load %struct.drm_amdgpu_query_fw*, %struct.drm_amdgpu_query_fw** %6, align 8
  %263 = getelementptr inbounds %struct.drm_amdgpu_query_fw, %struct.drm_amdgpu_query_fw* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %270 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 4
  br label %309

271:                                              ; preds = %3
  %272 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %273 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %277 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  %278 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %279 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %283 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 4
  br label %309

284:                                              ; preds = %3
  %285 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %286 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %290 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %292 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %296 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 4
  br label %309

297:                                              ; preds = %3
  %298 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %299 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %303 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 4
  %304 = load %struct.drm_amdgpu_info_firmware*, %struct.drm_amdgpu_info_firmware** %5, align 8
  %305 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, %struct.drm_amdgpu_info_firmware* %304, i32 0, i32 0
  store i32 0, i32* %305, align 4
  br label %309

306:                                              ; preds = %3
  %307 = load i32, i32* @EINVAL, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %4, align 4
  br label %310

309:                                              ; preds = %297, %284, %271, %244, %231, %183, %182, %129, %116, %103, %90, %77, %64, %51, %42, %33, %24, %11
  store i32 0, i32* %4, align 4
  br label %310

310:                                              ; preds = %309, %306, %241, %197, %178
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
