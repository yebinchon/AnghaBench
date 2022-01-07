; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_set_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_set_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.bmc150_accel_data = type { i32, i32 }

@bmc150_accel_samp_freq_table = common dso_local global %struct.TYPE_3__* null, align 8
@BMC150_ACCEL_REG_PMU_BW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_accel_data*, i32, i32)* @bmc150_accel_set_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_set_bw(%struct.bmc150_accel_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmc150_accel_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bmc150_accel_data* %0, %struct.bmc150_accel_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %59, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_samp_freq_table, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_samp_freq_table, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %15
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_samp_freq_table, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %24
  %34 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %35 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BMC150_ACCEL_REG_PMU_BW, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_samp_freq_table, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regmap_write(i32 %36, i32 %37, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %65

49:                                               ; preds = %33
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_samp_freq_table, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %57 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %65

58:                                               ; preds = %24, %15
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %10

62:                                               ; preds = %10
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %49, %47
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
