; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.sun4i_ps2data* }
%struct.sun4i_ps2data = type { i32, i64 }

@PS2_REG_GCTL = common dso_local global i64 0, align 8
@PS2_GCTL_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @sun4i_ps2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_ps2_close(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.sun4i_ps2data*, align 8
  %4 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %2, align 8
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 0
  %7 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %6, align 8
  store %struct.sun4i_ps2data* %7, %struct.sun4i_ps2data** %3, align 8
  %8 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %9 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PS2_REG_GCTL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PS2_GCTL_INTEN, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %19 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PS2_REG_GCTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %25 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @synchronize_irq(i32 %26)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
