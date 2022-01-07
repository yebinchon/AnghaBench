; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lnbh29.c_lnbh29_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lnbh29.c_lnbh29_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lnbh29_priv* }
%struct.lnbh29_priv = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@LNBH29_VSEL_0 = common dso_local global i32 0, align 4
@LNBH29_VSEL_13 = common dso_local global i32 0, align 4
@LNBH29_VSEL_18 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LNBH29_VSEL_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"LNBH29 I2C transfer error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @lnbh29_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnbh29_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lnbh29_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %11, align 8
  store %struct.lnbh29_priv* %12, %struct.lnbh29_priv** %6, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 8, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %15 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %6, align 8
  %16 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  %20 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %6, align 8
  %21 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %30 [
    i32 128, label %24
    i32 130, label %26
    i32 129, label %28
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @LNBH29_VSEL_0, align 4
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @LNBH29_VSEL_13, align 4
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @LNBH29_VSEL_18, align 4
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %80

33:                                               ; preds = %28, %26, %24
  %34 = load i32, i32* @LNBH29_VSEL_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %6, align 8
  %37 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %6, align 8
  %44 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %6, align 8
  %50 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i32 @i2c_transfer(%struct.TYPE_2__* %51, %struct.i2c_msg* %9, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %33
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %55, %33
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %6, align 8
  %66 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %80

72:                                               ; preds = %61
  %73 = call i32 @usleep_range(i32 6000, i32 20000)
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 128
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %80

77:                                               ; preds = %72
  %78 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %6, align 8
  %79 = call i32 @lnbh29_read_vmon(%struct.lnbh29_priv* %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %76, %64, %30
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @i2c_transfer(%struct.TYPE_2__*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @lnbh29_read_vmon(%struct.lnbh29_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
