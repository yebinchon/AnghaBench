; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_zap_shader_load_mdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_zap_shader_load_mdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.TYPE_5__ = type { i64 }

@CONFIG_ARCH_QCOM = common dso_local global i32 0, align 4
@zap_available = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"zap-shader\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Unable to load %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"memory region is too small to load the MDT\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@MEMREMAP_WC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_LOCATION_LEGACY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"qcom/%s\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to authorize the image\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, i8*, i32)* @zap_shader_load_mdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_shader_load_mdt(%struct.msm_gpu* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.resource, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %19 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %8, align 8
  store i8* null, i8** %15, align 8
  %22 = load i32, i32* @CONFIG_ARCH_QCOM, align 4
  %23 = call i32 @IS_ENABLED(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  store i32 0, i32* @zap_available, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %159

28:                                               ; preds = %3
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.device_node* @of_get_child_by_name(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %32, %struct.device_node** %10, align 8
  %33 = load %struct.device_node*, %struct.device_node** %10, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  store i32 0, i32* @zap_available, align 4
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %159

38:                                               ; preds = %28
  %39 = load %struct.device_node*, %struct.device_node** %10, align 8
  %40 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %40, %struct.device_node** %11, align 8
  %41 = load %struct.device_node*, %struct.device_node** %10, align 8
  %42 = call i32 @of_node_put(%struct.device_node* %41)
  %43 = load %struct.device_node*, %struct.device_node** %11, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  store i32 0, i32* @zap_available, align 4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %159

48:                                               ; preds = %38
  %49 = load %struct.device_node*, %struct.device_node** %11, align 8
  %50 = call i32 @of_address_to_resource(%struct.device_node* %49, i32 0, %struct.resource* %12)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.device_node*, %struct.device_node** %11, align 8
  %52 = call i32 @of_node_put(%struct.device_node* %51)
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %4, align 4
  br label %159

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %61 = call %struct.TYPE_5__* @to_adreno_gpu(%struct.msm_gpu* %60)
  %62 = load i8*, i8** %6, align 8
  %63 = call %struct.firmware* @adreno_request_fw(%struct.TYPE_5__* %61, i8* %62)
  store %struct.firmware* %63, %struct.firmware** %9, align 8
  %64 = load %struct.firmware*, %struct.firmware** %9, align 8
  %65 = call i64 @IS_ERR(%struct.firmware* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load %struct.device*, %struct.device** %8, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load %struct.firmware*, %struct.firmware** %9, align 8
  %72 = call i32 @PTR_ERR(%struct.firmware* %71)
  store i32 %72, i32* %4, align 4
  br label %159

73:                                               ; preds = %57
  %74 = load %struct.firmware*, %struct.firmware** %9, align 8
  %75 = call i32 @qcom_mdt_get_size(%struct.firmware* %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %16, align 4
  br label %149

80:                                               ; preds = %73
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @resource_size(%struct.resource* %12)
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @E2BIG, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %16, align 4
  br label %149

89:                                               ; preds = %80
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @MEMREMAP_WC, align 4
  %93 = call i8* @memremap(i32 %90, i32 %91, i32 %92)
  store i8* %93, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %16, align 4
  br label %149

99:                                               ; preds = %89
  %100 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %101 = call %struct.TYPE_5__* @to_adreno_gpu(%struct.msm_gpu* %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @FW_LOCATION_LEGACY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load %struct.device*, %struct.device** %8, align 8
  %108 = load %struct.firmware*, %struct.firmware** %9, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i8*, i8** %15, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @qcom_mdt_load(%struct.device* %107, %struct.firmware* %108, i8* %109, i32 %110, i8* %111, i32 %112, i32 %113, i32* null)
  store i32 %114, i32* %16, align 4
  br label %129

115:                                              ; preds = %99
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = call i8* @kasprintf(i32 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %117)
  store i8* %118, i8** %17, align 8
  %119 = load %struct.device*, %struct.device** %8, align 8
  %120 = load %struct.firmware*, %struct.firmware** %9, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i8*, i8** %15, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @qcom_mdt_load(%struct.device* %119, %struct.firmware* %120, i8* %121, i32 %122, i8* %123, i32 %124, i32 %125, i32* null)
  store i32 %126, i32* %16, align 4
  %127 = load i8*, i8** %17, align 8
  %128 = call i32 @kfree(i8* %127)
  br label %129

129:                                              ; preds = %115, %106
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %149

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @qcom_scm_pas_auth_and_reset(i32 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* @EOPNOTSUPP, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 0, i32* @zap_available, align 4
  br label %148

141:                                              ; preds = %133
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.device*, %struct.device** %8, align 8
  %146 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %140
  br label %149

149:                                              ; preds = %148, %132, %96, %84, %78
  %150 = load i8*, i8** %15, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i8*, i8** %15, align 8
  %154 = call i32 @memunmap(i8* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.firmware*, %struct.firmware** %9, align 8
  %157 = call i32 @release_firmware(%struct.firmware* %156)
  %158 = load i32, i32* %16, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %67, %55, %45, %35, %25
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local %struct.firmware* @adreno_request_fw(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.TYPE_5__* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i64 @IS_ERR(%struct.firmware*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.firmware*) #1

declare dso_local i32 @qcom_mdt_get_size(%struct.firmware*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i8* @memremap(i32, i32, i32) #1

declare dso_local i32 @qcom_mdt_load(%struct.device*, %struct.firmware*, i8*, i32, i8*, i32, i32, i32*) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32) #1

declare dso_local i32 @memunmap(i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
