; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsa1212_data = type { i32, i32 }

@JSA1212_CONF_REG = common dso_local global i32 0, align 4
@JSA1212_CONF_PXS_SLP_50MS = common dso_local global i32 0, align 4
@JSA1212_CONF_IRDR_200MA = common dso_local global i32 0, align 4
@JSA1212_INT_REG = common dso_local global i32 0, align 4
@JSA1212_INT_ALS_PRST_4CONV = common dso_local global i32 0, align 4
@JSA1212_ALS_RNG_0_2048 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jsa1212_data*)* @jsa1212_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsa1212_chip_init(%struct.jsa1212_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jsa1212_data*, align 8
  %4 = alloca i32, align 4
  store %struct.jsa1212_data* %0, %struct.jsa1212_data** %3, align 8
  %5 = load %struct.jsa1212_data*, %struct.jsa1212_data** %3, align 8
  %6 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @JSA1212_CONF_REG, align 4
  %9 = load i32, i32* @JSA1212_CONF_PXS_SLP_50MS, align 4
  %10 = load i32, i32* @JSA1212_CONF_IRDR_200MA, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @regmap_write(i32 %7, i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.jsa1212_data*, %struct.jsa1212_data** %3, align 8
  %19 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @JSA1212_INT_REG, align 4
  %22 = load i32, i32* @JSA1212_INT_ALS_PRST_4CONV, align 4
  %23 = call i32 @regmap_write(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @JSA1212_ALS_RNG_0_2048, align 4
  %30 = load %struct.jsa1212_data*, %struct.jsa1212_data** %3, align 8
  %31 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %26, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
