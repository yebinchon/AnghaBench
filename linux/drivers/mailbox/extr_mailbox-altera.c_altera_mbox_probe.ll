; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.altera_mbox = type { i64, i32, %struct.TYPE_2__, i64, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, %struct.mbox_chan*, i32* }
%struct.mbox_chan = type { %struct.altera_mbox* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@altera_mbox_ops = common dso_local global i32 0, align 4
@MBOX_POLLING_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Register mailbox failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @altera_mbox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_mbox_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.altera_mbox*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.mbox_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kzalloc(i32* %9, i32 80, i32 %10)
  %12 = bitcast i8* %11 to %struct.altera_mbox*
  store %struct.altera_mbox* %12, %struct.altera_mbox** %4, align 8
  %13 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %14 = icmp ne %struct.altera_mbox* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %130

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
  br label %130

29:                                               ; preds = %18
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %5, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = call i32 @devm_ioremap_resource(i32* %34, %struct.resource* %35)
  %37 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %38 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %40 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %46 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %130

49:                                               ; preds = %29
  %50 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %51 = call i64 @altera_mbox_is_sender(%struct.altera_mbox* %50)
  %52 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %53 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i64 @platform_get_irq(%struct.platform_device* %54, i32 0)
  %56 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %57 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %59 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %64 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %49
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %69 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  %70 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %71 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %72 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %71, i64 0
  %73 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %72, i32 0, i32 0
  store %struct.altera_mbox* %70, %struct.altera_mbox** %73, align 8
  %74 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %75 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %78 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 6
  store i32* %76, i32** %79, align 8
  %80 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %81 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %84 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %85 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 5
  store %struct.mbox_chan* %83, %struct.mbox_chan** %86, align 8
  %87 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %88 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store i32* @altera_mbox_ops, i32** %89, align 8
  %90 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %91 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %65
  %95 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %96 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %101 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %111

103:                                              ; preds = %94
  %104 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %105 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  %107 = load i32, i32* @MBOX_POLLING_MS, align 4
  %108 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %109 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %103, %99
  br label %112

112:                                              ; preds = %111, %65
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %116 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %115, i32 0, i32 2
  %117 = call i32 @devm_mbox_controller_register(i32* %114, %struct.TYPE_2__* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %128

124:                                              ; preds = %112
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = load %struct.altera_mbox*, %struct.altera_mbox** %4, align 8
  %127 = call i32 @platform_set_drvdata(%struct.platform_device* %125, %struct.altera_mbox* %126)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %44, %26, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @altera_mbox_is_sender(%struct.altera_mbox*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_mbox_controller_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.altera_mbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
