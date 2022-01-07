; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i64*, i32)*, i32 (i32, i64*)* }
%struct.devfreq_freqs = type { i64, i64 }

@DEVFREQ_PRECHANGE = common dso_local global i32 0, align 4
@DEVFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Couldn't update frequency transition information.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq*, i64, i32)* @devfreq_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfreq_set_target(%struct.devfreq* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devfreq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.devfreq_freqs, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %12 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32 (i32, i64*)*, i32 (i32, i64*)** %14, align 8
  %16 = icmp ne i32 (i32, i64*)* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %19 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (i32, i64*)*, i32 (i32, i64*)** %21, align 8
  %23 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %24 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(i32 %26, i64* %9)
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %30 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %28, %17
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.devfreq_freqs, %struct.devfreq_freqs* %8, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.devfreq_freqs, %struct.devfreq_freqs* %8, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %38 = load i32, i32* @DEVFREQ_PRECHANGE, align 4
  %39 = call i32 @devfreq_notify_transition(%struct.devfreq* %37, %struct.devfreq_freqs* %8, i32 %38)
  %40 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %41 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %43, align 8
  %45 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %46 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 %44(i32 %48, i64* %6, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %32
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.devfreq_freqs, %struct.devfreq_freqs* %8, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %57 = load i32, i32* @DEVFREQ_POSTCHANGE, align 4
  %58 = call i32 @devfreq_notify_transition(%struct.devfreq* %56, %struct.devfreq_freqs* %8, i32 %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %88

60:                                               ; preds = %32
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.devfreq_freqs, %struct.devfreq_freqs* %8, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %64 = load i32, i32* @DEVFREQ_POSTCHANGE, align 4
  %65 = call i32 @devfreq_notify_transition(%struct.devfreq* %63, %struct.devfreq_freqs* %8, i32 %64)
  %66 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @devfreq_update_status(%struct.devfreq* %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %72 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %71, i32 0, i32 3
  %73 = call i32 @dev_err(%struct.TYPE_4__* %72, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %60
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %77 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %79 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %85 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %53
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @devfreq_notify_transition(%struct.devfreq*, %struct.devfreq_freqs*, i32) #1

declare dso_local i64 @devfreq_update_status(%struct.devfreq*, i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
