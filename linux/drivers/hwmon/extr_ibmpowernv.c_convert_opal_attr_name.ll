; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_convert_opal_attr_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_convert_opal_attr_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DT_FAULT_ATTR_SUFFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@DT_DATA_ATTR_SUFFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@DT_THRESHOLD_ATTR_SUFFIX = common dso_local global i32 0, align 4
@TEMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@FAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @convert_opal_attr_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_opal_attr_name(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* @DT_FAULT_ATTR_SUFFIX, align 4
  %8 = call i32 @strcmp(i8* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %36

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @DT_DATA_ATTR_SUFFIX, align 4
  %14 = call i32 @strcmp(i8* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %35

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @DT_THRESHOLD_ATTR_SUFFIX, align 4
  %20 = call i32 @strcmp(i8* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @TEMP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FAN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %32

32:                                               ; preds = %31, %27
  br label %33

33:                                               ; preds = %32, %26
  br label %34

34:                                               ; preds = %33, %17
  br label %35

35:                                               ; preds = %34, %16
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
