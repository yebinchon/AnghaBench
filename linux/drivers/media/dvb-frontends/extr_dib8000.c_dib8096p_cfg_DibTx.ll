; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_cfg_DibTx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_cfg_DibTx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Configure DibStream Tx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, i32, i32, i32, i32, i32, i32)* @dib8096p_cfg_DibTx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8096p_cfg_DibTx(%struct.dib8000_state* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.dib8000_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  %17 = call i32 @dib8000_write_word(%struct.dib8000_state* %16, i32 1615, i32 1)
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @dib8000_write_word(%struct.dib8000_state* %18, i32 1603, i32 %19)
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @dib8000_write_word(%struct.dib8000_state* %21, i32 1605, i32 %22)
  %24 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @dib8000_write_word(%struct.dib8000_state* %24, i32 1606, i32 %25)
  %27 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @dib8000_write_word(%struct.dib8000_state* %27, i32 1608, i32 %28)
  %30 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 65535
  %34 = call i32 @dib8000_write_word(%struct.dib8000_state* %30, i32 1609, i32 %33)
  %35 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 65535
  %38 = call i32 @dib8000_write_word(%struct.dib8000_state* %35, i32 1610, i32 %37)
  %39 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @dib8000_write_word(%struct.dib8000_state* %39, i32 1612, i32 %40)
  %42 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  %43 = call i32 @dib8000_write_word(%struct.dib8000_state* %42, i32 1615, i32 0)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
