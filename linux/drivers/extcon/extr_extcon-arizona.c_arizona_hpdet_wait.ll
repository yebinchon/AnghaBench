; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_hpdet_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_hpdet_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { i32, %struct.arizona* }
%struct.arizona = type { i32, i32 }

@ARIZONA_HPDET_WAIT_COUNT = common dso_local global i32 0, align 4
@ARIZONA_HEADPHONE_DETECT_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read HPDET state: %d\0A\00", align 1
@ARIZONA_HP_DONE = common dso_local global i32 0, align 4
@ARIZONA_HP_DONE_B = common dso_local global i32 0, align 4
@ARIZONA_HPDET_WAIT_DELAY_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"HPDET did not appear to complete\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_extcon_info*)* @arizona_hpdet_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_hpdet_wait(%struct.arizona_extcon_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arizona_extcon_info*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arizona_extcon_info* %0, %struct.arizona_extcon_info** %3, align 8
  %8 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %9 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %8, i32 0, i32 1
  %10 = load %struct.arizona*, %struct.arizona** %9, align 8
  store %struct.arizona* %10, %struct.arizona** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %51, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ARIZONA_HPDET_WAIT_COUNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load %struct.arizona*, %struct.arizona** %4, align 8
  %17 = getelementptr inbounds %struct.arizona, %struct.arizona* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_2, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %5)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.arizona*, %struct.arizona** %4, align 8
  %25 = getelementptr inbounds %struct.arizona, %struct.arizona* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %61

30:                                               ; preds = %15
  %31 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %32 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %41 [
    i32 0, label %34
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ARIZONA_HP_DONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %61

40:                                               ; preds = %34
  br label %48

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ARIZONA_HP_DONE_B, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %61

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* @ARIZONA_HPDET_WAIT_DELAY_MS, align 4
  %50 = call i32 @msleep(i32 %49)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %11

54:                                               ; preds = %11
  %55 = load %struct.arizona*, %struct.arizona** %4, align 8
  %56 = getelementptr inbounds %struct.arizona, %struct.arizona* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %54, %46, %39, %23
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
