; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_reg_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_reg_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.rcar_i2c_priv = type { %struct.i2c_client* }

@EBUSY = common dso_local global i32 0, align 4
@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ICSAR = common dso_local global i32 0, align 4
@ICSSR = common dso_local global i32 0, align 4
@ICSIER = common dso_local global i32 0, align 4
@SAR = common dso_local global i32 0, align 4
@SSR = common dso_local global i32 0, align 4
@ICSCR = common dso_local global i32 0, align 4
@SIE = common dso_local global i32 0, align 4
@SDBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rcar_reg_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_reg_slave(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.rcar_i2c_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.rcar_i2c_priv* @i2c_get_adapdata(i32 %7)
  store %struct.rcar_i2c_priv* %8, %struct.rcar_i2c_priv** %4, align 8
  %9 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %10 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %12 = icmp ne %struct.i2c_client* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EAFNOSUPPORT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %16
  %27 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %28 = call i32 @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv* %27)
  %29 = call i32 @pm_runtime_get_sync(i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %32 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %31, i32 0, i32 0
  store %struct.i2c_client* %30, %struct.i2c_client** %32, align 8
  %33 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %34 = load i32, i32* @ICSAR, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %33, i32 %34, i32 %37)
  %39 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %40 = load i32, i32* @ICSSR, align 4
  %41 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %39, i32 %40, i32 0)
  %42 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %43 = load i32, i32* @ICSIER, align 4
  %44 = load i32, i32* @SAR, align 4
  %45 = load i32, i32* @SSR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %42, i32 %43, i32 %46)
  %48 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %49 = load i32, i32* @ICSCR, align 4
  %50 = load i32, i32* @SIE, align 4
  %51 = load i32, i32* @SDBS, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %48, i32 %49, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %26, %23, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.rcar_i2c_priv* @i2c_get_adapdata(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @rcar_i2c_write(%struct.rcar_i2c_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
