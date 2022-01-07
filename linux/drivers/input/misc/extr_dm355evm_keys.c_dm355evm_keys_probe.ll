; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_dm355evm_keys.c_dm355evm_keys_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_dm355evm_keys.c_dm355evm_keys_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dm355evm_keys = type { %struct.input_dev*, i32* }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DM355 EVM Controls\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"dm355evm/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@DM355EVM_MSP_FIRMREV = common dso_local global i32 0, align 4
@dm355evm_keys = common dso_local global i32 0, align 4
@dm355evm_keys_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dm355evm_keys_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm355evm_keys_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dm355evm_keys*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dm355evm_keys* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.dm355evm_keys* %11, %struct.dm355evm_keys** %4, align 8
  %12 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %4, align 8
  %13 = icmp ne %struct.dm355evm_keys* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.input_dev* @devm_input_allocate_device(i32* %19)
  store %struct.input_dev* %20, %struct.input_dev** %5, align 8
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = icmp ne %struct.input_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %89

26:                                               ; preds = %17
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %4, align 8
  %30 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %32 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %4, align 8
  %33 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %32, i32 0, i32 0
  store %struct.input_dev* %31, %struct.input_dev** %33, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @BUS_I2C, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 853, i32* %44, align 8
  %45 = load i32, i32* @DM355EVM_MSP_FIRMREV, align 4
  %46 = call i32 @dm355evm_msp_read(i32 %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %51 = load i32, i32* @dm355evm_keys, align 4
  %52 = call i32 @sparse_keymap_setup(%struct.input_dev* %50, i32 %51, i32* null)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %26
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %89

57:                                               ; preds = %26
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @platform_get_irq(%struct.platform_device* %58, i32 0)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %89

64:                                               ; preds = %57
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @dm355evm_keys_irq, align 4
  %69 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %70 = load i32, i32* @IRQF_ONESHOT, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_name(i32* %73)
  %75 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %4, align 8
  %76 = call i32 @devm_request_threaded_irq(i32* %66, i32 %67, i32* null, i32 %68, i32 %71, i32 %74, %struct.dm355evm_keys* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %89

81:                                               ; preds = %64
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = call i32 @input_register_device(%struct.input_dev* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %86, %79, %62, %55, %23, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.dm355evm_keys* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @dm355evm_msp_read(i32) #1

declare dso_local i32 @sparse_keymap_setup(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.dm355evm_keys*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
