; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_create_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_create_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scx200_acb_iface = type { i32, %struct.i2c_adapter }
%struct.i2c_adapter = type { i32, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s ACB%d\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@scx200_acb_algorithm = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scx200_acb_iface* (i8*, %struct.device*, i32)* @scx200_create_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scx200_acb_iface* @scx200_create_iface(i8* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.scx200_acb_iface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scx200_acb_iface*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.scx200_acb_iface* @kzalloc(i32 40, i32 %10)
  store %struct.scx200_acb_iface* %11, %struct.scx200_acb_iface** %8, align 8
  %12 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %8, align 8
  %13 = icmp ne %struct.scx200_acb_iface* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.scx200_acb_iface* null, %struct.scx200_acb_iface** %4, align 8
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %8, align 8
  %17 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %16, i32 0, i32 1
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %9, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %19 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %8, align 8
  %20 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %18, %struct.scx200_acb_iface* %19)
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %22 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %31 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %30, i32 0, i32 2
  store i32* @scx200_acb_algorithm, i32** %31, align 8
  %32 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %33 = load i32, i32* @I2C_CLASS_SPD, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.device* %37, %struct.device** %40, align 8
  %41 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %8, align 8
  %42 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %41, i32 0, i32 0
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %8, align 8
  store %struct.scx200_acb_iface* %44, %struct.scx200_acb_iface** %4, align 8
  br label %45

45:                                               ; preds = %15, %14
  %46 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %4, align 8
  ret %struct.scx200_acb_iface* %46
}

declare dso_local %struct.scx200_acb_iface* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.scx200_acb_iface*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
