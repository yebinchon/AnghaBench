; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_get_smu_feature_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_get_smu_feature_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_11_0_cmn2aisc_mapping = type { i32, i32 }
%struct.smu_context = type { i32 }

@SMU_FEATURE_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@arcturus_feature_mask_map = common dso_local global %struct.smu_11_0_cmn2aisc_mapping* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i64)* @arcturus_get_smu_feature_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_get_smu_feature_index(%struct.smu_context* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.smu_11_0_cmn2aisc_mapping, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @SMU_FEATURE_COUNT, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.smu_11_0_cmn2aisc_mapping*, %struct.smu_11_0_cmn2aisc_mapping** @arcturus_feature_mask_map, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.smu_11_0_cmn2aisc_mapping, %struct.smu_11_0_cmn2aisc_mapping* %14, i64 %15
  %17 = bitcast %struct.smu_11_0_cmn2aisc_mapping* %6 to i8*
  %18 = bitcast %struct.smu_11_0_cmn2aisc_mapping* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 8, i1 false)
  %19 = getelementptr inbounds %struct.smu_11_0_cmn2aisc_mapping, %struct.smu_11_0_cmn2aisc_mapping* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.smu_11_0_cmn2aisc_mapping, %struct.smu_11_0_cmn2aisc_mapping* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %22, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
