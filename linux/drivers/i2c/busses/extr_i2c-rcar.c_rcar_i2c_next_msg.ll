; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_next_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_next_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i32, i32, i32 }

@ID_P_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_i2c_priv*)* @rcar_i2c_next_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_i2c_next_msg(%struct.rcar_i2c_priv* %0) #0 {
  %2 = alloca %struct.rcar_i2c_priv*, align 8
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %2, align 8
  %3 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %4 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %8 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @ID_P_MASK, align 4
  %12 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %13 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %17 = call i32 @rcar_i2c_prepare_msg(%struct.rcar_i2c_priv* %16)
  ret void
}

declare dso_local i32 @rcar_i2c_prepare_msg(%struct.rcar_i2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
