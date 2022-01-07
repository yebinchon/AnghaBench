; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_arizona-haptics.c_arizona_haptics_play.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_arizona-haptics.c_arizona_haptics_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.arizona_haptics = type { i32, i32, %struct.arizona* }
%struct.arizona = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"No DAPM context\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @arizona_haptics_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_haptics_play(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca %struct.arizona_haptics*, align 8
  %9 = alloca %struct.arizona*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = call %struct.arizona_haptics* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.arizona_haptics* %11, %struct.arizona_haptics** %8, align 8
  %12 = load %struct.arizona_haptics*, %struct.arizona_haptics** %8, align 8
  %13 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %12, i32 0, i32 2
  %14 = load %struct.arizona*, %struct.arizona** %13, align 8
  store %struct.arizona* %14, %struct.arizona** %9, align 8
  %15 = load %struct.arizona*, %struct.arizona** %9, align 8
  %16 = getelementptr inbounds %struct.arizona, %struct.arizona* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.arizona*, %struct.arizona** %9, align 8
  %21 = getelementptr inbounds %struct.arizona, %struct.arizona* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %75

26:                                               ; preds = %3
  %27 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %28 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %26
  %34 = load %struct.arizona*, %struct.arizona** %9, align 8
  %35 = getelementptr inbounds %struct.arizona, %struct.arizona* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %41 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 9
  %46 = load %struct.arizona_haptics*, %struct.arizona_haptics** %8, align 8
  %47 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %49 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 32768
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load %struct.arizona_haptics*, %struct.arizona_haptics** %8, align 8
  %54 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 127
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %52, %39
  br label %67

58:                                               ; preds = %33
  %59 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %60 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 8
  %65 = load %struct.arizona_haptics*, %struct.arizona_haptics** %8, align 8
  %66 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %58, %57
  br label %71

68:                                               ; preds = %26
  %69 = load %struct.arizona_haptics*, %struct.arizona_haptics** %8, align 8
  %70 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %67
  %72 = load %struct.arizona_haptics*, %struct.arizona_haptics** %8, align 8
  %73 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %72, i32 0, i32 1
  %74 = call i32 @schedule_work(i32* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.arizona_haptics* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
