; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-simtec.c_simtec_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-simtec.c_simtec_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.simtec_i2c_data = type { %struct.TYPE_7__*, i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.simtec_i2c_data* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot find IO resource\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cannot request IO\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cannot map IO\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Simtec I2C\00", align 1
@simtec_i2c_setsda = common dso_local global i32 0, align 4
@simtec_i2c_setscl = common dso_local global i32 0, align 4
@simtec_i2c_getsda = common dso_local global i32 0, align 4
@simtec_i2c_getscl = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @simtec_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simtec_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.simtec_i2c_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.simtec_i2c_data* @kzalloc(i32 80, i32 %8)
  store %struct.simtec_i2c_data* %9, %struct.simtec_i2c_data** %4, align 8
  %10 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %11 = icmp eq %struct.simtec_i2c_data* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %143

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.simtec_i2c_data* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = icmp eq %struct.resource* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %139

30:                                               ; preds = %15
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = call i32 @resource_size(%struct.resource* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_7__* @request_mem_region(i32 %35, i32 %36, i32 %39)
  %41 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %42 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %41, i32 0, i32 0
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %42, align 8
  %43 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %44 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp eq %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %30
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %139

53:                                               ; preds = %30
  %54 = load %struct.resource*, %struct.resource** %5, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32* @ioremap(i32 %56, i32 %57)
  %59 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %60 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %62 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %131

71:                                               ; preds = %53
  %72 = load i32, i32* @THIS_MODULE, align 4
  %73 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %74 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %77 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %76, i32 0, i32 3
  %78 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %79 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %84 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32* %82, i32** %86, align 8
  %87 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %88 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @strlcpy(i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %92 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %93 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %94 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 6
  store %struct.simtec_i2c_data* %92, %struct.simtec_i2c_data** %95, align 8
  %96 = load i32, i32* @simtec_i2c_setsda, align 4
  %97 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %98 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @simtec_i2c_setscl, align 4
  %101 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %102 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @simtec_i2c_getsda, align 4
  %105 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %106 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @simtec_i2c_getscl, align 4
  %109 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %110 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* @HZ, align 4
  %113 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %114 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %117 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 20, i32* %118, align 8
  %119 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %120 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %119, i32 0, i32 2
  %121 = call i32 @i2c_bit_add_bus(%struct.TYPE_8__* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %71
  br label %126

125:                                              ; preds = %71
  store i32 0, i32* %2, align 4
  br label %143

126:                                              ; preds = %124
  %127 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %128 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @iounmap(i32* %129)
  br label %131

131:                                              ; preds = %126, %65
  %132 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %133 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @release_mem_region(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %131, %47, %24
  %140 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %141 = call i32 @kfree(%struct.simtec_i2c_data* %140)
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %139, %125, %12
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.simtec_i2c_data* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.simtec_i2c_data*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.TYPE_7__* @request_mem_region(i32, i32, i32) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_8__*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.simtec_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
