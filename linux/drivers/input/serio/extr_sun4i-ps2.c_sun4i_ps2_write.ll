; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.sun4i_ps2data* }
%struct.sun4i_ps2data = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@PS2_REG_FSTS = common dso_local global i64 0, align 8
@PS2_FSTS_TXRDY = common dso_local global i32 0, align 4
@PS2_REG_DATA = common dso_local global i64 0, align 8
@SERIO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @sun4i_ps2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_ps2_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.sun4i_ps2data*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load i64, i64* @jiffies, align 8
  %9 = call i64 @msecs_to_jiffies(i32 10000)
  %10 = add i64 %8, %9
  store i64 %10, i64* %6, align 8
  %11 = load %struct.serio*, %struct.serio** %4, align 8
  %12 = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 0
  %13 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %12, align 8
  store %struct.sun4i_ps2data* %13, %struct.sun4i_ps2data** %7, align 8
  br label %14

14:                                               ; preds = %33, %2
  %15 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %7, align 8
  %16 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PS2_REG_FSTS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @PS2_FSTS_TXRDY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load i8, i8* %5, align 1
  %26 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %7, align 8
  %27 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PS2_REG_DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i8 zeroext %25, i64 %30)
  store i32 0, i32* %3, align 4
  br label %40

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @time_before(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %14, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @SERIO_TIMEOUT, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
