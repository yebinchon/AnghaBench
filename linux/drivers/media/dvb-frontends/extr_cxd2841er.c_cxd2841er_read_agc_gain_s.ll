; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2841er.c_cxd2841er_read_agc_gain_s.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2841er.c_cxd2841er_read_agc_gain_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2841er_priv = type { i32 }

@I2C_SLVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2841er_priv*)* @cxd2841er_read_agc_gain_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2841er_read_agc_gain_s(%struct.cxd2841er_priv* %0) #0 {
  %2 = alloca %struct.cxd2841er_priv*, align 8
  %3 = alloca [2 x i32], align 4
  store %struct.cxd2841er_priv* %0, %struct.cxd2841er_priv** %2, align 8
  %4 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %2, align 8
  %5 = load i32, i32* @I2C_SLVT, align 4
  %6 = call i32 @cxd2841er_write_reg(%struct.cxd2841er_priv* %4, i32 %5, i32 0, i32 160)
  %7 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %2, align 8
  %8 = load i32, i32* @I2C_SLVT, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %10 = call i32 @cxd2841er_read_regs(%struct.cxd2841er_priv* %7, i32 %8, i32 31, i32* %9, i32 2)
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 31
  %14 = shl i32 %13, 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 255
  %18 = or i32 %14, %17
  %19 = shl i32 %18, 3
  ret i32 %19
}

declare dso_local i32 @cxd2841er_write_reg(%struct.cxd2841er_priv*, i32, i32, i32) #1

declare dso_local i32 @cxd2841er_read_regs(%struct.cxd2841er_priv*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
