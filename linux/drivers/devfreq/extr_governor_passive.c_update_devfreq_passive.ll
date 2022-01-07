; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_passive.c_update_devfreq_passive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_passive.c_update_devfreq_passive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i64*, i32)*, i64 }
%struct.TYPE_5__ = type { i32 (%struct.devfreq*, i64*)* }

@EINVAL = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Couldn't update frequency transition information.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq*, i64)* @update_devfreq_passive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_devfreq_passive(%struct.devfreq* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfreq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %8 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %7, i32 0, i32 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %16 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %15, i32 0, i32 1
  %17 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %18 = call i32 @mutex_lock_nested(i32* %16, i32 %17)
  %19 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %20 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %19, i32 0, i32 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.devfreq*, i64*)*, i32 (%struct.devfreq*, i64*)** %22, align 8
  %24 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %25 = call i32 %23(%struct.devfreq* %24, i64* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %63

29:                                               ; preds = %14
  %30 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %31 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %33, align 8
  %35 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %36 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %34(i32 %38, i64* %5, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %63

43:                                               ; preds = %29
  %44 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %45 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @devfreq_update_status(%struct.devfreq* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %57 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %56, i32 0, i32 2
  %58 = call i32 @dev_err(%struct.TYPE_6__* %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %50, %43
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %62 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %42, %28
  %64 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %65 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %11
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @devfreq_update_status(%struct.devfreq*, i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
