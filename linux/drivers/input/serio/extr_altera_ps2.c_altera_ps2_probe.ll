; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_altera_ps2.c_altera_ps2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_altera_ps2.c_altera_ps2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.ps2if = type { %struct.serio*, i32 }
%struct.serio = type { %struct.TYPE_4__, %struct.ps2if*, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@altera_ps2_rxint = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not request IRQ %d\0A\00", align 1
@SERIO_8042 = common dso_local global i32 0, align 4
@altera_ps2_write = common dso_local global i32 0, align 4
@altera_ps2_open = common dso_local global i32 0, align 4
@altera_ps2_close = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"base %p, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @altera_ps2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_ps2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ps2if*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.serio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ps2if* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.ps2if* %12, %struct.ps2if** %4, align 8
  %13 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %14 = icmp ne %struct.ps2if* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %125

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = call i32 @devm_ioremap_resource(i32* %23, %struct.resource* %24)
  %26 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %27 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %29 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %35 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %125

38:                                               ; preds = %18
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @platform_get_irq(%struct.platform_device* %39, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %125

46:                                               ; preds = %38
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @altera_ps2_rxint, align 4
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %55 = call i32 @devm_request_irq(i32* %48, i32 %49, i32 %50, i32 0, i32 %53, %struct.ps2if* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %46
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %125

64:                                               ; preds = %46
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.serio* @kzalloc(i32 40, i32 %65)
  store %struct.serio* %66, %struct.serio** %6, align 8
  %67 = load %struct.serio*, %struct.serio** %6, align 8
  %68 = icmp ne %struct.serio* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %125

72:                                               ; preds = %64
  %73 = load i32, i32* @SERIO_8042, align 4
  %74 = load %struct.serio*, %struct.serio** %6, align 8
  %75 = getelementptr inbounds %struct.serio, %struct.serio* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @altera_ps2_write, align 4
  %78 = load %struct.serio*, %struct.serio** %6, align 8
  %79 = getelementptr inbounds %struct.serio, %struct.serio* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @altera_ps2_open, align 4
  %81 = load %struct.serio*, %struct.serio** %6, align 8
  %82 = getelementptr inbounds %struct.serio, %struct.serio* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @altera_ps2_close, align 4
  %84 = load %struct.serio*, %struct.serio** %6, align 8
  %85 = getelementptr inbounds %struct.serio, %struct.serio* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load %struct.serio*, %struct.serio** %6, align 8
  %87 = getelementptr inbounds %struct.serio, %struct.serio* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_name(i32* %90)
  %92 = call i32 @strlcpy(i32 %88, i32 %91, i32 4)
  %93 = load %struct.serio*, %struct.serio** %6, align 8
  %94 = getelementptr inbounds %struct.serio, %struct.serio* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @dev_name(i32* %97)
  %99 = call i32 @strlcpy(i32 %95, i32 %98, i32 4)
  %100 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %101 = load %struct.serio*, %struct.serio** %6, align 8
  %102 = getelementptr inbounds %struct.serio, %struct.serio* %101, i32 0, i32 1
  store %struct.ps2if* %100, %struct.ps2if** %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.serio*, %struct.serio** %6, align 8
  %106 = getelementptr inbounds %struct.serio, %struct.serio* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32* %104, i32** %107, align 8
  %108 = load %struct.serio*, %struct.serio** %6, align 8
  %109 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %110 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %109, i32 0, i32 0
  store %struct.serio* %108, %struct.serio** %110, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %114 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @dev_info(i32* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %119 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %118, i32 0, i32 0
  %120 = load %struct.serio*, %struct.serio** %119, align 8
  %121 = call i32 @serio_register_port(%struct.serio* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load %struct.ps2if*, %struct.ps2if** %4, align 8
  %124 = call i32 @platform_set_drvdata(%struct.platform_device* %122, %struct.ps2if* %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %72, %69, %58, %43, %33, %15
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.ps2if* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.ps2if*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @serio_register_port(%struct.serio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ps2if*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
