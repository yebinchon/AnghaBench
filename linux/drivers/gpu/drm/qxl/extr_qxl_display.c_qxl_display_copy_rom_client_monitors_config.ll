; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_display_copy_rom_client_monitors_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_display_copy_rom_client_monitors_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, %struct.qxl_head* }
%struct.qxl_head = type { i64, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.qxl_urect* }
%struct.qxl_urect = type { i64, i64, i64, i64 }

@MONITORS_CONFIG_UNCHANGED = common dso_local global i32 0, align 4
@MONITORS_CONFIG_BAD_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no client monitors configured\0A\00", align 1
@qxl_num_crtc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"client monitors list will be truncated: %d < %d\0A\00", align 1
@MONITORS_CONFIG_MODIFIED = common dso_local global i32 0, align 4
@MONITORS_CONFIG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"read %dx%d+%d+%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*)* @qxl_display_copy_rom_client_monitors_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_display_copy_rom_client_monitors_config(%struct.qxl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qxl_urect*, align 8
  %9 = alloca %struct.qxl_head*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  %10 = load i32, i32* @MONITORS_CONFIG_UNCHANGED, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %12 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %18 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = bitcast %struct.TYPE_4__* %20 to i32*
  %22 = call i64 @crc32(i32 0, i32* %21, i32 16)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %25 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @MONITORS_CONFIG_BAD_CRC, align 4
  store i32 %31, i32* %2, align 4
  br label %232

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %232

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @qxl_num_crtc, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @qxl_num_crtc, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @qxl_num_crtc, align 4
  store i32 %46, i32* %5, align 4
  br label %54

47:                                               ; preds = %38
  %48 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %49 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %56 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %62 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %60, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @MONITORS_CONFIG_MODIFIED, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %59, %54
  %70 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @qxl_alloc_client_monitors_config(%struct.qxl_device* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @MONITORS_CONFIG_ERROR, align 4
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %232

77:                                               ; preds = %69
  %78 = load i32, i32* @qxl_num_crtc, align 4
  %79 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %80 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %227, %77
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %86 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %84, %89
  br i1 %90, label %91, label %230

91:                                               ; preds = %83
  %92 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %93 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.qxl_urect*, %struct.qxl_urect** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %97, i64 %99
  store %struct.qxl_urect* %100, %struct.qxl_urect** %8, align 8
  %101 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %102 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load %struct.qxl_head*, %struct.qxl_head** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %105, i64 %107
  store %struct.qxl_head* %108, %struct.qxl_head** %9, align 8
  %109 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %110 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %113 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %91
  %117 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %118 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %121 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* @MONITORS_CONFIG_MODIFIED, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %116, %91
  %124 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %125 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %128 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %126, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %133 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %136 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load i32, i32* @MONITORS_CONFIG_MODIFIED, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %131, %123
  %139 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %140 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %143 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %146 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = icmp ne i64 %141, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %138
  %151 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %152 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %155 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %153, %156
  %158 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %159 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* @MONITORS_CONFIG_MODIFIED, align 4
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %150, %138
  %162 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %163 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %166 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %169 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %167, %170
  %172 = icmp ne i64 %164, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %161
  %174 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %175 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.qxl_urect*, %struct.qxl_urect** %8, align 8
  %178 = getelementptr inbounds %struct.qxl_urect, %struct.qxl_urect* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %176, %179
  %181 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %182 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %181, i32 0, i32 3
  store i64 %180, i64* %182, align 8
  %183 = load i32, i32* @MONITORS_CONFIG_MODIFIED, align 4
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %173, %161
  %185 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %186 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %191 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %190, i32 0, i32 4
  store i64 0, i64* %191, align 8
  %192 = load i32, i32* @MONITORS_CONFIG_MODIFIED, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %189, %184
  %194 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %195 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load i32, i32* %4, align 4
  %201 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %202 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* @MONITORS_CONFIG_MODIFIED, align 4
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %199, %193
  %205 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %206 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %211 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %210, i32 0, i32 6
  store i64 0, i64* %211, align 8
  %212 = load i32, i32* @MONITORS_CONFIG_MODIFIED, align 4
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %209, %204
  %214 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %215 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %218 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %221 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %224 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %216, i64 %219, i64 %222, i64 %225)
  br label %227

227:                                              ; preds = %213
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %4, align 4
  br label %83

230:                                              ; preds = %83
  %231 = load i32, i32* %7, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %230, %74, %35, %30
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i64 @crc32(i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @qxl_alloc_client_monitors_config(%struct.qxl_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
