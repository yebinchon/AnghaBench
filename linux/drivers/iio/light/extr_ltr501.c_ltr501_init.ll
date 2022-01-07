; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltr501_data = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LTR501_ALS_CONTR = common dso_local global i32 0, align 4
@LTR501_PS_CONTR = common dso_local global i32 0, align 4
@LTR501_CONTR_ACTIVE = common dso_local global i32 0, align 4
@IIO_INTENSITY = common dso_local global i32 0, align 4
@IIO_PROXIMITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltr501_data*)* @ltr501_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_init(%struct.ltr501_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ltr501_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ltr501_data* %0, %struct.ltr501_data** %3, align 8
  %6 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %7 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @LTR501_ALS_CONTR, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %18 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %16, %21
  %23 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %24 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %26 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LTR501_PS_CONTR, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %5)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @LTR501_CONTR_ACTIVE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %39 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %41 = load i32, i32* @IIO_INTENSITY, align 4
  %42 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %43 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %42, i32 0, i32 3
  %44 = call i32 @ltr501_read_intr_prst(%struct.ltr501_data* %40, i32 %41, i32* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %68

49:                                               ; preds = %34
  %50 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %51 = load i32, i32* @IIO_PROXIMITY, align 4
  %52 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %53 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %52, i32 0, i32 2
  %54 = call i32 @ltr501_read_intr_prst(%struct.ltr501_data* %50, i32 %51, i32* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %68

59:                                               ; preds = %49
  %60 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %61 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %62 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ltr501_data*, %struct.ltr501_data** %3, align 8
  %65 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ltr501_write_contr(%struct.ltr501_data* %60, i32 %63, i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %57, %47, %32, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ltr501_read_intr_prst(%struct.ltr501_data*, i32, i32*) #1

declare dso_local i32 @ltr501_write_contr(%struct.ltr501_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
