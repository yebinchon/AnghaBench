; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_als_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_als_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsa1212_data = type { i32, i32 }

@JSA1212_CONF_REG = common dso_local global i32 0, align 4
@JSA1212_CONF_ALS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jsa1212_data*, i32)* @jsa1212_als_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsa1212_als_enable(%struct.jsa1212_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jsa1212_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jsa1212_data* %0, %struct.jsa1212_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.jsa1212_data*, %struct.jsa1212_data** %4, align 8
  %8 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @JSA1212_CONF_REG, align 4
  %11 = load i32, i32* @JSA1212_CONF_ALS_MASK, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %struct.jsa1212_data*, %struct.jsa1212_data** %4, align 8
  %25 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
