; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_set_boost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_set_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib0090_state*, i32)* @dib0090_set_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0090_set_boost(%struct.dib0090_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dib0090_state* %0, %struct.dib0090_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %6 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 57343
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 13
  %11 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %12 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
