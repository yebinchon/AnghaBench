; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_update_avg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_update_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hts221_avg = type { i64*, i32, i32 }
%struct.hts221_hw = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@hts221_avg_list = common dso_local global %struct.hts221_avg* null, align 8
@HTS221_AVG_DEPTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hts221_hw*, i32, i64)* @hts221_update_avg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_update_avg(%struct.hts221_hw* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hts221_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.hts221_avg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hts221_hw* %0, %struct.hts221_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.hts221_avg*, %struct.hts221_avg** @hts221_avg_list, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %12, i64 %14
  store %struct.hts221_avg* %15, %struct.hts221_avg** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %32, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @HTS221_AVG_DEPTH, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.hts221_avg*, %struct.hts221_avg** %8, align 8
  %22 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %16

35:                                               ; preds = %30, %16
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @HTS221_AVG_DEPTH, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %77

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.hts221_avg*, %struct.hts221_avg** %8, align 8
  %45 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @__ffs(i32 %46)
  %48 = shl i32 %43, %47
  %49 = load %struct.hts221_avg*, %struct.hts221_avg** %8, align 8
  %50 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %48, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.hts221_hw*, %struct.hts221_hw** %5, align 8
  %54 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hts221_avg*, %struct.hts221_avg** %8, align 8
  %57 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hts221_avg*, %struct.hts221_avg** %8, align 8
  %60 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @regmap_update_bits(i32 %55, i32 %58, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %42
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %77

68:                                               ; preds = %42
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.hts221_hw*, %struct.hts221_hw** %5, align 8
  %71 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %68, %66, %39
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
