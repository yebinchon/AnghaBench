; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_read_pxs_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_read_pxs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsa1212_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@JSA1212_CONF_PXS_ENABLE = common dso_local global i32 0, align 4
@JSA1212_PXS_DELAY_MS = common dso_local global i32 0, align 4
@JSA1212_PXS_DATA_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pxs data read err\0A\00", align 1
@JSA1212_PXS_DATA_MASK = common dso_local global i32 0, align 4
@JSA1212_CONF_PXS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jsa1212_data*, i32*)* @jsa1212_read_pxs_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsa1212_read_pxs_data(%struct.jsa1212_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jsa1212_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jsa1212_data* %0, %struct.jsa1212_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.jsa1212_data*, %struct.jsa1212_data** %4, align 8
  %9 = load i32, i32* @JSA1212_CONF_PXS_ENABLE, align 4
  %10 = call i32 @jsa1212_pxs_enable(%struct.jsa1212_data* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load i32, i32* @JSA1212_PXS_DELAY_MS, align 4
  %17 = call i32 @msleep(i32 %16)
  %18 = load %struct.jsa1212_data*, %struct.jsa1212_data** %4, align 8
  %19 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @JSA1212_PXS_DATA_REG, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %7)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.jsa1212_data*, %struct.jsa1212_data** %4, align 8
  %27 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %36

31:                                               ; preds = %15
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @JSA1212_PXS_DATA_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.jsa1212_data*, %struct.jsa1212_data** %4, align 8
  %38 = load i32, i32* @JSA1212_CONF_PXS_DISABLE, align 4
  %39 = call i32 @jsa1212_pxs_enable(%struct.jsa1212_data* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @jsa1212_pxs_enable(%struct.jsa1212_data*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
