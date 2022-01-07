; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dc_i2c = type { i32, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { %struct.dc_i2c*, %struct.TYPE_8__, i32*, i32, i32 }
%struct.TYPE_8__ = type { %struct.device_node*, %struct.TYPE_10__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@DEFAULT_FREQ = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@dc_i2c_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Conexant Digicolor I2C adapter\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@dc_i2c_algorithm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dc_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.dc_i2c*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.dc_i2c* @devm_kzalloc(%struct.TYPE_10__* %14, i32 80, i32 %15)
  store %struct.dc_i2c* %16, %struct.dc_i2c** %5, align 8
  %17 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %18 = icmp ne %struct.dc_i2c* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %161

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.device_node*, %struct.device_node** %25, align 8
  %27 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %28 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %27, i32 0, i32 6
  %29 = call i64 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32, i32* @DEFAULT_FREQ, align 4
  %33 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %34 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %39 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %38, i32 0, i32 5
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.dc_i2c* %41)
  %43 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %44 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %43, i32 0, i32 4
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %47 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %46, i32 0, i32 3
  %48 = call i32 @init_completion(i32* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @devm_clk_get(%struct.TYPE_10__* %50, i32* null)
  %52 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %53 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %55 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %35
  %60 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %61 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %161

64:                                               ; preds = %35
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_MEM, align 4
  %67 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 0)
  store %struct.resource* %67, %struct.resource** %6, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %69, %struct.resource* %70)
  %72 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %73 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %75 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %64
  %80 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %81 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %161

84:                                               ; preds = %64
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = call i32 @platform_get_irq(%struct.platform_device* %85, i32 0)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %161

91:                                               ; preds = %84
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @dc_i2c_irq, align 4
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @dev_name(%struct.TYPE_10__* %97)
  %99 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %100 = call i32 @devm_request_irq(%struct.TYPE_10__* %93, i32 %94, i32 %95, i32 0, i32 %98, %struct.dc_i2c* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %161

105:                                              ; preds = %91
  %106 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %107 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @strlcpy(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %111 = load i32, i32* @THIS_MODULE, align 4
  %112 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %113 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 8
  %115 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %116 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  store i32* @dc_i2c_algorithm, i32** %117, align 8
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %121 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %123, align 8
  %124 = load %struct.device_node*, %struct.device_node** %4, align 8
  %125 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %126 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store %struct.device_node* %124, %struct.device_node** %128, align 8
  %129 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %130 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %131 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store %struct.dc_i2c* %129, %struct.dc_i2c** %132, align 8
  %133 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %134 = call i32 @dc_i2c_init_hw(%struct.dc_i2c* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %105
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %161

139:                                              ; preds = %105
  %140 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %141 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @clk_prepare_enable(i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %161

148:                                              ; preds = %139
  %149 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %150 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %149, i32 0, i32 1
  %151 = call i32 @i2c_add_adapter(%struct.TYPE_9__* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %156 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @clk_disable_unprepare(i32 %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %154, %146, %137, %103, %89, %79, %59, %19
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.dc_i2c* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dc_i2c*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i32, %struct.dc_i2c*) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @dc_i2c_init_hw(%struct.dc_i2c*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
