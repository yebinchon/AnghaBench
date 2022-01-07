; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_min_freq_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_min_freq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.devfreq = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @min_freq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @min_freq_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.devfreq*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.devfreq* @to_devfreq(%struct.device* %14)
  store %struct.devfreq* %15, %struct.devfreq** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %88

23:                                               ; preds = %4
  %24 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %25 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %32 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %12, align 4
  br label %83

38:                                               ; preds = %29
  br label %75

39:                                               ; preds = %23
  %40 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %41 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  store i64* %44, i64** %13, align 8
  %45 = load i64*, i64** %13, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %50 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %48, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %47, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load i64*, i64** %13, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  br label %74

63:                                               ; preds = %39
  %64 = load i64*, i64** %13, align 8
  %65 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %66 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %64, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %63, %59
  br label %75

75:                                               ; preds = %74, %38
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %78 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %80 = call i32 @update_devfreq(%struct.devfreq* %79)
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %75, %35
  %84 = load %struct.devfreq*, %struct.devfreq** %10, align 8
  %85 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %20
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.devfreq* @to_devfreq(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @update_devfreq(%struct.devfreq*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
