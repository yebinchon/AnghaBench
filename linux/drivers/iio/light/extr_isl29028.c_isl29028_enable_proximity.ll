; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29028.c_isl29028_enable_proximity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29028.c_isl29028_enable_proximity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.isl29028_chip = type { i32, i32, i32 }

@ISL29028_REG_CONFIGURE = common dso_local global i32 0, align 4
@ISL29028_CONF_PROX_EN_MASK = common dso_local global i32 0, align 4
@ISL29028_CONF_PROX_EN = common dso_local global i32 0, align 4
@isl29028_prox_data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29028_chip*)* @isl29028_enable_proximity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29028_enable_proximity(%struct.isl29028_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isl29028_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isl29028_chip* %0, %struct.isl29028_chip** %3, align 8
  %6 = load %struct.isl29028_chip*, %struct.isl29028_chip** %3, align 8
  %7 = load %struct.isl29028_chip*, %struct.isl29028_chip** %3, align 8
  %8 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.isl29028_chip*, %struct.isl29028_chip** %3, align 8
  %11 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @isl29028_set_proxim_sampling(%struct.isl29028_chip* %6, i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.isl29028_chip*, %struct.isl29028_chip** %3, align 8
  %20 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ISL29028_REG_CONFIGURE, align 4
  %23 = load i32, i32* @ISL29028_CONF_PROX_EN_MASK, align 4
  %24 = load i32, i32* @ISL29028_CONF_PROX_EN, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %18
  %31 = load %struct.isl29028_chip*, %struct.isl29028_chip** %3, align 8
  %32 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.isl29028_chip*, %struct.isl29028_chip** %3, align 8
  %35 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @isl29028_find_prox_sleep_index(i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %50

42:                                               ; preds = %30
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @isl29028_prox_data, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @msleep(i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %40, %28, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @isl29028_set_proxim_sampling(%struct.isl29028_chip*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @isl29028_find_prox_sleep_index(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
