; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.log_writes_c* }
%struct.log_writes_c = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Invalid log-writes message arguments, expect 2 arguments, got %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Unrecognised log writes target message received: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @log_writes_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_writes_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.log_writes_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 0
  %18 = load %struct.log_writes_c*, %struct.log_writes_c** %17, align 8
  store %struct.log_writes_c* %18, %struct.log_writes_c** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %44

25:                                               ; preds = %5
  %26 = load i8**, i8*** %9, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.log_writes_c*, %struct.log_writes_c** %13, align 8
  %33 = load i8**, i8*** %9, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @log_mark(%struct.log_writes_c* %32, i8* %35)
  store i32 %36, i32* %12, align 4
  br label %42

37:                                               ; preds = %25
  %38 = load i8**, i8*** %9, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %21
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @DMWARN(i8*, ...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @log_mark(%struct.log_writes_c*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
