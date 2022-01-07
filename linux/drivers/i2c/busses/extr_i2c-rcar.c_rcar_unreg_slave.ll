; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_unreg_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_unreg_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rcar_i2c_priv = type { i32*, i32 }

@ICSIER = common dso_local global i32 0, align 4
@ICSCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rcar_unreg_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_unreg_slave(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.rcar_i2c_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.rcar_i2c_priv* @i2c_get_adapdata(i32 %6)
  store %struct.rcar_i2c_priv* %7, %struct.rcar_i2c_priv** %3, align 8
  %8 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %16 = load i32, i32* @ICSIER, align 4
  %17 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %15, i32 %16, i32 0)
  %18 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %19 = load i32, i32* @ICSCR, align 4
  %20 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %18, i32 %19, i32 0)
  %21 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @synchronize_irq(i32 %23)
  %25 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %28 = call i32 @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv* %27)
  %29 = call i32 @pm_runtime_put(i32 %28)
  ret i32 0
}

declare dso_local %struct.rcar_i2c_priv* @i2c_get_adapdata(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcar_i2c_write(%struct.rcar_i2c_priv*, i32, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
