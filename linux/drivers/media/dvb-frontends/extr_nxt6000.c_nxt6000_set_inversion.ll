; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_set_inversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_set_inversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxt6000_state = type { i32 }

@OFDM_ITB_CTL = common dso_local global i32 0, align 4
@ITBINV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxt6000_state*, i32)* @nxt6000_set_inversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt6000_set_inversion(%struct.nxt6000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nxt6000_state*, align 8
  %5 = alloca i32, align 4
  store %struct.nxt6000_state* %0, %struct.nxt6000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %16 [
    i32 129, label %7
    i32 128, label %11
  ]

7:                                                ; preds = %2
  %8 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %9 = load i32, i32* @OFDM_ITB_CTL, align 4
  %10 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %8, i32 %9, i32 0)
  store i32 %10, i32* %3, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %13 = load i32, i32* @OFDM_ITB_CTL, align 4
  %14 = load i32, i32* @ITBINV, align 4
  %15 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %12, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %11, %7
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @nxt6000_writereg(%struct.nxt6000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
