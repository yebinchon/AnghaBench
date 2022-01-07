; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.em_i2c_device = type { i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"EMEV2 I2C\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@em_i2c_algo = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@em_i2c_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"em_i2c\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Added i2c controller %d, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @em_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.em_i2c_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.em_i2c_device* @devm_kzalloc(%struct.TYPE_12__* %8, i32 64, i32 %9)
  store %struct.em_i2c_device* %10, %struct.em_i2c_device** %4, align 8
  %11 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %12 = icmp ne %struct.em_i2c_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %147

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %21, %struct.resource* %22)
  %24 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %25 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %27 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %33 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %147

36:                                               ; preds = %16
  %37 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %38 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strlcpy(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @devm_clk_get(%struct.TYPE_12__* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %46 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %48 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %54 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %147

57:                                               ; preds = %36
  %58 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %59 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @clk_prepare_enable(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %147

66:                                               ; preds = %57
  %67 = call i32 @msecs_to_jiffies(i32 100)
  %68 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %69 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 8
  %71 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %72 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 5, i32* %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %77 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %79, align 8
  %80 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %81 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  store i32* @em_i2c_algo, i32** %82, align 8
  %83 = load i32, i32* @THIS_MODULE, align 4
  %84 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %85 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %92 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %96 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %95, i32 0, i32 3
  %97 = call i32 @init_completion(i32* %96)
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %100 = call i32 @platform_set_drvdata(%struct.platform_device* %98, %struct.em_i2c_device* %99)
  %101 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %102 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %101, i32 0, i32 2
  %103 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %104 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %102, %struct.em_i2c_device* %103)
  %105 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %106 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %105, i32 0, i32 2
  %107 = call i32 @em_i2c_reset(%struct.TYPE_11__* %106)
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = call i32 @platform_get_irq(%struct.platform_device* %108, i32 0)
  %110 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %111 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %115 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @em_i2c_irq_handler, align 4
  %118 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %119 = call i32 @devm_request_irq(%struct.TYPE_12__* %113, i32 %116, i32 %117, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.em_i2c_device* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %66
  br label %141

123:                                              ; preds = %66
  %124 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %125 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %124, i32 0, i32 2
  %126 = call i32 @i2c_add_adapter(%struct.TYPE_11__* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %141

130:                                              ; preds = %123
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %134 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %138 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dev_info(%struct.TYPE_12__* %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 %139)
  store i32 0, i32* %2, align 4
  br label %147

141:                                              ; preds = %129, %122
  %142 = load %struct.em_i2c_device*, %struct.em_i2c_device** %4, align 8
  %143 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @clk_disable_unprepare(i32 %144)
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %141, %130, %64, %52, %31, %13
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.em_i2c_device* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.em_i2c_device*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, %struct.em_i2c_device*) #1

declare dso_local i32 @em_i2c_reset(%struct.TYPE_11__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i8*, %struct.em_i2c_device*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
