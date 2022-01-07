; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcap_keys.c_pcap_keys_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcap_keys.c_pcap_keys_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pcap_keys = type { i32, %struct.input_dev* }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pcap-keys/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@KEY_HP = common dso_local global i32 0, align 4
@PCAP_IRQ_ONOFF = common dso_local global i32 0, align 4
@pcap_keys_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Power key\00", align 1
@PCAP_IRQ_MIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Headphone button\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcap_keys_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_keys_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcap_keys*, align 8
  %6 = alloca %struct.input_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pcap_keys* @kmalloc(i32 16, i32 %9)
  store %struct.pcap_keys* %10, %struct.pcap_keys** %5, align 8
  %11 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %12 = icmp ne %struct.pcap_keys* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %113

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_get_drvdata(i32 %19)
  %21 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %22 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %23, %struct.input_dev** %6, align 8
  %24 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %25 = icmp ne %struct.input_dev* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %109

27:                                               ; preds = %15
  %28 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %29 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %30 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %29, i32 0, i32 1
  store %struct.input_dev* %28, %struct.input_dev** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.pcap_keys* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load i32, i32* @BUS_HOST, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %49, align 8
  %50 = load i32, i32* @EV_KEY, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__set_bit(i32 %50, i32 %53)
  %55 = load i32, i32* @KEY_POWER, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__set_bit(i32 %55, i32 %58)
  %60 = load i32, i32* @KEY_HP, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @__set_bit(i32 %60, i32 %63)
  %65 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %66 = call i32 @input_register_device(%struct.input_dev* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %27
  br label %106

70:                                               ; preds = %27
  %71 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %72 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PCAP_IRQ_ONOFF, align 4
  %75 = call i32 @pcap_to_irq(i32 %73, i32 %74)
  %76 = load i32, i32* @pcap_keys_handler, align 4
  %77 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %78 = call i32 @request_irq(i32 %75, i32 %76, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.pcap_keys* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %103

82:                                               ; preds = %70
  %83 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %84 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @PCAP_IRQ_MIC, align 4
  %87 = call i32 @pcap_to_irq(i32 %85, i32 %86)
  %88 = load i32, i32* @pcap_keys_handler, align 4
  %89 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %90 = call i32 @request_irq(i32 %87, i32 %88, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.pcap_keys* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %95

94:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %113

95:                                               ; preds = %93
  %96 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %97 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PCAP_IRQ_ONOFF, align 4
  %100 = call i32 @pcap_to_irq(i32 %98, i32 %99)
  %101 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %102 = call i32 @free_irq(i32 %100, %struct.pcap_keys* %101)
  br label %103

103:                                              ; preds = %95, %81
  %104 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %105 = call i32 @input_unregister_device(%struct.input_dev* %104)
  br label %109

106:                                              ; preds = %69
  %107 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %108 = call i32 @input_free_device(%struct.input_dev* %107)
  br label %109

109:                                              ; preds = %106, %103, %26
  %110 = load %struct.pcap_keys*, %struct.pcap_keys** %5, align 8
  %111 = call i32 @kfree(%struct.pcap_keys* %110)
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %94, %13
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.pcap_keys* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pcap_keys*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.pcap_keys*) #1

declare dso_local i32 @pcap_to_irq(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.pcap_keys*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.pcap_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
