; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.resource = type { i32 }
%struct.mtk_i2c = type { i32, %struct.i2c_adapter, %struct.TYPE_10__*, i32, i32 }
%struct.i2c_adapter = type { i32, i32, %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no clock defined\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to enable clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"clock-frequency 0 not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@mtk_i2c_algo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"clock %u kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.mtk_i2c*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mtk_i2c* @devm_kzalloc(%struct.TYPE_10__* %12, i32 64, i32 %13)
  store %struct.mtk_i2c* %14, %struct.mtk_i2c** %5, align 8
  %15 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %16 = icmp ne %struct.mtk_i2c* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %148

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %22, %struct.resource* %23)
  %25 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %26 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %148

37:                                               ; preds = %20
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @devm_clk_get(%struct.TYPE_10__* %39, i32* null)
  %41 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %42 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %53 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %2, align 4
  br label %148

56:                                               ; preds = %37
  %57 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %58 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @clk_prepare_enable(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %148

68:                                               ; preds = %56
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %72 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %71, i32 0, i32 2
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %72, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %78 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %77, i32 0, i32 0
  %79 = call i64 @of_property_read_u32(i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %83 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %82, i32 0, i32 0
  store i32 100000, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %68
  %85 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %86 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %91 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %90, i32 0, i32 2
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = call i32 @dev_warn(%struct.TYPE_10__* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %148

96:                                               ; preds = %84
  %97 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %98 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %97, i32 0, i32 1
  store %struct.i2c_adapter* %98, %struct.i2c_adapter** %6, align 8
  %99 = load i32, i32* @THIS_MODULE, align 4
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %103 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %102, i32 0, i32 3
  store i32* @mtk_i2c_algo, i32** %103, align 8
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %105 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %104, i32 0, i32 0
  store i32 3, i32* %105, align 8
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %109 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %110, align 8
  %111 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %112 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %113 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %111, %struct.mtk_i2c* %112)
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %119 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %122 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_name(%struct.TYPE_10__* %125)
  %127 = call i32 @strlcpy(i32 %123, i32 %126, i32 4)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %128, %struct.mtk_i2c* %129)
  %131 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %132 = call i32 @mtk_i2c_init(%struct.mtk_i2c* %131)
  %133 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %134 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %96
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %148

139:                                              ; preds = %96
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load %struct.mtk_i2c*, %struct.mtk_i2c** %5, align 8
  %143 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sdiv i32 %144, 1000
  %146 = call i32 @dev_info(%struct.TYPE_10__* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %139, %137, %89, %63, %48, %32, %17
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mtk_i2c* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.mtk_i2c*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_i2c*) #1

declare dso_local i32 @mtk_i2c_init(%struct.mtk_i2c*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
