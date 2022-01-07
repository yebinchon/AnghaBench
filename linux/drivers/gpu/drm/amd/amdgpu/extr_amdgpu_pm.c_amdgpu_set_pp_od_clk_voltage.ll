; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_pp_od_clk_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_pp_od_clk_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@__const.amdgpu_set_pp_od_clk_voltage.delimiter = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@PP_OD_EDIT_SCLK_VDDC_TABLE = common dso_local global i64 0, align 8
@PP_OD_EDIT_MCLK_VDDC_TABLE = common dso_local global i64 0, align 8
@PP_OD_RESTORE_DEFAULT_TABLE = common dso_local global i64 0, align 8
@PP_OD_COMMIT_DPM_TABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@PP_OD_EDIT_VDDC_CURVE = common dso_local global i64 0, align 8
@AMD_PP_TASK_READJUST_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amdgpu_set_pp_od_clk_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amdgpu_set_pp_od_clk_voltage(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [64 x i64], align 16
  %15 = alloca [128 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [3 x i8], align 1
  %19 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %20)
  store %struct.drm_device* %21, %struct.drm_device** %10, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %23, align 8
  store %struct.amdgpu_device* %24, %struct.amdgpu_device** %11, align 8
  store i64 0, i64* %13, align 8
  %25 = bitcast [3 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.amdgpu_set_pp_od_clk_voltage.delimiter, i32 0, i32 0), i64 3, i1 false)
  %26 = load i64, i64* %9, align 8
  %27 = icmp ugt i64 %26, 127
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %183

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 115
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @PP_OD_EDIT_SCLK_VDDC_TABLE, align 8
  store i64 %37, i64* %19, align 8
  br label %72

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 109
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @PP_OD_EDIT_MCLK_VDDC_TABLE, align 8
  store i64 %44, i64* %19, align 8
  br label %71

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 114
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @PP_OD_RESTORE_DEFAULT_TABLE, align 8
  store i64 %51, i64* %19, align 8
  br label %70

52:                                               ; preds = %45
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 99
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @PP_OD_COMMIT_DPM_TABLE, align 8
  store i64 %58, i64* %19, align 8
  br label %69

59:                                               ; preds = %52
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* @PP_OD_EDIT_VDDC_CURVE, align 8
  store i64 %64, i64* %19, align 8
  br label %68

65:                                               ; preds = %59
  %66 = load i64, i64* @EINVAL, align 8
  %67 = sub i64 0, %66
  store i64 %67, i64* %5, align 8
  br label %183

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %36
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  %77 = call i32 @memcpy(i8* %73, i8* %74, i64 %76)
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  store i8* %78, i8** %16, align 8
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* @PP_OD_EDIT_VDDC_CURVE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %16, align 8
  br label %85

85:                                               ; preds = %82, %72
  br label %86

86:                                               ; preds = %92, %85
  %87 = load i8*, i8** %16, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %16, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @isspace(i8 signext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %86

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %122, %93
  %95 = load i8*, i8** %16, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %94
  %100 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  %101 = call i8* @strsep(i8** %16, i8* %100)
  store i8* %101, i8** %17, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 %103
  %105 = call i32 @kstrtol(i8* %102, i32 0, i64* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i64, i64* @EINVAL, align 8
  %110 = sub i64 0, %109
  store i64 %110, i64* %5, align 8
  br label %183

111:                                              ; preds = %99
  %112 = load i64, i64* %13, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %119, %111
  %115 = load i8*, i8** %16, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @isspace(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i8*, i8** %16, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %16, align 8
  br label %114

122:                                              ; preds = %114
  br label %94

123:                                              ; preds = %94
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %125 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 1
  %130 = load i64, i64* %19, align 8
  %131 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 0
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @smu_od_edit_dpm_table(i32* %129, i64 %130, i64* %131, i64 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i64, i64* @EINVAL, align 8
  %138 = sub i64 0, %137
  store i64 %138, i64* %5, align 8
  br label %183

139:                                              ; preds = %127
  br label %181

140:                                              ; preds = %123
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %140
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %150 = load i64, i64* %19, align 8
  %151 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 0
  %152 = load i64, i64* %13, align 8
  %153 = call i32 @amdgpu_dpm_odn_edit_dpm_table(%struct.amdgpu_device* %149, i64 %150, i64* %151, i64 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i64, i64* @EINVAL, align 8
  %158 = sub i64 0, %157
  store i64 %158, i64* %5, align 8
  br label %183

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %140
  %161 = load i64, i64* %19, align 8
  %162 = load i64, i64* @PP_OD_COMMIT_DPM_TABLE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %174 = load i32, i32* @AMD_PP_TASK_READJUST_POWER_STATE, align 4
  %175 = call i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device* %173, i32 %174, i32* null)
  %176 = load i64, i64* %9, align 8
  store i64 %176, i64* %5, align 8
  br label %183

177:                                              ; preds = %164
  %178 = load i64, i64* @EINVAL, align 8
  %179 = sub i64 0, %178
  store i64 %179, i64* %5, align 8
  br label %183

180:                                              ; preds = %160
  br label %181

181:                                              ; preds = %180, %139
  %182 = load i64, i64* %9, align 8
  store i64 %182, i64* %5, align 8
  br label %183

183:                                              ; preds = %181, %177, %172, %156, %136, %108, %65, %28
  %184 = load i64, i64* %5, align 8
  ret i64 %184
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_od_edit_dpm_table(i32*, i64, i64*, i64) #1

declare dso_local i32 @amdgpu_dpm_odn_edit_dpm_table(%struct.amdgpu_device*, i64, i64*, i64) #1

declare dso_local i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
