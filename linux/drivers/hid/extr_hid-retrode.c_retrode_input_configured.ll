; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-retrode.c_retrode_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-retrode.c_retrode_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { %struct.hid_field** }
%struct.hid_field = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"SNES Mouse\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SNES / N64\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Mega Drive\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Got unhandled report id %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"%s %s #%d\00", align 1
@CONTROLLER_NAME_BASE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*)* @retrode_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrode_input_configured(%struct.hid_device* %0, %struct.hid_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_input*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_input* %1, %struct.hid_input** %5, align 8
  %10 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %11 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.hid_field**, %struct.hid_field*** %13, align 8
  %15 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %14, i64 0
  %16 = load %struct.hid_field*, %struct.hid_field** %15, align 8
  store %struct.hid_field* %16, %struct.hid_field** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %18 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %36 [
    i32 0, label %22
    i32 1, label %23
    i32 2, label %23
    i32 3, label %29
    i32 4, label %29
  ]

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %44

23:                                               ; preds = %2, %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %24 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %25 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  br label %44

29:                                               ; preds = %2, %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %30 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %31 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %8, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %39 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hid_err(%struct.hid_device* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %44

44:                                               ; preds = %36, %29, %23, %22
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %49 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %48, i32 0, i32 0
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load i32, i32* @CONTROLLER_NAME_BASE, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i8* (i32*, i32, i8*, i32, i8*, ...) @devm_kasprintf(i32* %49, i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %51, i8* %52, i32 %53)
  store i8* %54, i8** %9, align 8
  br label %62

55:                                               ; preds = %44
  %56 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %57 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %56, i32 0, i32 0
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = load i32, i32* @CONTROLLER_NAME_BASE, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* (i32*, i32, i8*, i32, i8*, ...) @devm_kasprintf(i32* %57, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %59, i8* %60)
  store i8* %61, i8** %9, align 8
  br label %62

62:                                               ; preds = %55, %47
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.hid_input*, %struct.hid_input** %5, align 8
  %71 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i8* %69, i8** %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i8* @devm_kasprintf(i32*, i32, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
