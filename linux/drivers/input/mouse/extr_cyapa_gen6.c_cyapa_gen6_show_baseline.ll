; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_show_baseline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_show_baseline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cyapa = type { i32 }

@GEN6_MAX_RX_NUM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GEN6_RETRIEVE_DATA_ID_RX_ATTENURATOR_IDAC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d \00", align 1
@GEN6_RETRIEVE_DATA_ID_ATTENURATOR_TRIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cyapa_gen6_show_baseline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen6_show_baseline(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cyapa*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.cyapa* @dev_get_drvdata(%struct.device* %17)
  store %struct.cyapa* %18, %struct.cyapa** %8, align 8
  %19 = load i32, i32* @GEN6_MAX_RX_NUM, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %24 = call i32 @cyapa_is_pip_app_mode(%struct.cyapa* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

29:                                               ; preds = %3
  %30 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %31 = call i32 @cyapa_pip_suspend_scanning(%struct.cyapa* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

36:                                               ; preds = %29
  %37 = mul nuw i64 4, %20
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @GEN6_RETRIEVE_DATA_ID_RX_ATTENURATOR_IDAC, align 4
  %42 = call i32 @cyapa_pip_retrieve_data_structure(%struct.cyapa* %39, i32 0, i32 %40, i32 %41, i32* %22, i32* %11)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %107

46:                                               ; preds = %36
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = getelementptr inbounds i32, i32* %22, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = getelementptr inbounds i32, i32* %22, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds i32, i32* %22, i64 2
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds i32, i32* %22, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds i32, i32* %22, i64 4
  %58 = load i32, i32* %57, align 16
  %59 = getelementptr inbounds i32, i32* %22, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52, i32 %54, i32 %56, i32 %58, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = mul nuw i64 4, %20
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @GEN6_RETRIEVE_DATA_ID_ATTENURATOR_TRIM, align 4
  %67 = call i32 @cyapa_pip_retrieve_data_structure(%struct.cyapa* %64, i32 0, i32 %65, i32 %66, i32* %22, i32* %11)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %46
  br label %107

71:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %92, %71
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %81, %83
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %22, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %80, i64 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %76
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %72

95:                                               ; preds = %72
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i64, i64* @PAGE_SIZE, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %100, %102
  %104 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %99, i64 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %95, %70, %45
  %108 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %109 = call i32 @cyapa_pip_resume_scanning(%struct.cyapa* %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112, %107
  %116 = load i8*, i8** %7, align 8
  %117 = load i64, i64* @PAGE_SIZE, align 8
  %118 = call i32 @memset(i8* %116, i32 0, i64 %117)
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %15, align 4
  br label %125

123:                                              ; preds = %115
  %124 = load i32, i32* %14, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  store i32 %126, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

127:                                              ; preds = %112
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %129

129:                                              ; preds = %127, %125, %34, %26
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.cyapa* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cyapa_is_pip_app_mode(%struct.cyapa*) #1

declare dso_local i32 @cyapa_pip_suspend_scanning(%struct.cyapa*) #1

declare dso_local i32 @cyapa_pip_retrieve_data_structure(%struct.cyapa*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @cyapa_pip_resume_scanning(%struct.cyapa*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
