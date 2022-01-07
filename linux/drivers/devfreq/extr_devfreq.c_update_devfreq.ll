; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_update_devfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_update_devfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.devfreq*, i64*)* }

@.str = private unnamed_addr constant [45 x i8] c"devfreq->lock must be locked by the caller.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DEVFREQ_FLAG_LEAST_UPPER_BOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_devfreq(%struct.devfreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %10 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %9, i32 0, i32 5
  %11 = call i32 @mutex_is_locked(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %19 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %17
  %26 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %27 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.devfreq*, i64*)*, i32 (%struct.devfreq*, i64*)** %29, align 8
  %31 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %32 = call i32 %30(%struct.devfreq* %31, i64* %4)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %75

37:                                               ; preds = %25
  %38 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %39 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %42 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @min(i32 %40, i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %46 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %49 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @max(i32 %47, i32 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %37
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %4, align 8
  %57 = load i32, i32* @DEVFREQ_FLAG_LEAST_UPPER_BOUND, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %37
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %4, align 8
  %67 = load i32, i32* @DEVFREQ_FLAG_LEAST_UPPER_BOUND, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @devfreq_set_target(%struct.devfreq* %71, i64 %72, i32 %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %35, %22, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @devfreq_set_target(%struct.devfreq*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
