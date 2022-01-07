; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.era* }
%struct.era = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"incorrect number of message arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"checkpoint\00", align 1
@metadata_checkpoint = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"take_metadata_snap\00", align 1
@metadata_take_snap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"drop_metadata_snap\00", align 1
@metadata_drop_snap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unsupported message '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @era_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @era_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.era*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 0
  %15 = load %struct.era*, %struct.era** %14, align 8
  store %struct.era* %15, %struct.era** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %59

22:                                               ; preds = %5
  %23 = load i8**, i8*** %9, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcasecmp(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load %struct.era*, %struct.era** %12, align 8
  %30 = load i32, i32* @metadata_checkpoint, align 4
  %31 = call i32 @in_worker0(%struct.era* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %59

32:                                               ; preds = %22
  %33 = load i8**, i8*** %9, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcasecmp(i8* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load %struct.era*, %struct.era** %12, align 8
  %40 = load i32, i32* @metadata_take_snap, align 4
  %41 = call i32 @in_worker0(%struct.era* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %59

42:                                               ; preds = %32
  %43 = load i8**, i8*** %9, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.era*, %struct.era** %12, align 8
  %50 = load i32, i32* @metadata_drop_snap, align 4
  %51 = call i32 @in_worker0(%struct.era* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %59

52:                                               ; preds = %42
  %53 = load i8**, i8*** %9, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %52, %48, %38, %28, %18
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @in_worker0(%struct.era*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
