; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_writecache* }
%struct.dm_writecache = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"flush_on_suspend\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unrecognised message received: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @writecache_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writecache_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_writecache*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  %17 = load %struct.dm_writecache*, %struct.dm_writecache** %16, align 8
  store %struct.dm_writecache* %17, %struct.dm_writecache** %12, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load i8**, i8*** %8, align 8
  %26 = load %struct.dm_writecache*, %struct.dm_writecache** %12, align 8
  %27 = call i32 @process_flush_mesg(i32 %24, i8** %25, %struct.dm_writecache* %26)
  store i32 %27, i32* %11, align 4
  br label %45

28:                                               ; preds = %5
  %29 = load i8**, i8*** %8, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i8**, i8*** %8, align 8
  %37 = load %struct.dm_writecache*, %struct.dm_writecache** %12, align 8
  %38 = call i32 @process_flush_on_suspend_mesg(i32 %35, i8** %36, %struct.dm_writecache* %37)
  store i32 %38, i32* %11, align 4
  br label %44

39:                                               ; preds = %28
  %40 = load i8**, i8*** %8, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @DMERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @process_flush_mesg(i32, i8**, %struct.dm_writecache*) #1

declare dso_local i32 @process_flush_on_suspend_mesg(i32, i8**, %struct.dm_writecache*) #1

declare dso_local i32 @DMERR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
