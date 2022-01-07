; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_demux_pinctrl_priv* }
%struct.i2c_demux_pinctrl_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_adapter* }
%struct.i2c_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_demux_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_demux_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_demux_pinctrl_priv*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 0
  %11 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %10, align 8
  store %struct.i2c_demux_pinctrl_priv* %11, %struct.i2c_demux_pinctrl_priv** %7, align 8
  %12 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %7, align 8
  %13 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %7, align 8
  %16 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %19, align 8
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %8, align 8
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %22 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @__i2c_transfer(%struct.i2c_adapter* %21, %struct.i2c_msg* %22, i32 %23)
  ret i32 %24
}

declare dso_local i32 @__i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
