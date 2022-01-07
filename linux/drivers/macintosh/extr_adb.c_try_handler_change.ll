; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb.c_try_handler_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb.c_try_handler_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.adb_request = type { i32, i32* }

@adb_handler = common dso_local global %struct.TYPE_2__* null, align 8
@ADBREQ_SYNC = common dso_local global i32 0, align 4
@ADBREQ_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @try_handler_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_handler_change(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adb_request, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load i32, i32* @ADBREQ_SYNC, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ADB_WRITEREG(i32 %18, i32 3)
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, 32
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (%struct.adb_request*, i32*, i32, i32, i32, ...) @adb_request(%struct.adb_request* %6, i32* null, i32 %17, i32 3, i32 %19, i32 %21, i32 %22)
  %24 = load i32, i32* @ADBREQ_SYNC, align 4
  %25 = load i32, i32* @ADBREQ_REPLY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ADB_READREG(i32 %27, i32 3)
  %29 = call i32 (%struct.adb_request*, i32*, i32, i32, i32, ...) @adb_request(%struct.adb_request* %6, i32* null, i32 %26, i32 1, i32 %28)
  %30 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %52

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %6, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %52

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %6, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %41, %33, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @adb_request(%struct.adb_request*, i32*, i32, i32, i32, ...) #1

declare dso_local i32 @ADB_WRITEREG(i32, i32) #1

declare dso_local i32 @ADB_READREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
