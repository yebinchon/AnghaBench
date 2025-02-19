; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cxd2820r_priv = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @cxd2820r_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2820r_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cxd2820r_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.cxd2820r_priv* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.cxd2820r_priv* %5, %struct.cxd2820r_priv** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %3, align 8
  %10 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regmap_exit(i32 %13)
  %15 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %3, align 8
  %16 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @i2c_unregister_device(i32 %19)
  %21 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %3, align 8
  %22 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regmap_exit(i32 %25)
  %27 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %3, align 8
  %28 = call i32 @kfree(%struct.cxd2820r_priv* %27)
  ret i32 0
}

declare dso_local %struct.cxd2820r_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @regmap_exit(i32) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.cxd2820r_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
