; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2841er.c_cxd2841er_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2841er.c_cxd2841er_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2841er_priv = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i64, i32, i64*, i32 }

@I2C_SLVX = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: i2c rd failed=%d addr=%02x reg=%02x\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2841er_priv*, i64, i64, i64*, i32)* @cxd2841er_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2841er_read_regs(%struct.cxd2841er_priv* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2841er_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.cxd2841er_priv* %0, %struct.cxd2841er_priv** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @I2C_SLVX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %20 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  br label %26

22:                                               ; preds = %5
  %23 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %24 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i64 [ %21, %18 ], [ %25, %22 ]
  store i64 %27, i64* %13, align 8
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i64, i64* %13, align 8
  store i64 %30, i64* %29, align 16
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  store i64* %9, i64** %32, align 16
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 3
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i64 1
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  %36 = load i64, i64* %13, align 8
  store i64 %36, i64* %35, align 16
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 2
  %40 = load i64*, i64** %10, align 8
  store i64* %40, i64** %39, align 16
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 3
  %42 = load i32, i32* @I2C_M_RD, align 4
  store i32 %42, i32* %41, align 8
  %43 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %44 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %47 = call i32 @i2c_transfer(%struct.TYPE_2__* %45, %struct.i2c_msg* %46, i32 2)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %26
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %50, %26
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %61 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* @KBUILD_MODNAME, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i64 %66, i64 %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %77

70:                                               ; preds = %56
  %71 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @cxd2841er_i2c_debug(%struct.cxd2841er_priv* %71, i64 %72, i64 %73, i32 0, i64* %74, i32 %75)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %70, %59
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @i2c_transfer(%struct.TYPE_2__*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @cxd2841er_i2c_debug(%struct.cxd2841er_priv*, i64, i64, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
