; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.meson_i2c = type { i32, %struct.TYPE_12__, i32, %struct.meson_i2c_data*, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.meson_i2c*, %struct.TYPE_10__, i32*, i32, i32 }
%struct.TYPE_10__ = type { %struct.device_node*, %struct.TYPE_11__* }
%struct.meson_i2c_data = type { i32 }
%struct.resource = type { i32 }
%struct.i2c_timings = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't get device clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"can't find IRQ\0A\00", align 1
@meson_i2c_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"can't request IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"can't prepare clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Meson I2C adapter\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@meson_i2c_algorithm = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i32 0, align 4
@REG_CTRL_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.meson_i2c*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.i2c_timings, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.meson_i2c* @devm_kzalloc(%struct.TYPE_11__* %15, i32 80, i32 %16)
  store %struct.meson_i2c* %17, %struct.meson_i2c** %5, align 8
  %18 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %19 = icmp ne %struct.meson_i2c* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %168

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @i2c_parse_fw_timings(%struct.TYPE_11__* %25, %struct.i2c_timings* %7, i32 1)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %30 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %29, i32 0, i32 6
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.meson_i2c* %32)
  %34 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %35 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %34, i32 0, i32 5
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %38 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %37, i32 0, i32 4
  %39 = call i32 @init_completion(i32* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i64 @of_device_get_match_data(%struct.TYPE_11__* %41)
  %43 = inttoptr i64 %42 to %struct.meson_i2c_data*
  %44 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %45 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %44, i32 0, i32 3
  store %struct.meson_i2c_data* %43, %struct.meson_i2c_data** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @devm_clk_get(%struct.TYPE_11__* %47, i32* null)
  %49 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %50 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %52 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %23
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_11__* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %61 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %168

64:                                               ; preds = %23
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_MEM, align 4
  %67 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 0)
  store %struct.resource* %67, %struct.resource** %6, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = call i32 @devm_ioremap_resource(%struct.TYPE_11__* %69, %struct.resource* %70)
  %72 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %73 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %75 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %64
  %80 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %81 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %168

84:                                               ; preds = %64
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = call i32 @platform_get_irq(%struct.platform_device* %85, i32 0)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_11__* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %168

94:                                               ; preds = %84
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @meson_i2c_irq, align 4
  %99 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %100 = call i32 @devm_request_irq(%struct.TYPE_11__* %96, i32 %97, i32 %98, i32 0, i32* null, %struct.meson_i2c* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_11__* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %2, align 4
  br label %168

108:                                              ; preds = %94
  %109 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %110 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @clk_prepare(i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @dev_err(%struct.TYPE_11__* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %168

120:                                              ; preds = %108
  %121 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %122 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @strlcpy(i32 %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %126 = load i32, i32* @THIS_MODULE, align 4
  %127 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %128 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 8
  %130 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %131 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  store i32* @meson_i2c_algorithm, i32** %132, align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %136 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store %struct.TYPE_11__* %134, %struct.TYPE_11__** %138, align 8
  %139 = load %struct.device_node*, %struct.device_node** %4, align 8
  %140 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %141 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store %struct.device_node* %139, %struct.device_node** %143, align 8
  %144 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %145 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %146 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store %struct.meson_i2c* %144, %struct.meson_i2c** %147, align 8
  %148 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %149 = load i32, i32* @REG_CTRL, align 4
  %150 = load i32, i32* @REG_CTRL_START, align 4
  %151 = call i32 @meson_i2c_set_mask(%struct.meson_i2c* %148, i32 %149, i32 %150, i32 0)
  %152 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %153 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %152, i32 0, i32 1
  %154 = call i32 @i2c_add_adapter(%struct.TYPE_12__* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %120
  %158 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %159 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @clk_unprepare(i32 %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %2, align 4
  br label %168

163:                                              ; preds = %120
  %164 = load %struct.meson_i2c*, %struct.meson_i2c** %5, align 8
  %165 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %7, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @meson_i2c_set_clk_div(%struct.meson_i2c* %164, i32 %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %163, %157, %115, %103, %89, %79, %56, %20
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.meson_i2c* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @i2c_parse_fw_timings(%struct.TYPE_11__*, %struct.i2c_timings*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_i2c*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i32*, %struct.meson_i2c*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @meson_i2c_set_mask(%struct.meson_i2c*, i32, i32, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @meson_i2c_set_clk_div(%struct.meson_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
