; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cpm.c_cpm_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cpm.c_cpm_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.cpm_i2c = type { %struct.TYPE_8__, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cpm_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"Unable to init hardware\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"linux,i2c-index\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"hw routines for %s registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpm_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpm_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpm_i2c*, align 8
  %7 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cpm_i2c* @kzalloc(i32 32, i32 %8)
  store %struct.cpm_i2c* %9, %struct.cpm_i2c** %6, align 8
  %10 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %11 = icmp ne %struct.cpm_i2c* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %93

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %18 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %17, i32 0, i32 1
  store %struct.platform_device* %16, %struct.platform_device** %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.cpm_i2c* %20)
  %22 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %23 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %22, i32 0, i32 0
  %24 = bitcast %struct.TYPE_8__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_8__* @cpm_ops to i8*), i64 24, i1 false)
  %25 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %26 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %25, i32 0, i32 0
  %27 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %28 = call i32 @i2c_set_adapdata(%struct.TYPE_8__* %26, %struct.cpm_i2c* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %32 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @of_node_get(i32 %38)
  %40 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %41 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %45 = call i32 @cpm_i2c_setup(%struct.cpm_i2c* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %15
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(%struct.TYPE_9__* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %89

52:                                               ; preds = %15
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @of_get_property(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @be32_to_cpup(i32* %64)
  br label %67

66:                                               ; preds = %60, %52
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i32 [ %65, %63 ], [ -1, %66 ]
  %69 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %70 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %73 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %72, i32 0, i32 0
  %74 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_8__* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %86

78:                                               ; preds = %67
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %82 = getelementptr inbounds %struct.cpm_i2c, %struct.cpm_i2c* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_dbg(%struct.TYPE_9__* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  store i32 0, i32* %2, align 4
  br label %93

86:                                               ; preds = %77
  %87 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %88 = call i32 @cpm_i2c_shutdown(%struct.cpm_i2c* %87)
  br label %89

89:                                               ; preds = %86, %48
  %90 = load %struct.cpm_i2c*, %struct.cpm_i2c** %6, align 8
  %91 = call i32 @kfree(%struct.cpm_i2c* %90)
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %78, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.cpm_i2c* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cpm_i2c*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_8__*, %struct.cpm_i2c*) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i32 @cpm_i2c_setup(%struct.cpm_i2c*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @cpm_i2c_shutdown(%struct.cpm_i2c*) #1

declare dso_local i32 @kfree(%struct.cpm_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
