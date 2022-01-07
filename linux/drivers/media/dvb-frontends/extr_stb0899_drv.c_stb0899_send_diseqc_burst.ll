; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_send_diseqc_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_send_diseqc_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@STB0899_DISCNTRL1 = common dso_local global i32 0, align 4
@DISEQCMODE = common dso_local global i32 0, align 4
@DISPRECHARGE = common dso_local global i32 0, align 4
@STB0899_DISFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stb0899_send_diseqc_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_send_diseqc_burst(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %10, align 8
  store %struct.stb0899_state* %11, %struct.stb0899_state** %6, align 8
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %13 = call i64 @stb0899_wait_diseqc_txidle(%struct.stb0899_state* %12, i32 100)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ETIMEDOUT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %20 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %21 = call i32 @stb0899_read_reg(%struct.stb0899_state* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @DISEQCMODE, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @STB0899_SETFIELD_VAL(i32 %23, i32 %24, i32 3)
  %26 = load i32, i32* @DISPRECHARGE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @STB0899_SETFIELD_VAL(i32 %26, i32 %27, i32 1)
  %29 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %30 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @stb0899_write_reg(%struct.stb0899_state* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %42 [
    i32 129, label %34
    i32 128, label %38
  ]

34:                                               ; preds = %18
  %35 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %36 = load i32, i32* @STB0899_DISFIFO, align 4
  %37 = call i32 @stb0899_write_reg(%struct.stb0899_state* %35, i32 %36, i32 0)
  br label %42

38:                                               ; preds = %18
  %39 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %40 = load i32, i32* @STB0899_DISFIFO, align 4
  %41 = call i32 @stb0899_write_reg(%struct.stb0899_state* %39, i32 %40, i32 255)
  br label %42

42:                                               ; preds = %18, %38, %34
  %43 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %44 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %45 = call i32 @stb0899_read_reg(%struct.stb0899_state* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @DISPRECHARGE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @STB0899_SETFIELD_VAL(i32 %46, i32 %47, i32 0)
  %49 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %50 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @stb0899_write_reg(%struct.stb0899_state* %49, i32 %50, i32 %51)
  %53 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %54 = call i64 @stb0899_wait_diseqc_txidle(%struct.stb0899_state* %53, i32 100)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %42
  %60 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %61 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @stb0899_write_reg(%struct.stb0899_state* %60, i32 %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %56, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @stb0899_wait_diseqc_txidle(%struct.stb0899_state*, i32) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
