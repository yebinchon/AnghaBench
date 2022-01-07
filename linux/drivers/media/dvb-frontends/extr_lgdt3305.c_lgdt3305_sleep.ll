; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgdt3305_state* }
%struct.lgdt3305_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LGDT3305_GEN_CTRL_3 = common dso_local global i32 0, align 4
@LGDT3305_GEN_CTRL_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @lgdt3305_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.lgdt3305_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %7, align 8
  store %struct.lgdt3305_state* %8, %struct.lgdt3305_state** %3, align 8
  %9 = call i32 @lg_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %11 = load i32, i32* @LGDT3305_GEN_CTRL_3, align 4
  %12 = call i32 @read_reg(%struct.lgdt3305_state* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %14 = load i32, i32* @LGDT3305_GEN_CTRL_4, align 4
  %15 = call i32 @read_reg(%struct.lgdt3305_state* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -2
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, 2
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, -2
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, -3
  store i32 %25, i32* %5, align 4
  %26 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %27 = load i32, i32* @LGDT3305_GEN_CTRL_3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %26, i32 %27, i32 %28)
  %30 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %31 = load i32, i32* @LGDT3305_GEN_CTRL_4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %30, i32 %31, i32 %32)
  ret i32 0
}

declare dso_local i32 @lg_dbg(i8*) #1

declare dso_local i32 @read_reg(%struct.lgdt3305_state*, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
