; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg2160_tuner_pwr_save_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg2160_tuner_pwr_save_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg216x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg216x_state*, i32)* @lg2160_tuner_pwr_save_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg2160_tuner_pwr_save_polarity(%struct.lg216x_state* %0, i32 %1) #0 {
  %3 = alloca %struct.lg216x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lg216x_state* %0, %struct.lg216x_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %8 = call i32 @lg216x_read_reg(%struct.lg216x_state* %7, i32 8, i32* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @lg_fail(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 254
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @lg216x_write_reg(%struct.lg216x_state* %22, i32 8, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @lg_fail(i32 %25)
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @lg216x_read_reg(%struct.lg216x_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lg216x_write_reg(%struct.lg216x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
