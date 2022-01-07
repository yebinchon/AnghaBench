; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_test_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_test_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24120_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*)* @cx24120_test_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_test_rom(%struct.cx24120_state* %0) #0 {
  %2 = alloca %struct.cx24120_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cx24120_state* %0, %struct.cx24120_state** %2, align 8
  %5 = load %struct.cx24120_state*, %struct.cx24120_state** %2, align 8
  %6 = call i32 @cx24120_readreg(%struct.cx24120_state* %5, i32 253)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.cx24120_state*, %struct.cx24120_state** %2, align 8
  %12 = call i32 @cx24120_readreg(%struct.cx24120_state* %11, i32 223)
  %13 = and i32 %12, 254
  store i32 %13, i32* %4, align 4
  %14 = load %struct.cx24120_state*, %struct.cx24120_state** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cx24120_writereg(%struct.cx24120_state* %14, i32 223, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @cx24120_readreg(%struct.cx24120_state*, i32) #1

declare dso_local i32 @cx24120_writereg(%struct.cx24120_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
