; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_kms_setup_crtcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_kms_setup_crtcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { i64, %struct.komeda_crtc* }
%struct.komeda_crtc = type { %struct.TYPE_2__*, %struct.komeda_pipeline* }
%struct.TYPE_2__ = type { i32 }
%struct.komeda_pipeline = type { i32 }
%struct.komeda_dev = type { i32, %struct.komeda_pipeline** }

@.str = private unnamed_addr constant [8 x i8] c"pipe-%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"CRTC-%d: master(pipe-%d) slave(%s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_kms_setup_crtcs(%struct.komeda_kms_dev* %0, %struct.komeda_dev* %1) #0 {
  %3 = alloca %struct.komeda_kms_dev*, align 8
  %4 = alloca %struct.komeda_dev*, align 8
  %5 = alloca %struct.komeda_crtc*, align 8
  %6 = alloca %struct.komeda_pipeline*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %3, align 8
  store %struct.komeda_dev* %1, %struct.komeda_dev** %4, align 8
  %9 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %3, align 8
  %10 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %67, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %14 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %11
  %18 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %3, align 8
  %19 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %18, i32 0, i32 1
  %20 = load %struct.komeda_crtc*, %struct.komeda_crtc** %19, align 8
  %21 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %3, align 8
  %22 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %20, i64 %23
  store %struct.komeda_crtc* %24, %struct.komeda_crtc** %5, align 8
  %25 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %26 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %25, i32 0, i32 1
  %27 = load %struct.komeda_pipeline**, %struct.komeda_pipeline*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.komeda_pipeline*, %struct.komeda_pipeline** %27, i64 %29
  %31 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %30, align 8
  store %struct.komeda_pipeline* %31, %struct.komeda_pipeline** %6, align 8
  %32 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %33 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %34 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %33, i32 0, i32 1
  store %struct.komeda_pipeline* %32, %struct.komeda_pipeline** %34, align 8
  %35 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %36 = call %struct.TYPE_2__* @komeda_pipeline_get_slave(%struct.komeda_pipeline* %35)
  %37 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %37, i32 0, i32 0
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  %39 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %40 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %17
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %45 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %46 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %54

51:                                               ; preds = %17
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %43
  %55 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %3, align 8
  %56 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %59 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %62 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %57, i32 %60, i8* %61)
  %63 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %3, align 8
  %64 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %11

70:                                               ; preds = %11
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @komeda_pipeline_get_slave(%struct.komeda_pipeline*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @DRM_INFO(i8*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
