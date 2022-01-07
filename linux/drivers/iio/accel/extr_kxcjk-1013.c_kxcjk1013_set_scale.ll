; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_set_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.kxcjk1013_data = type { i32 }

@KXCJK1013_scale_table = common dso_local global %struct.TYPE_3__* null, align 8
@STANDBY = common dso_local global i32 0, align 4
@OPERATION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*, i32)* @kxcjk1013_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_set_scale(%struct.kxcjk1013_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kxcjk1013_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kxcjk1013_data* %0, %struct.kxcjk1013_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %61, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KXCJK1013_scale_table, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KXCJK1013_scale_table, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %14
  %24 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %25 = call i32 @kxcjk1013_get_mode(%struct.kxcjk1013_data* %24, i32* %8)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %67

30:                                               ; preds = %23
  %31 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %32 = load i32, i32* @STANDBY, align 4
  %33 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %67

38:                                               ; preds = %30
  %39 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @kxcjk1013_set_range(%struct.kxcjk1013_data* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %67

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @OPERATION, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %52 = load i32, i32* @OPERATION, align 4
  %53 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %67

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %46
  store i32 0, i32* %3, align 4
  br label %67

60:                                               ; preds = %14
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %9

64:                                               ; preds = %9
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %59, %56, %44, %36, %28
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @kxcjk1013_get_mode(%struct.kxcjk1013_data*, i32*) #1

declare dso_local i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data*, i32) #1

declare dso_local i32 @kxcjk1013_set_range(%struct.kxcjk1013_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
