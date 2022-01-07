; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ina3221_data = type { %struct.ina3221_input* }
%struct.ina3221_input = type { i32 }

@INA3221_CHANNEL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @ina3221_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina3221_is_visible(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ina3221_data*, align 8
  %11 = alloca %struct.ina3221_input*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ina3221_data*
  store %struct.ina3221_data* %13, %struct.ina3221_data** %10, align 8
  store %struct.ina3221_input* null, %struct.ina3221_input** %11, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %58 [
    i32 140, label %15
    i32 131, label %19
    i32 137, label %53
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %18 [
    i32 139, label %17
    i32 138, label %17
  ]

17:                                               ; preds = %15, %15
  store i32 420, i32* %5, align 4
  br label %59

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %59

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %59

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %52 [
    i32 128, label %25
    i32 129, label %50
    i32 130, label %51
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* @INA3221_CHANNEL3, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %32 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %31, i32 0, i32 0
  %33 = load %struct.ina3221_input*, %struct.ina3221_input** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ina3221_input, %struct.ina3221_input* %33, i64 %36
  store %struct.ina3221_input* %37, %struct.ina3221_input** %11, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.ina3221_input*, %struct.ina3221_input** %11, align 8
  %40 = icmp ne %struct.ina3221_input* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.ina3221_input*, %struct.ina3221_input** %11, align 8
  %43 = getelementptr inbounds %struct.ina3221_input, %struct.ina3221_input* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 292, i32 0
  store i32 %49, i32* %5, align 4
  br label %59

50:                                               ; preds = %23
  store i32 292, i32* %5, align 4
  br label %59

51:                                               ; preds = %23
  store i32 420, i32* %5, align 4
  br label %59

52:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %59

53:                                               ; preds = %4
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %57 [
    i32 134, label %55
    i32 135, label %55
    i32 132, label %55
    i32 136, label %56
    i32 133, label %56
  ]

55:                                               ; preds = %53, %53, %53
  store i32 292, i32* %5, align 4
  br label %59

56:                                               ; preds = %53, %53
  store i32 420, i32* %5, align 4
  br label %59

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %59

58:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %57, %56, %55, %52, %51, %50, %46, %22, %18, %17
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
