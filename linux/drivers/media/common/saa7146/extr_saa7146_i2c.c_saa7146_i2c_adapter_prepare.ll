; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_i2c.c_saa7146_i2c_adapter_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_i2c.c_saa7146_i2c_adapter_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_adapter = type { i32, i32, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"bitrate: 0x%08x\0A\00", align 1
@MC1 = common dso_local global i32 0, align 4
@MASK_08 = common dso_local global i32 0, align 4
@MASK_24 = common dso_local global i32 0, align 4
@saa7146_algo = common dso_local global i32 0, align 4
@SAA7146_I2C_TIMEOUT = common dso_local global i32 0, align 4
@SAA7146_I2C_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @DEB_EE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %10 = load i32, i32* @MC1, align 4
  %11 = load i32, i32* @MASK_08, align 4
  %12 = load i32, i32* @MASK_24, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @saa7146_write(%struct.saa7146_dev* %9, i32 %10, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %17 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %19 = call i32 @saa7146_i2c_reset(%struct.saa7146_dev* %18)
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %21 = icmp ne %struct.i2c_adapter* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %3
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %25 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %24, i32 0, i32 1
  %26 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %23, i32* %25)
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %28 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 8
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 3
  store i32* @saa7146_algo, i32** %35, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @SAA7146_I2C_TIMEOUT, align 4
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @SAA7146_I2C_RETRIES, align 4
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %22, %3
  ret i32 0
}

declare dso_local i32 @DEB_EE(i8*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7146_i2c_reset(%struct.saa7146_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
