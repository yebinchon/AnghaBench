; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i64, i32 }

@ICMIER = common dso_local global i32 0, align 4
@ICMCR = common dso_local global i32 0, align 4
@MDBS = common dso_local global i32 0, align 4
@ICMSR = common dso_local global i32 0, align 4
@ICCCR = common dso_local global i32 0, align 4
@I2C_RCAR_GEN3 = common dso_local global i64 0, align 8
@ICFBSCR = common dso_local global i32 0, align 4
@TCYC17 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_i2c_priv*)* @rcar_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_i2c_init(%struct.rcar_i2c_priv* %0) #0 {
  %2 = alloca %struct.rcar_i2c_priv*, align 8
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %2, align 8
  %3 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %4 = load i32, i32* @ICMIER, align 4
  %5 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %3, i32 %4, i32 0)
  %6 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %7 = load i32, i32* @ICMCR, align 4
  %8 = load i32, i32* @MDBS, align 4
  %9 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %6, i32 %7, i32 %8)
  %10 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %11 = load i32, i32* @ICMSR, align 4
  %12 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %10, i32 %11, i32 0)
  %13 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %14 = load i32, i32* @ICCCR, align 4
  %15 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %16 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %13, i32 %14, i32 %17)
  %19 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %20 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @I2C_RCAR_GEN3, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %26 = load i32, i32* @ICFBSCR, align 4
  %27 = load i32, i32* @TCYC17, align 4
  %28 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @rcar_i2c_write(%struct.rcar_i2c_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
