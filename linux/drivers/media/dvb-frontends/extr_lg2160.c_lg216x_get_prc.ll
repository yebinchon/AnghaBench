; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_get_prc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_get_prc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg216x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg216x_state*, i32*)* @lg216x_get_prc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg216x_get_prc(%struct.lg216x_state* %0, i32* %1) #0 {
  %3 = alloca %struct.lg216x_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lg216x_state* %0, %struct.lg216x_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  store i32 255, i32* %7, align 4
  %8 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %9 = call i32 @lg216x_read_reg(%struct.lg216x_state* %8, i32 293, i32* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @lg_fail(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 5
  %17 = and i32 %16, 7
  %18 = add nsw i32 %17, 1
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i32 @lg216x_read_reg(%struct.lg216x_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
