; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i64, i64, i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfreq_update_status(%struct.devfreq* %0, i64 %1) #0 {
  %3 = alloca %struct.devfreq*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.devfreq* %0, %struct.devfreq** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %11 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %17 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %18 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @devfreq_get_freq_level(%struct.devfreq* %16, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %7, align 4
  br label %74

25:                                               ; preds = %15
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %28 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %32 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %30
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @devfreq_get_freq_level(%struct.devfreq* %41, i64 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %25
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %7, align 4
  br label %74

48:                                               ; preds = %25
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %54 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %58 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %56, %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %55, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %70 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %52, %48
  br label %74

74:                                               ; preds = %73, %46, %23, %14
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %77 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @devfreq_get_freq_level(%struct.devfreq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
