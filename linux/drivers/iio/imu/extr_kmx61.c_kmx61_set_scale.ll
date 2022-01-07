; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_set_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmx61_data = type { i32 }

@kmx61_uscale_table = common dso_local global i64* null, align 8
@KMX61_ACC = common dso_local global i32 0, align 4
@KMX61_MAG = common dso_local global i32 0, align 4
@KMX61_ALL_STBY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmx61_data*, i64)* @kmx61_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_set_scale(%struct.kmx61_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmx61_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kmx61_data* %0, %struct.kmx61_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %59, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i64*, i64** @kmx61_uscale_table, align 8
  %12 = call i32 @ARRAY_SIZE(i64* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %9
  %15 = load i64*, i64** @kmx61_uscale_table, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %14
  %23 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %24 = load i32, i32* @KMX61_ACC, align 4
  %25 = load i32, i32* @KMX61_MAG, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @kmx61_get_mode(%struct.kmx61_data* %23, i32* %8, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %22
  %33 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %34 = load i32, i32* @KMX61_ALL_STBY, align 4
  %35 = load i32, i32* @KMX61_ACC, align 4
  %36 = load i32, i32* @KMX61_MAG, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @kmx61_set_mode(%struct.kmx61_data* %33, i32 %34, i32 %37, i32 1)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %32
  %44 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @kmx61_set_range(%struct.kmx61_data* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %65

51:                                               ; preds = %43
  %52 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @KMX61_ACC, align 4
  %55 = load i32, i32* @KMX61_MAG, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @kmx61_set_mode(%struct.kmx61_data* %52, i32 %53, i32 %56, i32 1)
  store i32 %57, i32* %3, align 4
  br label %65

58:                                               ; preds = %14
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %9

62:                                               ; preds = %9
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %51, %49, %41, %30
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @kmx61_get_mode(%struct.kmx61_data*, i32*, i32) #1

declare dso_local i32 @kmx61_set_mode(%struct.kmx61_data*, i32, i32, i32) #1

declare dso_local i32 @kmx61_set_range(%struct.kmx61_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
