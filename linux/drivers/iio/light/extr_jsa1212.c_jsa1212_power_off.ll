; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsa1212_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@JSA1212_CONF_REG = common dso_local global i32 0, align 4
@JSA1212_CONF_ALS_MASK = common dso_local global i32 0, align 4
@JSA1212_CONF_PXS_MASK = common dso_local global i32 0, align 4
@JSA1212_CONF_ALS_DISABLE = common dso_local global i32 0, align 4
@JSA1212_CONF_PXS_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"power off cmd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jsa1212_data*)* @jsa1212_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsa1212_power_off(%struct.jsa1212_data* %0) #0 {
  %2 = alloca %struct.jsa1212_data*, align 8
  %3 = alloca i32, align 4
  store %struct.jsa1212_data* %0, %struct.jsa1212_data** %2, align 8
  %4 = load %struct.jsa1212_data*, %struct.jsa1212_data** %2, align 8
  %5 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.jsa1212_data*, %struct.jsa1212_data** %2, align 8
  %8 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @JSA1212_CONF_REG, align 4
  %11 = load i32, i32* @JSA1212_CONF_ALS_MASK, align 4
  %12 = load i32, i32* @JSA1212_CONF_PXS_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @JSA1212_CONF_ALS_DISABLE, align 4
  %15 = load i32, i32* @JSA1212_CONF_PXS_DISABLE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %13, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.jsa1212_data*, %struct.jsa1212_data** %2, align 8
  %22 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.jsa1212_data*, %struct.jsa1212_data** %2, align 8
  %28 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
