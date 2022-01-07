; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-core.c_uclogic_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-core.c_uclogic_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i8* }
%struct.hid_input = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i64, %struct.hid_field** }
%struct.hid_field = type { i32 }
%struct.uclogic_drvdata = type { %struct.TYPE_6__*, %struct.uclogic_params }
%struct.uclogic_params = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Pad\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Pen\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Consumer Control\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"System Control\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*)* @uclogic_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclogic_input_configured(%struct.hid_device* %0, %struct.hid_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_input*, align 8
  %6 = alloca %struct.uclogic_drvdata*, align 8
  %7 = alloca %struct.uclogic_params*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_input* %1, %struct.hid_input** %5, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call %struct.uclogic_drvdata* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.uclogic_drvdata* %13, %struct.uclogic_drvdata** %6, align 8
  %14 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %6, align 8
  %15 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %14, i32 0, i32 1
  store %struct.uclogic_params* %15, %struct.uclogic_params** %7, align 8
  store i8* null, i8** %9, align 8
  %16 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %17 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

21:                                               ; preds = %2
  %22 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %23 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.uclogic_params*, %struct.uclogic_params** %7, align 8
  %28 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %34 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %6, align 8
  %37 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %36, i32 0, i32 0
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %37, align 8
  br label %38

38:                                               ; preds = %32, %21
  %39 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %40 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.hid_field**, %struct.hid_field*** %42, align 8
  %44 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %43, i64 0
  %45 = load %struct.hid_field*, %struct.hid_field** %44, align 8
  store %struct.hid_field* %45, %struct.hid_field** %10, align 8
  %46 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %47 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %55 [
    i32 131, label %49
    i32 129, label %50
    i32 130, label %51
    i32 132, label %52
    i32 133, label %53
    i32 128, label %54
  ]

49:                                               ; preds = %38
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %55

50:                                               ; preds = %38
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %55

51:                                               ; preds = %38
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %55

52:                                               ; preds = %38
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %55

53:                                               ; preds = %38
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %55

54:                                               ; preds = %38
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %55

55:                                               ; preds = %38, %54, %53, %52, %51, %50, %49
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %91

58:                                               ; preds = %55
  %59 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %60 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 2
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %63, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %11, align 8
  %68 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %69 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @devm_kzalloc(i32* %71, i64 %72, i32 %73)
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %58
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %81 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @snprintf(i8* %78, i64 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %82, i8* %83)
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %87 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i8* %85, i8** %89, align 8
  br label %90

90:                                               ; preds = %77, %58
  br label %91

91:                                               ; preds = %90, %55
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %20
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.uclogic_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
