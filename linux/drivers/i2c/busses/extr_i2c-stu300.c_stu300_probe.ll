; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.stu300_dev = type { i32, i32, %struct.i2c_adapter, i32, i32, i32, %struct.platform_device*, i32, i32 }
%struct.i2c_adapter = type { i32, i32*, %struct.TYPE_9__, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not retrieve i2c bus clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"initialize bus device I2C%d on virtual base %p\0A\00", align 1
@stu300_irh = common dso_local global i32 0, align 4
@NAME = common dso_local global i32 0, align 4
@scl_frequency = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"error initializing hardware.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STU300_EVENT_NONE = common dso_local global i32 0, align 4
@STU300_ERROR_NONE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"ST Microelectronics DDC I2C adapter\00", align 1
@stu300_algo = common dso_local global i32 0, align 4
@stu300_quirks = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"ST DDC I2C @ %p, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stu300_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stu300_dev*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.stu300_dev* @devm_kzalloc(%struct.TYPE_10__* %10, i32 96, i32 %11)
  store %struct.stu300_dev* %12, %struct.stu300_dev** %4, align 8
  %13 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %14 = icmp ne %struct.stu300_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %175

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 1
  %24 = call i32 @devm_clk_get(%struct.TYPE_10__* %23, i32* null)
  %25 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %26 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %28 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %18
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = call i32 @dev_err(%struct.TYPE_10__* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %37 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %175

40:                                               ; preds = %18
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %43 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %42, i32 0, i32 6
  store %struct.platform_device* %41, %struct.platform_device** %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i32, i32* @IORESOURCE_MEM, align 4
  %46 = call %struct.resource* @platform_get_resource(%struct.platform_device* %44, i32 %45, i32 0)
  store %struct.resource* %46, %struct.resource** %6, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %48, %struct.resource* %49)
  %51 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %52 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 1
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %57 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_dbg(%struct.TYPE_10__* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %61 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %40
  %66 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %67 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %2, align 4
  br label %175

70:                                               ; preds = %40
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = call i32 @platform_get_irq(%struct.platform_device* %71, i32 0)
  %73 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %74 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 1
  %77 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %78 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @stu300_irh, align 4
  %81 = load i32, i32* @NAME, align 4
  %82 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %83 = call i32 @devm_request_irq(%struct.TYPE_10__* %76, i32 %79, i32 %80, i32 0, i32 %81, %struct.stu300_dev* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %175

88:                                               ; preds = %70
  %89 = load i32, i32* @scl_frequency, align 4
  %90 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %91 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 4
  %92 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %93 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @clk_prepare_enable(i32 %94)
  %96 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %97 = call i32 @stu300_init_hw(%struct.stu300_dev* %96)
  store i32 %97, i32* %8, align 4
  %98 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %99 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @clk_disable(i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %88
  %105 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %106 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %105, i32 0, i32 6
  %107 = load %struct.platform_device*, %struct.platform_device** %106, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 1
  %109 = call i32 @dev_err(%struct.TYPE_10__* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %175

112:                                              ; preds = %88
  %113 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %114 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %113, i32 0, i32 5
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load i32, i32* @STU300_EVENT_NONE, align 4
  %117 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %118 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @STU300_ERROR_NONE, align 4
  %120 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %121 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %123 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %122, i32 0, i32 2
  store %struct.i2c_adapter* %123, %struct.i2c_adapter** %5, align 8
  %124 = load i32, i32* @THIS_MODULE, align 4
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %126 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %129 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %131 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @strlcpy(i32 %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %136 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %138 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %137, i32 0, i32 3
  store i32* @stu300_algo, i32** %138, align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 1
  %141 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %142 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %143, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %149 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %152 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %151, i32 0, i32 1
  store i32* @stu300_quirks, i32** %152, align 8
  %153 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %154 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %155 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %153, %struct.stu300_dev* %154)
  %156 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %157 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %112
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %2, align 4
  br label %175

162:                                              ; preds = %112
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %165 = call i32 @platform_set_drvdata(%struct.platform_device* %163, %struct.stu300_dev* %164)
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 1
  %168 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %169 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %172 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @dev_info(%struct.TYPE_10__* %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %170, i32 %173)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %162, %160, %104, %86, %65, %32, %15
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.stu300_dev* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i32, %struct.stu300_dev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @stu300_init_hw(%struct.stu300_dev*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.stu300_dev*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stu300_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
