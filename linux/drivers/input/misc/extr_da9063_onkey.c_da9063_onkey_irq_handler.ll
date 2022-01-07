; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9063_onkey.c_da9063_onkey_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9063_onkey.c_da9063_onkey_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9063_onkey = type { i32, i32, i32, i64, i32, %struct.da906x_chip_config* }
%struct.da906x_chip_config = type { i32, i32 }

@KEY_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"KEY_POWER long press.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"KEY_POWER short press.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da9063_onkey_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_onkey_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.da9063_onkey*, align 8
  %6 = alloca %struct.da906x_chip_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.da9063_onkey*
  store %struct.da9063_onkey* %10, %struct.da9063_onkey** %5, align 8
  %11 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %12 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %11, i32 0, i32 5
  %13 = load %struct.da906x_chip_config*, %struct.da906x_chip_config** %12, align 8
  store %struct.da906x_chip_config* %13, %struct.da906x_chip_config** %6, align 8
  %14 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %15 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.da906x_chip_config*, %struct.da906x_chip_config** %6, align 8
  %18 = getelementptr inbounds %struct.da906x_chip_config, %struct.da906x_chip_config* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %16, i32 %19, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %22 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.da906x_chip_config*, %struct.da906x_chip_config** %6, align 8
  %31 = getelementptr inbounds %struct.da906x_chip_config, %struct.da906x_chip_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %37 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KEY_POWER, align 4
  %40 = call i32 @input_report_key(i32 %38, i32 %39, i32 1)
  %41 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %42 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @input_sync(i32 %43)
  %45 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %46 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %45, i32 0, i32 2
  %47 = call i32 @schedule_delayed_work(i32* %46, i32 0)
  %48 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %49 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %75

52:                                               ; preds = %28, %25, %2
  %53 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %54 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @KEY_POWER, align 4
  %57 = call i32 @input_report_key(i32 %55, i32 %56, i32 1)
  %58 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %59 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @input_sync(i32 %60)
  %62 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %63 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @KEY_POWER, align 4
  %66 = call i32 @input_report_key(i32 %64, i32 %65, i32 0)
  %67 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %68 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @input_sync(i32 %69)
  %71 = load %struct.da9063_onkey*, %struct.da9063_onkey** %5, align 8
  %72 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %52, %35
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %76
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
