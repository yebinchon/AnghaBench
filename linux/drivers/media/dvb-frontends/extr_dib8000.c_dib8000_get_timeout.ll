; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@SYMBOL_DEPENDENT_ON = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dib8000_state*, i32, i32)* @dib8000_get_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dib8000_get_timeout(%struct.dib8000_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SYMBOL_DEPENDENT_ON, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %12 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 100
  %20 = call i64 @usecs_to_jiffies(i32 %19)
  %21 = add i64 %17, %20
  ret i64 %21
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
