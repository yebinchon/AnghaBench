; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_pipeline_get_component_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_pipeline_get_component_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32 }
%struct.komeda_pipeline = type { i32, i32, i32, i32, i32*, i32, i32, i32*, %struct.komeda_dev* }
%struct.komeda_dev = type { %struct.komeda_pipeline** }

@.str = private unnamed_addr constant [26 x i8] c"compiz-%d doesn't exist.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ips-%d doesn't exist.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unknown pipeline resource ID: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.komeda_component** (%struct.komeda_pipeline*, i32)* @komeda_pipeline_get_component_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.komeda_component** @komeda_pipeline_get_component_pos(%struct.komeda_pipeline* %0, i32 %1) #0 {
  %3 = alloca %struct.komeda_component**, align 8
  %4 = alloca %struct.komeda_pipeline*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.komeda_dev*, align 8
  %7 = alloca %struct.komeda_pipeline*, align 8
  %8 = alloca %struct.komeda_component**, align 8
  store %struct.komeda_pipeline* %0, %struct.komeda_pipeline** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %10 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %9, i32 0, i32 8
  %11 = load %struct.komeda_dev*, %struct.komeda_dev** %10, align 8
  store %struct.komeda_dev* %11, %struct.komeda_dev** %6, align 8
  store %struct.komeda_pipeline* null, %struct.komeda_pipeline** %7, align 8
  store %struct.komeda_component** null, %struct.komeda_component*** %8, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %91 [
    i32 137, label %13
    i32 136, label %13
    i32 135, label %13
    i32 134, label %13
    i32 128, label %23
    i32 141, label %28
    i32 140, label %28
    i32 132, label %47
    i32 131, label %47
    i32 130, label %57
    i32 133, label %62
    i32 139, label %67
    i32 138, label %67
    i32 129, label %86
  ]

13:                                               ; preds = %2, %2, %2, %2
  %14 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %15 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 137
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.komeda_component** @to_cpos(i32 %21)
  store %struct.komeda_component** %22, %struct.komeda_component*** %8, align 8
  br label %94

23:                                               ; preds = %2
  %24 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %25 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.komeda_component** @to_cpos(i32 %26)
  store %struct.komeda_component** %27, %struct.komeda_component*** %8, align 8
  br label %94

28:                                               ; preds = %2, %2
  %29 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %30 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %29, i32 0, i32 0
  %31 = load %struct.komeda_pipeline**, %struct.komeda_pipeline*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 141
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.komeda_pipeline*, %struct.komeda_pipeline** %31, i64 %34
  %36 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %35, align 8
  store %struct.komeda_pipeline* %36, %struct.komeda_pipeline** %7, align 8
  %37 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %7, align 8
  %38 = icmp ne %struct.komeda_pipeline* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40)
  store %struct.komeda_component** null, %struct.komeda_component*** %3, align 8
  br label %96

42:                                               ; preds = %28
  %43 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %7, align 8
  %44 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.komeda_component** @to_cpos(i32 %45)
  store %struct.komeda_component** %46, %struct.komeda_component*** %8, align 8
  br label %94

47:                                               ; preds = %2, %2
  %48 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %49 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 132
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.komeda_component** @to_cpos(i32 %55)
  store %struct.komeda_component** %56, %struct.komeda_component*** %8, align 8
  br label %94

57:                                               ; preds = %2
  %58 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %59 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.komeda_component** @to_cpos(i32 %60)
  store %struct.komeda_component** %61, %struct.komeda_component*** %8, align 8
  br label %94

62:                                               ; preds = %2
  %63 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %64 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.komeda_component** @to_cpos(i32 %65)
  store %struct.komeda_component** %66, %struct.komeda_component*** %8, align 8
  br label %94

67:                                               ; preds = %2, %2
  %68 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %69 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %68, i32 0, i32 0
  %70 = load %struct.komeda_pipeline**, %struct.komeda_pipeline*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, 139
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.komeda_pipeline*, %struct.komeda_pipeline** %70, i64 %73
  %75 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %74, align 8
  store %struct.komeda_pipeline* %75, %struct.komeda_pipeline** %7, align 8
  %76 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %7, align 8
  %77 = icmp ne %struct.komeda_pipeline* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store %struct.komeda_component** null, %struct.komeda_component*** %3, align 8
  br label %96

81:                                               ; preds = %67
  %82 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %7, align 8
  %83 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.komeda_component** @to_cpos(i32 %84)
  store %struct.komeda_component** %85, %struct.komeda_component*** %8, align 8
  br label %94

86:                                               ; preds = %2
  %87 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %88 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.komeda_component** @to_cpos(i32 %89)
  store %struct.komeda_component** %90, %struct.komeda_component*** %8, align 8
  br label %94

91:                                               ; preds = %2
  store %struct.komeda_component** null, %struct.komeda_component*** %8, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %86, %81, %62, %57, %47, %42, %23, %13
  %95 = load %struct.komeda_component**, %struct.komeda_component*** %8, align 8
  store %struct.komeda_component** %95, %struct.komeda_component*** %3, align 8
  br label %96

96:                                               ; preds = %94, %78, %39
  %97 = load %struct.komeda_component**, %struct.komeda_component*** %3, align 8
  ret %struct.komeda_component** %97
}

declare dso_local %struct.komeda_component** @to_cpos(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
