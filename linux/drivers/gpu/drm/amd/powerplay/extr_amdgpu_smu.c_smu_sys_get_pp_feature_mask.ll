; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sys_get_pp_feature_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sys_get_pp_feature_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_FEATURE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"features high: 0x%08x low: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%02d. %-20s (%2d) : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @smu_sys_get_pp_feature_mask(%struct.smu_context* %0, i8* %1) #0 {
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @SMU_FEATURE_COUNT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %21 = call i32 @smu_feature_get_enabled_mask(%struct.smu_context* %19, i32* %20, i32 2)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %90

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  store i64 %33, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %51, %25
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SMU_FEATURE_COUNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @smu_feature_get_index(%struct.smu_context* %39, i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ult i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32, i32* %18, i64 %47
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %45, %44
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %34

54:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %86, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %18, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @smu_get_feature_name(%struct.smu_context* %65, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %18, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @smu_feature_is_enabled(%struct.smu_context* %72, i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %83 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %70, i32 %71, i8* %82)
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %59
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %55

89:                                               ; preds = %55
  br label %90

90:                                               ; preds = %89, %24
  %91 = load i64, i64* %5, align 8
  %92 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i64 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @smu_feature_get_enabled_mask(%struct.smu_context*, i32*, i32) #3

declare dso_local i64 @sprintf(i8*, i8*, i32, ...) #3

declare dso_local i64 @smu_feature_get_index(%struct.smu_context*, i32) #3

declare dso_local i8* @smu_get_feature_name(%struct.smu_context*, i32) #3

declare dso_local i32 @smu_feature_is_enabled(%struct.smu_context*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
