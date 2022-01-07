; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_axp20x-pek.c_axp20x_show_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_axp20x-pek.c_axp20x_show_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.axp20x_time = type { i32, i32 }
%struct.axp20x_pek = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AXP20X_PEK_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.axp20x_time*, i32, i8*)* @axp20x_show_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_show_attr(%struct.device* %0, %struct.axp20x_time* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.axp20x_time*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.axp20x_pek*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.axp20x_time* %1, %struct.axp20x_time** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.axp20x_pek* @dev_get_drvdata(%struct.device* %14)
  store %struct.axp20x_pek* %15, %struct.axp20x_pek** %10, align 8
  %16 = load %struct.axp20x_pek*, %struct.axp20x_pek** %10, align 8
  %17 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AXP20X_PEK_KEY, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ffs(i32 %31)
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %11, align 4
  %35 = lshr i32 %34, %33
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %56, %27
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.axp20x_time*, %struct.axp20x_time** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.axp20x_time, %struct.axp20x_time* %41, i64 %43
  %45 = getelementptr inbounds %struct.axp20x_time, %struct.axp20x_time* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %40, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.axp20x_time*, %struct.axp20x_time** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.axp20x_time, %struct.axp20x_time* %49, i64 %51
  %53 = getelementptr inbounds %struct.axp20x_time, %struct.axp20x_time* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %48, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %36

59:                                               ; preds = %36
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %25
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.axp20x_pek* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
