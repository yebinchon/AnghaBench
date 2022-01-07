; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_deactivate_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_deactivate_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_demux_pinctrl_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_demux_pinctrl_priv*)* @i2c_demux_deactivate_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_demux_deactivate_master(%struct.i2c_demux_pinctrl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_demux_pinctrl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_demux_pinctrl_priv* %0, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %6 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %13, i32 0, i32 2
  %15 = call i32 @i2c_del_adapter(i32* %14)
  %16 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @i2c_put_adapter(i32* %23)
  %25 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @of_changeset_revert(i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %12, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @i2c_put_adapter(i32*) #1

declare dso_local i32 @of_changeset_revert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
