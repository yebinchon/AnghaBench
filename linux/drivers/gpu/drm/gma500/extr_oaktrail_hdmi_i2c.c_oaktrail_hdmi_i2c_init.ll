; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_oaktrail_hdmi_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_oaktrail_hdmi_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.oaktrail_hdmi_dev = type { %struct.hdmi_i2c_dev* }
%struct.hdmi_i2c_dev = type { i32, i32, i32, %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate interface\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@oaktrail_hdmi_i2c_adapter = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@I2C_STAT_INIT = common dso_local global i32 0, align 4
@oaktrail_hdmi_i2c_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to request IRQ for I2C controller\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oaktrail_hdmi_i2c_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %5 = alloca %struct.hdmi_i2c_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.oaktrail_hdmi_dev* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.oaktrail_hdmi_dev* %8, %struct.oaktrail_hdmi_dev** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hdmi_i2c_dev* @kzalloc(i32 24, i32 %9)
  store %struct.hdmi_i2c_dev* %10, %struct.hdmi_i2c_dev** %5, align 8
  %11 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %5, align 8
  %12 = icmp eq %struct.hdmi_i2c_dev* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %18, i32 0, i32 3
  store %struct.TYPE_4__* @oaktrail_hdmi_i2c_adapter, %struct.TYPE_4__** %19, align 8
  %20 = load i32, i32* @I2C_STAT_INIT, align 4
  %21 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %5, align 8
  %24 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %23, i32 0, i32 1
  %25 = call i32 @init_completion(i32* %24)
  %26 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %5, align 8
  %27 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %30 = call i32 @i2c_set_adapdata(%struct.TYPE_4__* @oaktrail_hdmi_i2c_adapter, %struct.oaktrail_hdmi_dev* %29)
  %31 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %5, align 8
  %32 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %33 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %32, i32 0, i32 0
  store %struct.hdmi_i2c_dev* %31, %struct.hdmi_i2c_dev** %33, align 8
  %34 = call i32 (...) @oaktrail_hdmi_i2c_gpio_fix()
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @oaktrail_hdmi_i2c_handler, align 4
  %39 = load i32, i32* @IRQF_SHARED, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @oaktrail_hdmi_i2c_adapter, i32 0, i32 0), align 4
  %41 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %42 = call i32 @request_irq(i32 %37, i32 %38, i32 %39, i32 %40, %struct.oaktrail_hdmi_dev* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %17
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %50

47:                                               ; preds = %17
  %48 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_4__* @oaktrail_hdmi_i2c_adapter)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %55

50:                                               ; preds = %45
  %51 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %5, align 8
  %52 = call i32 @kfree(%struct.hdmi_i2c_dev* %51)
  br label %53

53:                                               ; preds = %50, %13
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.oaktrail_hdmi_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.hdmi_i2c_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_4__*, %struct.oaktrail_hdmi_dev*) #1

declare dso_local i32 @oaktrail_hdmi_i2c_gpio_fix(...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.oaktrail_hdmi_dev*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.hdmi_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
