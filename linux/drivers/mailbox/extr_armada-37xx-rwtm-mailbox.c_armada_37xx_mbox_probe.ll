; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_armada_37xx_mbox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_armada_37xx_mbox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.a37xx_mbox = type { i64, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, %struct.mbox_chan*, i32* }
%struct.mbox_chan = type { %struct.a37xx_mbox* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Cannot get irq\0A\00", align 1
@a37xx_mbox_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not register mailbox controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_37xx_mbox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_mbox_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.a37xx_mbox*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.mbox_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kzalloc(i32* %9, i32 56, i32 %10)
  %12 = bitcast i8* %11 to %struct.a37xx_mbox*
  store %struct.a37xx_mbox* %12, %struct.a37xx_mbox** %4, align 8
  %13 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %14 = icmp ne %struct.a37xx_mbox* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %115

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(i32* %20, i32 8, i32 %21)
  %23 = bitcast i8* %22 to %struct.mbox_chan*
  store %struct.mbox_chan* %23, %struct.mbox_chan** %6, align 8
  %24 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %25 = icmp ne %struct.mbox_chan* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %115

29:                                               ; preds = %18
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %5, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = call i32 @devm_ioremap_resource(i32* %34, %struct.resource* %35)
  %37 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %38 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %40 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %49 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %115

52:                                               ; preds = %29
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i64 @platform_get_irq(%struct.platform_device* %53, i32 0)
  %55 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %56 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %58 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %66 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %2, align 4
  br label %115

69:                                               ; preds = %52
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %73 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %75 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %76 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %75, i64 0
  %77 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %76, i32 0, i32 0
  store %struct.a37xx_mbox* %74, %struct.a37xx_mbox** %77, align 8
  %78 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %79 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %82 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  store i32* %80, i32** %83, align 8
  %84 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %85 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %88 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %89 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store %struct.mbox_chan* %87, %struct.mbox_chan** %90, align 8
  %91 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %92 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32* @a37xx_mbox_ops, i32** %93, align 8
  %94 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %95 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %98 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %101 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %100, i32 0, i32 1
  %102 = call i32 @devm_mbox_controller_register(i32* %99, %struct.TYPE_2__* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %69
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %2, align 4
  br label %115

110:                                              ; preds = %69
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %4, align 8
  %113 = call i32 @platform_set_drvdata(%struct.platform_device* %111, %struct.a37xx_mbox* %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %110, %105, %61, %44, %26, %15
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_mbox_controller_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.a37xx_mbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
