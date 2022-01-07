; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-opal.c_i2c_opal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-opal.c_i2c_opal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_adapter = type { i32, %struct.TYPE_4__, i32*, i8*, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ibm,opal-id\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Missing ibm,opal-id property !\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2c_opal_algo = common dso_local global i32 0, align 4
@i2c_opal_quirks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ibm,port-name\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"opal\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to register the i2c adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_opal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_opal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %94

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @of_property_read_u32(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %94

30:                                               ; preds = %16
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.i2c_adapter* @devm_kzalloc(%struct.TYPE_5__* %32, i32 48, i32 %33)
  store %struct.i2c_adapter* %34, %struct.i2c_adapter** %4, align 8
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %36 = icmp ne %struct.i2c_adapter* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %94

40:                                               ; preds = %30
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 4
  store i32* @i2c_opal_algo, i32** %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 2
  store i32* @i2c_opal_quirks, i32** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @of_node_get(i32 %57)
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @of_get_property(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %40
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strlcpy(i32 %72, i8* %73, i32 4)
  br label %80

75:                                               ; preds = %40
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @strlcpy(i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %80

80:                                               ; preds = %75, %69
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %83 = call i32 @platform_set_drvdata(%struct.platform_device* %81, %struct.i2c_adapter* %82)
  %84 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %85 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(%struct.TYPE_5__* %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %80
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %37, %24, %13
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.i2c_adapter* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i8* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_adapter*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
