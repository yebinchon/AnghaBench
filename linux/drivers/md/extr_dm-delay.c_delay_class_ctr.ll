; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_class_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_class_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32 }
%struct.delay_class = type { i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid device sector\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Invalid delay\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Device lookup failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.delay_class*, i8**)* @delay_class_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_class_ctr(%struct.dm_target* %0, %struct.delay_class* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.delay_class*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.delay_class* %1, %struct.delay_class** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %9, i8* %10)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %3
  %21 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %16
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %28 = getelementptr inbounds %struct.delay_class, %struct.delay_class* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %33 = getelementptr inbounds %struct.delay_class, %struct.delay_class* %32, i32 0, i32 1
  %34 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %33, i8* %10)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %38 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %60

41:                                               ; preds = %25
  %42 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %47 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dm_table_get_mode(i32 %48)
  %50 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %51 = getelementptr inbounds %struct.delay_class, %struct.delay_class* %50, i32 0, i32 2
  %52 = call i32 @dm_get_device(%struct.dm_target* %42, i8* %45, i32 %49, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %57 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %57, align 8
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %55, %36, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
