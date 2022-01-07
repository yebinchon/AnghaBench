; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_pipeline_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_pipeline_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_pipeline = type { i32, %struct.komeda_pipeline_funcs*, %struct.komeda_dev* }
%struct.komeda_dev = type { i32, %struct.komeda_pipeline**, i32 }
%struct.komeda_pipeline_funcs = type { i32 }

@KOMEDA_MAX_PIPELINES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Exceed max support %d pipelines.\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Request pipeline size too small.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.komeda_pipeline* @komeda_pipeline_add(%struct.komeda_dev* %0, i64 %1, %struct.komeda_pipeline_funcs* %2) #0 {
  %4 = alloca %struct.komeda_pipeline*, align 8
  %5 = alloca %struct.komeda_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.komeda_pipeline_funcs*, align 8
  %8 = alloca %struct.komeda_pipeline*, align 8
  store %struct.komeda_dev* %0, %struct.komeda_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.komeda_pipeline_funcs* %2, %struct.komeda_pipeline_funcs** %7, align 8
  %9 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %10 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @KOMEDA_MAX_PIPELINES, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @KOMEDA_MAX_PIPELINES, align 4
  %17 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.komeda_pipeline* @ERR_PTR(i32 %19)
  store %struct.komeda_pipeline* %20, %struct.komeda_pipeline** %4, align 8
  br label %68

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %22, 24
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.komeda_pipeline* @ERR_PTR(i32 %27)
  store %struct.komeda_pipeline* %28, %struct.komeda_pipeline** %4, align 8
  br label %68

29:                                               ; preds = %21
  %30 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %31 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.komeda_pipeline* @devm_kzalloc(i32 %32, i64 %33, i32 %34)
  store %struct.komeda_pipeline* %35, %struct.komeda_pipeline** %8, align 8
  %36 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %37 = icmp ne %struct.komeda_pipeline* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.komeda_pipeline* @ERR_PTR(i32 %40)
  store %struct.komeda_pipeline* %41, %struct.komeda_pipeline** %4, align 8
  br label %68

42:                                               ; preds = %29
  %43 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %44 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %45 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %44, i32 0, i32 2
  store %struct.komeda_dev* %43, %struct.komeda_dev** %45, align 8
  %46 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %47 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %50 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.komeda_pipeline_funcs*, %struct.komeda_pipeline_funcs** %7, align 8
  %52 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %53 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %52, i32 0, i32 1
  store %struct.komeda_pipeline_funcs* %51, %struct.komeda_pipeline_funcs** %53, align 8
  %54 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %55 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %56 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %55, i32 0, i32 1
  %57 = load %struct.komeda_pipeline**, %struct.komeda_pipeline*** %56, align 8
  %58 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %59 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.komeda_pipeline*, %struct.komeda_pipeline** %57, i64 %61
  store %struct.komeda_pipeline* %54, %struct.komeda_pipeline** %62, align 8
  %63 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %64 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  store %struct.komeda_pipeline* %67, %struct.komeda_pipeline** %4, align 8
  br label %68

68:                                               ; preds = %42, %38, %24, %15
  %69 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  ret %struct.komeda_pipeline* %69
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.komeda_pipeline* @ERR_PTR(i32) #1

declare dso_local %struct.komeda_pipeline* @devm_kzalloc(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
