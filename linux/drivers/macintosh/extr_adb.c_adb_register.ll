; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb.c_adb_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adb.c_adb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, void (i8*, i32, i32)* }
%struct.adb_ids = type { i32, i32* }

@adb_handler_mutex = common dso_local global i32 0, align 4
@adb_handler = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Two handlers for ADB device %d\0A\00", align 1
@adb_handler_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adb_register(i32 %0, i32 %1, %struct.adb_ids* %2, void (i8*, i32, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adb_ids*, align 8
  %8 = alloca void (i8*, i32, i32)*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.adb_ids* %2, %struct.adb_ids** %7, align 8
  store void (i8*, i32, i32)* %3, void (i8*, i32, i32)** %8, align 8
  %10 = call i32 @mutex_lock(i32* @adb_handler_mutex)
  %11 = load %struct.adb_ids*, %struct.adb_ids** %7, align 8
  %12 = getelementptr inbounds %struct.adb_ids, %struct.adb_ids* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  store i32 1, i32* %9, align 4
  br label %13

13:                                               ; preds = %73, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %76

16:                                               ; preds = %13
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %29, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @try_handler_change(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %37, %28, %25
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %47, align 8
  %49 = icmp ne void (i8*, i32, i32)* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %73

53:                                               ; preds = %42
  %54 = call i32 @write_lock_irq(i32* @adb_handler_lock)
  %55 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %8, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store void (i8*, i32, i32)* %55, void (i8*, i32, i32)** %60, align 8
  %61 = call i32 @write_unlock_irq(i32* @adb_handler_lock)
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.adb_ids*, %struct.adb_ids** %7, align 8
  %64 = getelementptr inbounds %struct.adb_ids, %struct.adb_ids* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.adb_ids*, %struct.adb_ids** %7, align 8
  %67 = getelementptr inbounds %struct.adb_ids, %struct.adb_ids* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32 %62, i32* %71, align 4
  br label %72

72:                                               ; preds = %53, %37, %16
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %13

76:                                               ; preds = %13
  %77 = call i32 @mutex_unlock(i32* @adb_handler_mutex)
  %78 = load %struct.adb_ids*, %struct.adb_ids** %7, align 8
  %79 = getelementptr inbounds %struct.adb_ids, %struct.adb_ids* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @try_handler_change(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
