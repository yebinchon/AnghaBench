; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-versatile.c_i2c_versatile_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-versatile.c_i2c_versatile_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.i2c_versatile* }
%struct.i2c_versatile = type { %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_9__ }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@SCL = common dso_local global i32 0, align 4
@SDA = common dso_local global i32 0, align 4
@I2C_CONTROLS = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Versatile I2C adapter\00", align 1
@i2c_versatile_algo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_versatile_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_versatile_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_versatile*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.i2c_versatile* @devm_kzalloc(%struct.TYPE_9__* %8, i32 56, i32 %9)
  store %struct.i2c_versatile* %10, %struct.i2c_versatile** %4, align 8
  %11 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %12 = icmp ne %struct.i2c_versatile* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %98

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i64 @devm_ioremap_resource(%struct.TYPE_9__* %21, %struct.resource* %22)
  %24 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @IS_ERR(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @PTR_ERR(i64 %34)
  store i32 %35, i32* %2, align 4
  br label %98

36:                                               ; preds = %16
  %37 = load i32, i32* @SCL, align 4
  %38 = load i32, i32* @SDA, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @I2C_CONTROLS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 4
  %50 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strlcpy(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 4)
  %55 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %55, i32 0, i32 1
  %57 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 1
  %62 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %74, i32 0, i32 1
  %76 = bitcast %struct.TYPE_7__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 bitcast (%struct.TYPE_7__* @i2c_versatile_algo to i8*), i64 8, i1 false)
  %77 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %78 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store %struct.i2c_versatile* %77, %struct.i2c_versatile** %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %87, i32 0, i32 0
  %89 = call i32 @i2c_bit_add_numbered_bus(%struct.TYPE_8__* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %36
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %98

94:                                               ; preds = %36
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %97 = call i32 @platform_set_drvdata(%struct.platform_device* %95, %struct.i2c_versatile* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %92, %31, %13
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.i2c_versatile* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_bit_add_numbered_bus(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_versatile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
