; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.platform_device = type { i32, i32 }
%struct.mlxcpld_i2c_priv = type { i32, i32, %struct.TYPE_6__, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXPLAT_CPLD_LPC_I2C_BASE_ADDR = common dso_local global i32 0, align 4
@MLXCPLD_I2C_XFER_TO = common dso_local global i32 0, align 4
@mlxcpld_i2c_adapter = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MLXCPLD_LPCI2C_CPBLTY_REG = common dso_local global i32 0, align 4
@MLXCPLD_I2C_DATA_SZ_MASK = common dso_local global i32 0, align 4
@MLXCPLD_I2C_DATA_SZ_BIT = common dso_local global i32 0, align 4
@mlxcpld_i2c_quirks_ext = common dso_local global i32 0, align 4
@MLXCPLD_I2C_SMBUS_BLK_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlxcpld_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mlxcpld_i2c_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mlxcpld_i2c_priv* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.mlxcpld_i2c_priv* %10, %struct.mlxcpld_i2c_priv** %4, align 8
  %11 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %12 = icmp ne %struct.mlxcpld_i2c_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %83

16:                                               ; preds = %1
  %17 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %17, i32 0, i32 1
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.mlxcpld_i2c_priv* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 1
  %25 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %25, i32 0, i32 4
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* @MLXPLAT_CPLD_LPC_I2C_BASE_ADDR, align 4
  %28 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @MLXCPLD_I2C_XFER_TO, align 4
  %31 = call i32 @usecs_to_jiffies(i32 %30)
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mlxcpld_i2c_adapter, i32 0, i32 3), align 8
  %32 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %33 = load i32, i32* @MLXCPLD_LPCI2C_CPBLTY_REG, align 4
  %34 = call i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv* %32, i32 %33, i32* %6, i32 1)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MLXCPLD_I2C_DATA_SZ_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @MLXCPLD_I2C_DATA_SZ_BIT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %16
  store i32* @mlxcpld_i2c_quirks_ext, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mlxcpld_i2c_adapter, i32 0, i32 2), align 8
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MLXCPLD_I2C_SMBUS_BLK_BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %48 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mlxcpld_i2c_adapter, i32 0, i32 0), align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %60 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %59, i32 0, i32 2
  %61 = bitcast %struct.TYPE_6__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 bitcast (%struct.TYPE_6__* @mlxcpld_i2c_adapter to i8*), i64 32, i1 false)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 1
  %64 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %65 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32* %63, i32** %67, align 8
  %68 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %69 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %68, i32 0, i32 2
  %70 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %71 = call i32 @i2c_set_adapdata(%struct.TYPE_6__* %69, %struct.mlxcpld_i2c_priv* %70)
  %72 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %73 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %72, i32 0, i32 2
  %74 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_6__* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %58
  %78 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %79 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %78, i32 0, i32 1
  %80 = call i32 @mutex_destroy(i32* %79)
  br label %81

81:                                               ; preds = %77, %58
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %13
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.mlxcpld_i2c_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mlxcpld_i2c_priv*) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv*, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_6__*, %struct.mlxcpld_i2c_priv*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
