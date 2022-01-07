; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_cec_enamods.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_cec_enamods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32 }

@REG_CEC_ENAMODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*, i32, i32)* @cec_enamods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_enamods(%struct.tda998x_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tda998x_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %9 = load i32, i32* @REG_CEC_ENAMODS, align 4
  %10 = call i32 @cec_read(%struct.tda998x_priv* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %31

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %26

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %28 = load i32, i32* @REG_CEC_ENAMODS, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @cec_write(%struct.tda998x_priv* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %13
  ret void
}

declare dso_local i32 @cec_read(%struct.tda998x_priv*, i32) #1

declare dso_local i32 @cec_write(%struct.tda998x_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
