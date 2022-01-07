; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-macii.c_macii_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-macii.c_macii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i64*, i32, %struct.adb_request*, i64, i64 }

@ADB_PACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@current_req = common dso_local global %struct.adb_request* null, align 8
@last_req = common dso_local global %struct.adb_request* null, align 8
@macii_state = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adb_request*)* @macii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macii_write(%struct.adb_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_request*, align 8
  %4 = alloca i64, align 8
  store %struct.adb_request* %0, %struct.adb_request** %3, align 8
  %5 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %6 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %11 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ADB_PACKET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %19 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 15
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %9, %1
  %23 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %24 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %17
  %28 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %29 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %28, i32 0, i32 3
  store %struct.adb_request* null, %struct.adb_request** %29, align 8
  %30 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %31 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %33 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %35 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @local_irq_save(i64 %36)
  %38 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %39 = icmp ne %struct.adb_request* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %42 = load %struct.adb_request*, %struct.adb_request** @last_req, align 8
  %43 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %42, i32 0, i32 3
  store %struct.adb_request* %41, %struct.adb_request** %43, align 8
  %44 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %44, %struct.adb_request** @last_req, align 8
  br label %54

45:                                               ; preds = %27
  %46 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %46, %struct.adb_request** @current_req, align 8
  %47 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %47, %struct.adb_request** @last_req, align 8
  %48 = load i64, i64* @macii_state, align 8
  %49 = load i64, i64* @idle, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (...) @macii_start()
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @local_irq_restore(i64 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %22
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @macii_start(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
