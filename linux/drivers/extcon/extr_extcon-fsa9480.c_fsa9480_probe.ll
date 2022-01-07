; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-fsa9480.c_fsa9480_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-fsa9480.c_fsa9480_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.fsa9480_usbsw = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"no interrupt provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fsa9480_extcon_cable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@fsa9480_regmap_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to allocate register map: %d\0A\00", align 1
@FSA9480_REG_TIMING1 = common dso_local global i32 0, align 4
@TIMING1_ADC_500MS = common dso_local global i32 0, align 4
@FSA9480_REG_CTRL = common dso_local global i32 0, align 4
@CON_MASK = common dso_local global i32 0, align 4
@FSA9480_REG_INT1_MASK = common dso_local global i32 0, align 4
@INT1_MASK = common dso_local global i32 0, align 4
@INT_ATTACH = common dso_local global i32 0, align 4
@INT_DETACH = common dso_local global i32 0, align 4
@FSA9480_REG_INT2_MASK = common dso_local global i32 0, align 4
@INT2_MASK = common dso_local global i32 0, align 4
@fsa9480_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"fsa9480\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @fsa9480_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsa9480_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.fsa9480_usbsw*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %142

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.fsa9480_usbsw* @devm_kzalloc(i32* %20, i32 16, i32 %21)
  store %struct.fsa9480_usbsw* %22, %struct.fsa9480_usbsw** %6, align 8
  %23 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %24 = icmp ne %struct.fsa9480_usbsw* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %142

28:                                               ; preds = %18
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %32 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.fsa9480_usbsw* %34)
  %36 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %37 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @fsa9480_extcon_cable, align 4
  %40 = call i32 @devm_extcon_dev_allocate(i32* %38, i32 %39)
  %41 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %42 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %44 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %28
  %49 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %50 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %142

56:                                               ; preds = %28
  %57 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %58 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %61 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @devm_extcon_dev_register(i32* %59, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %68 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %142

72:                                               ; preds = %56
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %73, i32* @fsa9480_regmap_config)
  %75 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %76 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %78 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IS_ERR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %84 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %88 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %142

93:                                               ; preds = %72
  %94 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %95 = load i32, i32* @FSA9480_REG_TIMING1, align 4
  %96 = load i32, i32* @TIMING1_ADC_500MS, align 4
  %97 = call i32 @fsa9480_write_reg(%struct.fsa9480_usbsw* %94, i32 %95, i32 %96)
  %98 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %99 = load i32, i32* @FSA9480_REG_CTRL, align 4
  %100 = load i32, i32* @CON_MASK, align 4
  %101 = call i32 @fsa9480_write_reg(%struct.fsa9480_usbsw* %98, i32 %99, i32 %100)
  %102 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %103 = load i32, i32* @FSA9480_REG_INT1_MASK, align 4
  %104 = load i32, i32* @INT1_MASK, align 4
  %105 = load i32, i32* @INT_ATTACH, align 4
  %106 = load i32, i32* @INT_DETACH, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = and i32 %104, %108
  %110 = call i32 @fsa9480_write_reg(%struct.fsa9480_usbsw* %102, i32 %103, i32 %109)
  %111 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %112 = load i32, i32* @FSA9480_REG_INT2_MASK, align 4
  %113 = load i32, i32* @INT2_MASK, align 4
  %114 = call i32 @fsa9480_write_reg(%struct.fsa9480_usbsw* %111, i32 %112, i32 %113)
  %115 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %116 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @fsa9480_irq_handler, align 4
  %122 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %123 = load i32, i32* @IRQF_ONESHOT, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %126 = call i32 @devm_request_threaded_irq(i32* %117, i32 %120, i32* null, i32 %121, i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.fsa9480_usbsw* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %93
  %130 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %131 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %142

135:                                              ; preds = %93
  %136 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %137 = getelementptr inbounds %struct.fsa9480_usbsw, %struct.fsa9480_usbsw* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @device_init_wakeup(i32* %138, i32 1)
  %140 = load %struct.fsa9480_usbsw*, %struct.fsa9480_usbsw** %6, align 8
  %141 = call i32 @fsa9480_detect_dev(%struct.fsa9480_usbsw* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %135, %129, %82, %66, %48, %25, %12
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.fsa9480_usbsw* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.fsa9480_usbsw*) #1

declare dso_local i32 @devm_extcon_dev_allocate(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @devm_extcon_dev_register(i32*, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @fsa9480_write_reg(%struct.fsa9480_usbsw*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.fsa9480_usbsw*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @fsa9480_detect_dev(%struct.fsa9480_usbsw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
