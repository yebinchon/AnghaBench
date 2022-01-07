; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_als_drdy_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_als_drdy_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.vcnl4035_data = type { i32 }

@VCNL4035_MODE_ALS_INT_ENABLE = common dso_local global i32 0, align 4
@VCNL4035_MODE_ALS_INT_DISABLE = common dso_local global i32 0, align 4
@VCNL4035_ALS_CONF = common dso_local global i32 0, align 4
@VCNL4035_MODE_ALS_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @vcnl4035_als_drdy_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4035_als_drdy_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.vcnl4035_data*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %9 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %8)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.vcnl4035_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.vcnl4035_data* %11, %struct.vcnl4035_data** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @VCNL4035_MODE_ALS_INT_ENABLE, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @VCNL4035_MODE_ALS_INT_DISABLE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %7, align 4
  %20 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %6, align 8
  %21 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VCNL4035_ALS_CONF, align 4
  %24 = load i32, i32* @VCNL4035_MODE_ALS_INT_MASK, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.vcnl4035_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
