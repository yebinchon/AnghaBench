; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgdt3306a_state* }
%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ber=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @lgdt3306a_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lgdt3306a_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %8, align 8
  store %struct.lgdt3306a_state* %9, %struct.lgdt3306a_state** %5, align 8
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %5, align 8
  %12 = call i32 @read_reg(%struct.lgdt3306a_state* %11, i32 252)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 8
  %15 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %5, align 8
  %16 = call i32 @read_reg(%struct.lgdt3306a_state* %15, i32 253)
  %17 = or i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 8
  %20 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %5, align 8
  %21 = call i32 @read_reg(%struct.lgdt3306a_state* %20, i32 254)
  %22 = or i32 %19, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 8
  %25 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %5, align 8
  %26 = call i32 @read_reg(%struct.lgdt3306a_state* %25, i32 255)
  %27 = or i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dbg_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  ret i32 0
}

declare dso_local i32 @read_reg(%struct.lgdt3306a_state*, i32) #1

declare dso_local i32 @dbg_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
