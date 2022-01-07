; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_queue_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i32, i64*, %struct.adb_request*, i64 }

@pmu_state = common dso_local global i64 0, align 8
@uninitialized = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@pmu_data_len = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@pmu_lock = common dso_local global i32 0, align 4
@current_req = common dso_local global %struct.adb_request* null, align 8
@last_req = common dso_local global %struct.adb_request* null, align 8
@idle = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmu_queue_request(%struct.adb_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.adb_request* %0, %struct.adb_request** %3, align 8
  %6 = load i64, i64* @pmu_state, align 8
  %7 = load i64, i64* @uninitialized, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %11 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %75

14:                                               ; preds = %1
  %15 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %16 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %21 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  store i32 0, i32* %2, align 4
  br label %75

22:                                               ; preds = %14
  %23 = load i32**, i32*** @pmu_data_len, align 8
  %24 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %25 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32*, i32** %23, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %22
  %36 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %37 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %44 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %35, %22
  %48 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %49 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %48, i32 0, i32 3
  store %struct.adb_request* null, %struct.adb_request** %49, align 8
  %50 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %51 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %53 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_lock_irqsave(i32* @pmu_lock, i64 %54)
  %56 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %57 = icmp ne %struct.adb_request* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %60 = load %struct.adb_request*, %struct.adb_request** @last_req, align 8
  %61 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %60, i32 0, i32 3
  store %struct.adb_request* %59, %struct.adb_request** %61, align 8
  %62 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %62, %struct.adb_request** @last_req, align 8
  br label %72

63:                                               ; preds = %47
  %64 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %64, %struct.adb_request** @current_req, align 8
  %65 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  store %struct.adb_request* %65, %struct.adb_request** @last_req, align 8
  %66 = load i64, i64* @pmu_state, align 8
  %67 = load i64, i64* @idle, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (...) @pmu_start()
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71, %58
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @pmu_lock, i64 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %42, %19, %9
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pmu_start(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
