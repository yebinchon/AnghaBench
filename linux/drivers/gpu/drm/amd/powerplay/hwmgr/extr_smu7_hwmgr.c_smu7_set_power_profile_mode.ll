; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_set_power_profile_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_set_power_profile_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.profile_mode_setting = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pp_hwmgr = type { i32, i64 }
%struct.smu7_hwmgr = type { %struct.profile_mode_setting }

@EINVAL = common dso_local global i32 0, align 4
@smu7_profiling = common dso_local global %struct.profile_mode_setting* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64*, i64)* @smu7_set_power_profile_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_set_power_profile_mode(%struct.pp_hwmgr* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.smu7_hwmgr*, align 8
  %9 = alloca %struct.profile_mode_setting, align 8
  %10 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %14, %struct.smu7_hwmgr** %8, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %182

20:                                               ; preds = %3
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %178 [
    i32 132, label %27
    i32 131, label %104
    i32 130, label %104
    i32 129, label %104
    i32 128, label %104
    i32 133, label %104
  ]

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 8
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %182

36:                                               ; preds = %30, %27
  %37 = load %struct.profile_mode_setting*, %struct.profile_mode_setting** @smu7_profiling, align 8
  %38 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %37, i64 132
  %39 = bitcast %struct.profile_mode_setting* %9 to i8*
  %40 = bitcast %struct.profile_mode_setting* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 64, i1 false)
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %182

54:                                               ; preds = %47, %43
  br label %92

55:                                               ; preds = %36
  %56 = load i64*, i64** %6, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 2
  store i64 %62, i64* %63, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 3
  store i64 %66, i64* %67, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 3
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 4
  store i64 %70, i64* %71, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 4
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  %76 = load i64*, i64** %6, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 5
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 5
  store i64 %78, i64* %79, align 8
  %80 = load i64*, i64** %6, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 6
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 6
  store i64 %82, i64* %83, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 7
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 7
  store i64 %86, i64* %87, align 8
  %88 = load %struct.profile_mode_setting*, %struct.profile_mode_setting** @smu7_profiling, align 8
  %89 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %88, i64 132
  %90 = bitcast %struct.profile_mode_setting* %89 to i8*
  %91 = bitcast %struct.profile_mode_setting* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 64, i1 false)
  br label %92

92:                                               ; preds = %55, %54
  %93 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %94 = call i32 @smum_update_dpm_settings(%struct.pp_hwmgr* %93, %struct.profile_mode_setting* %9)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %98 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %97, i32 0, i32 0
  %99 = call i32 @memcpy(%struct.profile_mode_setting* %98, %struct.profile_mode_setting* %9, i32 64)
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %102 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %96, %92
  br label %181

104:                                              ; preds = %20, %20, %20, %20, %20
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %107 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %182

111:                                              ; preds = %104
  %112 = load %struct.profile_mode_setting*, %struct.profile_mode_setting** @smu7_profiling, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %112, i64 %114
  %116 = call i32 @memcpy(%struct.profile_mode_setting* %9, %struct.profile_mode_setting* %115, i32 64)
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %118 = call i32 @smum_update_dpm_settings(%struct.pp_hwmgr* %117, %struct.profile_mode_setting* %9)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %177, label %120

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %128 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %133 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %133, i32 0, i32 2
  store i64 %131, i64* %134, align 8
  %135 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %138 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %138, i32 0, i32 3
  store i64 %136, i64* %139, align 8
  %140 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %143 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %143, i32 0, i32 4
  store i64 %141, i64* %144, align 8
  br label %145

145:                                              ; preds = %124, %120
  %146 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %153 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %153, i32 0, i32 1
  store i64 %151, i64* %154, align 8
  %155 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %158 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %158, i32 0, i32 5
  store i64 %156, i64* %159, align 8
  %160 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %163 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %163, i32 0, i32 6
  store i64 %161, i64* %164, align 8
  %165 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %9, i32 0, i32 7
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %168 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.profile_mode_setting, %struct.profile_mode_setting* %168, i32 0, i32 7
  store i64 %166, i64* %169, align 8
  br label %170

170:                                              ; preds = %149, %145
  %171 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @smu7_patch_compute_profile_mode(%struct.pp_hwmgr* %171, i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %176 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %170, %111
  br label %181

178:                                              ; preds = %20
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %182

181:                                              ; preds = %177, %103
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %178, %110, %51, %33, %17
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @smum_update_dpm_settings(%struct.pp_hwmgr*, %struct.profile_mode_setting*) #2

declare dso_local i32 @memcpy(%struct.profile_mode_setting*, %struct.profile_mode_setting*, i32) #2

declare dso_local i32 @smu7_patch_compute_profile_mode(%struct.pp_hwmgr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
