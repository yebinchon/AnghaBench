; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_pp_power_profile_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_pp_power_profile_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@__const.amdgpu_set_pp_power_profile_mode.delimiter = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@PP_SMC_POWER_PROFILE_CUSTOM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amdgpu_set_pp_power_profile_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amdgpu_set_pp_power_profile_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [64 x i64], align 16
  %15 = alloca i8*, align 8
  %16 = alloca [128 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [2 x i8], align 1
  %20 = alloca i64, align 8
  %21 = alloca [3 x i8], align 1
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 255, i32* %10, align 4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %22)
  store %struct.drm_device* %23, %struct.drm_device** %11, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %25, align 8
  store %struct.amdgpu_device* %26, %struct.amdgpu_device** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %20, align 8
  %27 = bitcast [3 x i8]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.amdgpu_set_pp_power_profile_mode.delimiter, i32 0, i32 0), i64 3, i1 false)
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 1
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %33 = call i32 @kstrtol(i8* %32, i32 0, i64* %20)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %131

37:                                               ; preds = %4
  %38 = load i64, i64* %20, align 8
  %39 = load i64, i64* @PP_SMC_POWER_PROFILE_CUSTOM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %98

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = icmp ult i64 %42, 2
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  %46 = icmp ugt i64 %45, 127
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %41
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %134

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %57, %50
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @isspace(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* %18, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %18, align 8
  br label %51

60:                                               ; preds = %51
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %18, align 8
  %65 = sub i64 %63, %64
  %66 = call i32 @memcpy(i8* %61, i8* %62, i64 %65)
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  store i8* %67, i8** %17, align 8
  br label %68

68:                                               ; preds = %96, %60
  %69 = load i8*, i8** %17, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %68
  %74 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  %75 = call i8* @strsep(i8** %17, i8* %74)
  store i8* %75, i8** %15, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 %77
  %79 = call i32 @kstrtol(i8* %76, i32 0, i64* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i64, i64* @EINVAL, align 8
  %84 = sub i64 0, %83
  store i64 %84, i64* %9, align 8
  br label %131

85:                                               ; preds = %73
  %86 = load i64, i64* %13, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %93, %85
  %89 = load i8*, i8** %17, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @isspace(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %17, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %17, align 8
  br label %88

96:                                               ; preds = %88
  br label %68

97:                                               ; preds = %68
  br label %98

98:                                               ; preds = %97, %37
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %13, align 8
  %101 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 %100
  store i64 %99, i64* %101, align 8
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %103 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 0
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @smu_set_power_profile_mode(i32* %107, i64* %108, i64 %109)
  store i32 %110, i32* %10, align 4
  br label %125

111:                                              ; preds = %98
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %121 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 0
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @amdgpu_dpm_set_power_profile_mode(%struct.amdgpu_device* %120, i64* %121, i64 %122)
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %119, %111
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* %9, align 8
  store i64 %129, i64* %5, align 8
  br label %134

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130, %82, %36
  %132 = load i64, i64* @EINVAL, align 8
  %133 = sub i64 0, %132
  store i64 %133, i64* %5, align 8
  br label %134

134:                                              ; preds = %131, %128, %47
  %135 = load i64, i64* %5, align 8
  ret i64 %135
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_set_power_profile_mode(i32*, i64*, i64) #1

declare dso_local i32 @amdgpu_dpm_set_power_profile_mode(%struct.amdgpu_device*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
