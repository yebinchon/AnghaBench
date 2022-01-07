; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm2835-mailbox.c_bcm2835_mbox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm2835-mailbox.c_bcm2835_mbox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.bcm2835_mbox = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcm2835_mbox_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to register a mailbox IRQ handler: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to remap mailbox regs: %d\0A\00", align 1
@bcm2835_mbox_chan_ops = common dso_local global i32 0, align 4
@bcm2835_mbox_index_xlate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"mailbox enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_mbox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_mbox_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.bcm2835_mbox*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  %13 = bitcast i8* %12 to %struct.bcm2835_mbox*
  store %struct.bcm2835_mbox* %13, %struct.bcm2835_mbox** %7, align 8
  %14 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %15 = icmp eq %struct.bcm2835_mbox* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %116

19:                                               ; preds = %1
  %20 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %21 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @irq_of_parse_and_map(i32 %26, i32 0)
  %28 = load i32, i32* @bcm2835_mbox_irq, align 4
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_name(%struct.device* %29)
  %31 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %32 = call i32 @devm_request_irq(%struct.device* %23, i32 %27, i32 %28, i32 0, i32 %30, %struct.bcm2835_mbox* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %19
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %116

41:                                               ; preds = %19
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource(%struct.platform_device* %42, i32 %43, i32 0)
  store %struct.resource* %44, %struct.resource** %6, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  %48 = call i32 @devm_ioremap_resource(%struct.device* %46, %struct.resource* %47)
  %49 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %50 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %52 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %41
  %57 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %58 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %116

66:                                               ; preds = %41
  %67 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %68 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %71 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 5, i32* %72, align 4
  %73 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %74 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  store i32* @bcm2835_mbox_chan_ops, i32** %75, align 8
  %76 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %77 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  store i32* @bcm2835_mbox_index_xlate, i32** %78, align 8
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %81 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store %struct.device* %79, %struct.device** %82, align 8
  %83 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %84 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @devm_kzalloc(%struct.device* %86, i32 1, i32 %87)
  %89 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %90 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i8* %88, i8** %91, align 8
  %92 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %93 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %66
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %116

100:                                              ; preds = %66
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %103 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %102, i32 0, i32 0
  %104 = call i32 @devm_mbox_controller_register(%struct.device* %101, %struct.TYPE_2__* %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %116

109:                                              ; preds = %100
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %7, align 8
  %112 = call i32 @platform_set_drvdata(%struct.platform_device* %110, %struct.bcm2835_mbox* %111)
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call i32 @dev_info(%struct.device* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %109, %107, %97, %56, %35, %16
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.bcm2835_mbox*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm2835_mbox*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
