; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_i2c_au1550_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_i2c_au1550_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.i2c_au1550_data = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.i2c_au1550_data*, i32*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@au1550_algo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Au1xxx PSC I2C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_au1550_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_au1550_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_au1550_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.i2c_au1550_data* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.i2c_au1550_data* %10, %struct.i2c_au1550_data** %4, align 8
  %11 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %12 = icmp ne %struct.i2c_au1550_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %16
  %37 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %37, i32 0, i32 0
  store i32 200, i32* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 8
  %45 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i32* @au1550_algo, i32** %47, align 8
  %48 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %49 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store %struct.i2c_au1550_data* %48, %struct.i2c_au1550_data** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32* %53, i32** %57, align 8
  %58 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strlcpy(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 4)
  %63 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %64 = call i32 @i2c_au1550_setup(%struct.i2c_au1550_data* %63)
  %65 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %65, i32 0, i32 1
  %67 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_4__* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %36
  %71 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %72 = call i32 @i2c_au1550_disable(%struct.i2c_au1550_data* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %36
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.i2c_au1550_data* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %70, %31, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.i2c_au1550_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_au1550_setup(%struct.i2c_au1550_data*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_4__*) #1

declare dso_local i32 @i2c_au1550_disable(%struct.i2c_au1550_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_au1550_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
