; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_update_lna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_update_lna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*)* @dib8000_update_lna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_update_lna(%struct.dib8000_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  %5 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %6 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64 (i32, i32)*, i64 (i32, i32)** %7, align 8
  %9 = icmp ne i64 (i32, i32)* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %12 = call i32 @dib8000_read_word(%struct.dib8000_state* %11, i32 390)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %14 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (i32, i32)*, i64 (i32, i32)** %15, align 8
  %17 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %18 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 %16(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %27 = call i32 @dib8000_restart_agc(%struct.dib8000_state* %26)
  store i32 1, i32* %2, align 4
  br label %30

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28, %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_restart_agc(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
