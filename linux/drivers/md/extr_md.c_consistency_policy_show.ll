; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_consistency_policy_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_consistency_policy_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@MD_HAS_JOURNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"journal\0A\00", align 1
@MD_HAS_PPL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ppl\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bitmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"resync\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*)* @consistency_policy_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consistency_policy_show(%struct.mddev* %0, i8* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @MD_HAS_JOURNAL, align 4
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i32, i32* @MD_HAS_PPL, align 4
  %16 = load %struct.mddev*, %struct.mddev** %3, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %14
  %24 = load %struct.mddev*, %struct.mddev** %3, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %5, align 4
  br label %54

31:                                               ; preds = %23
  %32 = load %struct.mddev*, %struct.mddev** %3, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.mddev*, %struct.mddev** %3, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %45, i32* %5, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %53

50:                                               ; preds = %31
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %49
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54, %20
  br label %56

56:                                               ; preds = %55, %11
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
