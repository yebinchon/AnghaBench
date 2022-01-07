; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_resume_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_resume_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.devfreq*, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@DEVFREQ_GOV_RESUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfreq_resume_device(%struct.devfreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq*, align 8
  %4 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %3, align 8
  %5 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %6 = icmp ne %struct.devfreq* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %12 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %11, i32 0, i32 2
  %13 = call i32 @atomic_dec_return(i32* %12)
  %14 = icmp sge i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %52

16:                                               ; preds = %10
  %17 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %18 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %23 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %24 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @devfreq_set_target(%struct.devfreq* %22, i64 %25, i32 0)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %34 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %39 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.devfreq*, i32, i32*)*, i32 (%struct.devfreq*, i32, i32*)** %41, align 8
  %43 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %44 = load i32, i32* @DEVFREQ_GOV_RESUME, align 4
  %45 = call i32 %42(%struct.devfreq* %43, i32 %44, i32* null)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %32
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %29, %15, %7
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @devfreq_set_target(%struct.devfreq*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
