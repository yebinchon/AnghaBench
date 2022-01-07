; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_init_muic_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_init_muic_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_dev = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@I2C_ADDR_MUIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot allocate I2C device for MUIC\0A\00", align 1
@max77843_muic_regmap_config = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@max77843_muic_irq_chip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot add MUIC IRQ chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_dev*)* @max77843_init_muic_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_init_muic_regmap(%struct.max77693_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77693_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.max77693_dev* %0, %struct.max77693_dev** %3, align 8
  %5 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %6 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @I2C_ADDR_MUIC, align 4
  %11 = call i32 @i2c_new_dummy_device(i32 %9, i32 %10)
  %12 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %13 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %15 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @IS_ERR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %21 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %26 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %81

29:                                               ; preds = %1
  %30 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %31 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %34 = call i32 @i2c_set_clientdata(i32 %32, %struct.max77693_dev* %33)
  %35 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %36 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @devm_regmap_init_i2c(i32 %37, i32* @max77843_muic_regmap_config)
  %39 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %40 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %42 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %48 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %75

51:                                               ; preds = %29
  %52 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %53 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %56 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %59 = load i32, i32* @IRQF_ONESHOT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IRQF_SHARED, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %64 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %63, i32 0, i32 2
  %65 = call i32 @regmap_add_irq_chip(i32 %54, i32 %57, i32 %62, i32 0, i32* @max77843_muic_irq_chip, i32* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %51
  %69 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %70 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %75

74:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %81

75:                                               ; preds = %68, %46
  %76 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %77 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @i2c_unregister_device(i32 %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %74, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @i2c_new_dummy_device(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(i32, %struct.max77693_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(i32, i32*) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
