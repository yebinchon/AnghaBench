; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29028.c_isl29028_set_als_ir_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29028.c_isl29028_set_als_ir_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29028_chip = type { i32, i32, i32 }

@ISL29028_REG_CONFIGURE = common dso_local global i32 0, align 4
@ISL29028_CONF_ALS_IR_MODE_MASK = common dso_local global i32 0, align 4
@ISL29028_CONF_ALS_IR_MODE_ALS = common dso_local global i32 0, align 4
@ISL29028_CONF_ALS_RANGE_MASK = common dso_local global i32 0, align 4
@ISL29028_CONF_ALS_RANGE_HIGH_LUX = common dso_local global i32 0, align 4
@ISL29028_CONF_ALS_IR_MODE_IR = common dso_local global i32 0, align 4
@ISL29028_CONF_ALS_EN_MASK = common dso_local global i32 0, align 4
@ISL29028_CONF_ALS_DIS = common dso_local global i32 0, align 4
@ISL29028_CONF_ALS_EN = common dso_local global i32 0, align 4
@ISL29028_CONV_TIME_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29028_chip*, i32)* @isl29028_set_als_ir_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29028_set_als_ir_mode(%struct.isl29028_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isl29028_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isl29028_chip* %0, %struct.isl29028_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.isl29028_chip*, %struct.isl29028_chip** %4, align 8
  %8 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

13:                                               ; preds = %2
  %14 = load %struct.isl29028_chip*, %struct.isl29028_chip** %4, align 8
  %15 = load %struct.isl29028_chip*, %struct.isl29028_chip** %4, align 8
  %16 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @isl29028_set_als_scale(%struct.isl29028_chip* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %84

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %61 [
    i32 130, label %25
    i32 129, label %45
    i32 128, label %53
  ]

25:                                               ; preds = %23
  %26 = load %struct.isl29028_chip*, %struct.isl29028_chip** %4, align 8
  %27 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ISL29028_REG_CONFIGURE, align 4
  %30 = load i32, i32* @ISL29028_CONF_ALS_IR_MODE_MASK, align 4
  %31 = load i32, i32* @ISL29028_CONF_ALS_IR_MODE_ALS, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %25
  %38 = load %struct.isl29028_chip*, %struct.isl29028_chip** %4, align 8
  %39 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ISL29028_REG_CONFIGURE, align 4
  %42 = load i32, i32* @ISL29028_CONF_ALS_RANGE_MASK, align 4
  %43 = load i32, i32* @ISL29028_CONF_ALS_RANGE_HIGH_LUX, align 4
  %44 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %61

45:                                               ; preds = %23
  %46 = load %struct.isl29028_chip*, %struct.isl29028_chip** %4, align 8
  %47 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ISL29028_REG_CONFIGURE, align 4
  %50 = load i32, i32* @ISL29028_CONF_ALS_IR_MODE_MASK, align 4
  %51 = load i32, i32* @ISL29028_CONF_ALS_IR_MODE_IR, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %61

53:                                               ; preds = %23
  %54 = load %struct.isl29028_chip*, %struct.isl29028_chip** %4, align 8
  %55 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ISL29028_REG_CONFIGURE, align 4
  %58 = load i32, i32* @ISL29028_CONF_ALS_EN_MASK, align 4
  %59 = load i32, i32* @ISL29028_CONF_ALS_DIS, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %84

61:                                               ; preds = %23, %45, %37
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %84

66:                                               ; preds = %61
  %67 = load %struct.isl29028_chip*, %struct.isl29028_chip** %4, align 8
  %68 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ISL29028_REG_CONFIGURE, align 4
  %71 = load i32, i32* @ISL29028_CONF_ALS_EN_MASK, align 4
  %72 = load i32, i32* @ISL29028_CONF_ALS_EN, align 4
  %73 = call i32 @regmap_update_bits(i32 %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %84

78:                                               ; preds = %66
  %79 = load i32, i32* @ISL29028_CONV_TIME_MS, align 4
  %80 = call i32 @msleep(i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.isl29028_chip*, %struct.isl29028_chip** %4, align 8
  %83 = getelementptr inbounds %struct.isl29028_chip, %struct.isl29028_chip* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %76, %64, %53, %35, %21, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @isl29028_set_als_scale(%struct.isl29028_chip*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
