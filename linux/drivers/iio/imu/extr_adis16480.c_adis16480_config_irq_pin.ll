; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_config_irq_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_config_irq_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.adis16480 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Could not find IRQ %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADIS16480_PIN_DIO1 = common dso_local global i32 0, align 4
@adis16480_int_pin_names = common dso_local global i32* null, align 8
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid interrupt type 0x%x specified\0A\00", align 1
@ADIS16480_REG_FNCTIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.adis16480*)* @adis16480_config_irq_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_config_irq_pin(%struct.device_node* %0, %struct.adis16480* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.adis16480*, align 8
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.adis16480* %1, %struct.adis16480** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %13 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.irq_data* @irq_get_irq_data(i32 %17)
  store %struct.irq_data* %18, %struct.irq_data** %6, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %20 = icmp ne %struct.irq_data* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %23 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %94

31:                                               ; preds = %2
  %32 = call i32 @ADIS16480_DRDY_EN(i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @ADIS16480_PIN_DIO1, align 4
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %52, %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** @adis16480_int_pin_names, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = load i32*, i32** @adis16480_int_pin_names, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @of_irq_get_byname(%struct.device_node* %40, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %7, align 4
  br label %55

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %34

55:                                               ; preds = %49, %34
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ADIS16480_DRDY_SEL(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %61 = call i32 @irqd_get_trigger_type(%struct.irq_data* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = call i32 @ADIS16480_DRDY_POL(i32 1)
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %88

69:                                               ; preds = %55
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = call i32 @ADIS16480_DRDY_POL(i32 0)
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %87

77:                                               ; preds = %69
  %78 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %79 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %94

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %65
  %89 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %90 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %89, i32 0, i32 0
  %91 = load i32, i32* @ADIS16480_REG_FNCTIO_CTRL, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @adis_write_reg_16(%struct.TYPE_4__* %90, i32 %91, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %77, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ADIS16480_DRDY_EN(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @of_irq_get_byname(%struct.device_node*, i32) #1

declare dso_local i32 @ADIS16480_DRDY_SEL(i32) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @ADIS16480_DRDY_POL(i32) #1

declare dso_local i32 @adis_write_reg_16(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
