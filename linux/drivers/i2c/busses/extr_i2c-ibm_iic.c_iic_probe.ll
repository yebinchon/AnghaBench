; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ibm_iic.c_iic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ibm_iic.c_iic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { %struct.device_node* }
%struct.ibm_iic_private = type { i32, i32*, i64, %struct.i2c_adapter, i32, i32 }
%struct.i2c_adapter = type { i32, i32, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate device data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to iomap device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"using polling mode\0A\00", align 1
@iic_force_fast = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"fast-mode\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to get bus frequency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"clckdiv = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"IBM IIC\00", align 1
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@iic_algo = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"using %s mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"fast (400 kHz)\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"standard (100 kHz)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ibm_iic_private*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ibm_iic_private* @kzalloc(i32 72, i32 %13)
  store %struct.ibm_iic_private* %14, %struct.ibm_iic_private** %5, align 8
  %15 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %16 = icmp ne %struct.ibm_iic_private* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %172

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.ibm_iic_private* %25)
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i32* @of_iomap(%struct.device_node* %27, i32 0)
  %29 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %30 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %32 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %145

41:                                               ; preds = %23
  %42 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %43 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %42, i32 0, i32 5
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %47 = call i64 @iic_request_irq(%struct.platform_device* %45, %struct.ibm_iic_private* %46)
  %48 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %49 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %51 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_warn(%struct.TYPE_7__* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %41
  %59 = load i64, i64* @iic_force_fast, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load %struct.device_node*, %struct.device_node** %4, align 8
  %63 = call i32* @of_get_property(%struct.device_node* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %58
  %66 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %67 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %61
  %69 = load %struct.device_node*, %struct.device_node** %4, align 8
  %70 = call i32* @of_get_property(%struct.device_node* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load %struct.device_node*, %struct.device_node** %4, align 8
  %75 = getelementptr inbounds %struct.device_node, %struct.device_node* %74, i32 0, i32 0
  %76 = load %struct.device_node*, %struct.device_node** %75, align 8
  %77 = call i32* @of_get_property(%struct.device_node* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_7__* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %145

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %68
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @iic_clckdiv(i32 %89)
  %91 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %92 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %96 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_dbg(%struct.TYPE_7__* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %100 = call i32 @iic_dev_init(%struct.ibm_iic_private* %99)
  %101 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %102 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %101, i32 0, i32 3
  store %struct.i2c_adapter* %102, %struct.i2c_adapter** %6, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %107, align 8
  %108 = load %struct.device_node*, %struct.device_node** %4, align 8
  %109 = call i32 @of_node_get(%struct.device_node* %108)
  %110 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %111 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %114 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @strlcpy(i32 %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %118 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %119 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %117, %struct.ibm_iic_private* %118)
  %120 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %121 = load i32, i32* @I2C_CLASS_SPD, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %124 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %126 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %125, i32 0, i32 2
  store i32* @iic_algo, i32** %126, align 8
  %127 = load i32, i32* @HZ, align 4
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %129 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %131 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %87
  br label %145

135:                                              ; preds = %87
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %139 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0)
  %144 = call i32 @dev_info(%struct.TYPE_7__* %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %143)
  store i32 0, i32* %2, align 4
  br label %172

145:                                              ; preds = %134, %80, %35
  %146 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %147 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %152 = call i32 @iic_interrupt_mode(%struct.ibm_iic_private* %151, i32 0)
  %153 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %154 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %157 = call i32 @free_irq(i64 %155, %struct.ibm_iic_private* %156)
  br label %158

158:                                              ; preds = %150, %145
  %159 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %160 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %165 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @iounmap(i32* %166)
  br label %168

168:                                              ; preds = %163, %158
  %169 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %5, align 8
  %170 = call i32 @kfree(%struct.ibm_iic_private* %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %168, %135, %17
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.ibm_iic_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ibm_iic_private*) #1

declare dso_local i32* @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @iic_request_irq(%struct.platform_device*, %struct.ibm_iic_private*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @iic_clckdiv(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @iic_dev_init(%struct.ibm_iic_private*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.ibm_iic_private*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @iic_interrupt_mode(%struct.ibm_iic_private*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.ibm_iic_private*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(%struct.ibm_iic_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
