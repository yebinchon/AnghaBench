; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_request_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_request_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.adreno_gpu = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"qcom/%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FW_LOCATION_UNKNOWN = common dso_local global i64 0, align 8
@FW_LOCATION_NEW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"loaded %s from new location\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to load %s: %d\0A\00", align 1
@FW_LOCATION_LEGACY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"loaded %s from legacy location\0A\00", align 1
@FW_LOCATION_HELPER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"loaded %s with helper\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"failed to load %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.firmware* @adreno_request_fw(%struct.adreno_gpu* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.adreno_gpu* %0, %struct.adreno_gpu** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %11 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  store %struct.firmware* null, %struct.firmware** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @kasprintf(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.firmware* @ERR_PTR(i32 %21)
  store %struct.firmware* %22, %struct.firmware** %3, align 8
  br label %174

23:                                               ; preds = %2
  %24 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %25 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FW_LOCATION_UNKNOWN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %31 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FW_LOCATION_NEW, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %29, %23
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @request_firmware_direct(%struct.firmware** %7, i8* %36, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @DRM_DEV_INFO(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i64, i64* @FW_LOCATION_NEW, align 8
  %50 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %51 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %170

52:                                               ; preds = %35
  %53 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %54 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FW_LOCATION_UNKNOWN, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i8*, i8*, ...) @DRM_DEV_ERROR(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call %struct.firmware* @ERR_PTR(i32 %65)
  store %struct.firmware* %66, %struct.firmware** %7, align 8
  br label %170

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %29
  %70 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %71 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FW_LOCATION_UNKNOWN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %77 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FW_LOCATION_LEGACY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %115

81:                                               ; preds = %75, %69
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @request_firmware_direct(%struct.firmware** %7, i8* %82, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %81
  %90 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @DRM_DEV_INFO(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  %95 = load i64, i64* @FW_LOCATION_LEGACY, align 8
  %96 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %97 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %170

98:                                               ; preds = %81
  %99 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %100 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @FW_LOCATION_UNKNOWN, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i32, i8*, i8*, ...) @DRM_DEV_ERROR(i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = call %struct.firmware* @ERR_PTR(i32 %111)
  store %struct.firmware* %112, %struct.firmware** %7, align 8
  br label %170

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %75
  %116 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %117 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @FW_LOCATION_UNKNOWN, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %123 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @FW_LOCATION_HELPER, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %161

127:                                              ; preds = %121, %115
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @request_firmware(%struct.firmware** %7, i8* %128, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %127
  %136 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %137 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 @DRM_DEV_INFO(i32 %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %139)
  %141 = load i64, i64* @FW_LOCATION_HELPER, align 8
  %142 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %143 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %170

144:                                              ; preds = %127
  %145 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %146 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @FW_LOCATION_UNKNOWN, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %152 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** %8, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 (i32, i8*, i8*, ...) @DRM_DEV_ERROR(i32 %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %154, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = call %struct.firmware* @ERR_PTR(i32 %157)
  store %struct.firmware* %158, %struct.firmware** %7, align 8
  br label %170

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160, %121
  %162 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %163 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %5, align 8
  %166 = call i32 (i32, i8*, i8*, ...) @DRM_DEV_ERROR(i32 %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %165)
  %167 = load i32, i32* @ENOENT, align 4
  %168 = sub nsw i32 0, %167
  %169 = call %struct.firmware* @ERR_PTR(i32 %168)
  store %struct.firmware* %169, %struct.firmware** %7, align 8
  br label %170

170:                                              ; preds = %161, %150, %135, %104, %89, %58, %43
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @kfree(i8* %171)
  %173 = load %struct.firmware*, %struct.firmware** %7, align 8
  store %struct.firmware* %173, %struct.firmware** %3, align 8
  br label %174

174:                                              ; preds = %170, %19
  %175 = load %struct.firmware*, %struct.firmware** %3, align 8
  ret %struct.firmware* %175
}

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local %struct.firmware* @ERR_PTR(i32) #1

declare dso_local i32 @request_firmware_direct(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @DRM_DEV_INFO(i32, i8*, i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
