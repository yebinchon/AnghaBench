; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg216x_reg = type { i32, i32 }
%struct.lg216x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@lg216x_initialize.lg2160_init = internal global [9 x %struct.lg216x_reg] [%struct.lg216x_reg { i32 21, i32 247 }, %struct.lg216x_reg { i32 27, i32 82 }, %struct.lg216x_reg { i32 520, i32 0 }, %struct.lg216x_reg { i32 521, i32 130 }, %struct.lg216x_reg { i32 528, i32 249 }, %struct.lg216x_reg { i32 522, i32 0 }, %struct.lg216x_reg { i32 523, i32 130 }, %struct.lg216x_reg { i32 525, i32 40 }, %struct.lg216x_reg { i32 527, i32 20 }], align 16
@lg216x_initialize.lg2161_init = internal global [6 x %struct.lg216x_reg] [%struct.lg216x_reg { i32 0, i32 65 }, %struct.lg216x_reg { i32 1, i32 251 }, %struct.lg216x_reg { i32 534, i32 0 }, %struct.lg216x_reg { i32 537, i32 0 }, %struct.lg216x_reg { i32 539, i32 85 }, %struct.lg216x_reg { i32 1542, i32 10 }], align 16
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg216x_state*)* @lg216x_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg216x_initialize(%struct.lg216x_state* %0) #0 {
  %2 = alloca %struct.lg216x_state*, align 8
  %3 = alloca i32, align 4
  store %struct.lg216x_state* %0, %struct.lg216x_state** %2, align 8
  %4 = load %struct.lg216x_state*, %struct.lg216x_state** %2, align 8
  %5 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %1
  %10 = load %struct.lg216x_state*, %struct.lg216x_state** %2, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.lg216x_reg* getelementptr inbounds ([9 x %struct.lg216x_reg], [9 x %struct.lg216x_reg]* @lg216x_initialize.lg2160_init, i64 0, i64 0))
  %12 = call i32 @lg216x_write_regs(%struct.lg216x_state* %10, %struct.lg216x_reg* getelementptr inbounds ([9 x %struct.lg216x_reg], [9 x %struct.lg216x_reg]* @lg216x_initialize.lg2160_init, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %3, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.lg216x_state*, %struct.lg216x_state** %2, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.lg216x_reg* getelementptr inbounds ([6 x %struct.lg216x_reg], [6 x %struct.lg216x_reg]* @lg216x_initialize.lg2161_init, i64 0, i64 0))
  %16 = call i32 @lg216x_write_regs(%struct.lg216x_state* %14, %struct.lg216x_reg* getelementptr inbounds ([6 x %struct.lg216x_reg], [6 x %struct.lg216x_reg]* @lg216x_initialize.lg2161_init, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %3, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %13, %9
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @lg_fail(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %30

25:                                               ; preds = %20
  %26 = load %struct.lg216x_state*, %struct.lg216x_state** %2, align 8
  %27 = call i32 @lg216x_soft_reset(%struct.lg216x_state* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @lg_fail(i32 %28)
  br label %30

30:                                               ; preds = %25, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @lg216x_write_regs(%struct.lg216x_state*, %struct.lg216x_reg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lg216x_reg*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lg216x_soft_reset(%struct.lg216x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
