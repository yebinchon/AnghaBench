; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_set_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_set_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg216x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"%d KHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg216x_state*)* @lg216x_set_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg216x_set_if(%struct.lg216x_state* %0) #0 {
  %2 = alloca %struct.lg216x_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lg216x_state* %0, %struct.lg216x_state** %2, align 8
  %5 = load %struct.lg216x_state*, %struct.lg216x_state** %2, align 8
  %6 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @lg_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.lg216x_state*, %struct.lg216x_state** %2, align 8
  %12 = call i32 @lg216x_read_reg(%struct.lg216x_state* %11, i32 306, i32* %3)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @lg_fail(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %35

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 251
  store i32 %19, i32* %3, align 4
  %20 = load %struct.lg216x_state*, %struct.lg216x_state** %2, align 8
  %21 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 0, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 4, i32 0
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.lg216x_state*, %struct.lg216x_state** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @lg216x_write_reg(%struct.lg216x_state* %30, i32 306, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @lg_fail(i32 %33)
  br label %35

35:                                               ; preds = %17, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @lg_dbg(i8*, i64) #1

declare dso_local i32 @lg216x_read_reg(%struct.lg216x_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lg216x_write_reg(%struct.lg216x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
