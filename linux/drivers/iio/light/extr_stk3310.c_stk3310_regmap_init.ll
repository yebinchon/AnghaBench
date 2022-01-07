; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_regmap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_regmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk3310_data = type { %struct.regmap*, %struct.i2c_client* }
%struct.regmap = type { i32 }
%struct.i2c_client = type { i32 }

@stk3310_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"regmap initialization failed.\0A\00", align 1
@state = common dso_local global i32 0, align 4
@als_gain = common dso_local global i32 0, align 4
@ps_gain = common dso_local global i32 0, align 4
@als_it = common dso_local global i32 0, align 4
@ps_it = common dso_local global i32 0, align 4
@int_ps = common dso_local global i32 0, align 4
@flag_psint = common dso_local global i32 0, align 4
@flag_nf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk3310_data*)* @stk3310_regmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk3310_regmap_init(%struct.stk3310_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk3310_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.stk3310_data* %0, %struct.stk3310_data** %3, align 8
  %6 = load %struct.stk3310_data*, %struct.stk3310_data** %3, align 8
  %7 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %6, i32 0, i32 1
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %9, i32* @stk3310_regmap_config)
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  %11 = load %struct.regmap*, %struct.regmap** %4, align 8
  %12 = call i64 @IS_ERR(%struct.regmap* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.regmap*, %struct.regmap** %4, align 8
  %19 = call i32 @PTR_ERR(%struct.regmap* %18)
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.regmap*, %struct.regmap** %4, align 8
  %22 = load %struct.stk3310_data*, %struct.stk3310_data** %3, align 8
  %23 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %22, i32 0, i32 0
  store %struct.regmap* %21, %struct.regmap** %23, align 8
  %24 = load i32, i32* @state, align 4
  %25 = call i32 @STK3310_REGFIELD(i32 %24)
  %26 = load i32, i32* @als_gain, align 4
  %27 = call i32 @STK3310_REGFIELD(i32 %26)
  %28 = load i32, i32* @ps_gain, align 4
  %29 = call i32 @STK3310_REGFIELD(i32 %28)
  %30 = load i32, i32* @als_it, align 4
  %31 = call i32 @STK3310_REGFIELD(i32 %30)
  %32 = load i32, i32* @ps_it, align 4
  %33 = call i32 @STK3310_REGFIELD(i32 %32)
  %34 = load i32, i32* @int_ps, align 4
  %35 = call i32 @STK3310_REGFIELD(i32 %34)
  %36 = load i32, i32* @flag_psint, align 4
  %37 = call i32 @STK3310_REGFIELD(i32 %36)
  %38 = load i32, i32* @flag_nf, align 4
  %39 = call i32 @STK3310_REGFIELD(i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %20, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @STK3310_REGFIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
