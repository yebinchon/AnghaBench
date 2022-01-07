; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_btr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_btr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@BTR_CNTRL = common dso_local global i32 0, align 4
@INTRP_PHS_SENSE = common dso_local global i32 0, align 4
@BTR_ERR_ENA = common dso_local global i32 0, align 4
@STB0899_BASE_BTR_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_BTR_CNTRL = common dso_local global i32 0, align 4
@STB0899_BASE_BTR_FREQ_INIT = common dso_local global i32 0, align 4
@STB0899_OFF0_BTR_FREQ_INIT = common dso_local global i32 0, align 4
@STB0899_BASE_BTR_PHS_INIT = common dso_local global i32 0, align 4
@STB0899_OFF0_BTR_PHS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_dvbs2_btr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_dvbs2_btr_init(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %4 = load i32, i32* @STB0899_S2DEMOD, align 4
  %5 = load i32, i32* @BTR_CNTRL, align 4
  %6 = call i32 @STB0899_READ_S2REG(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @INTRP_PHS_SENSE, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @STB0899_SETFIELD_VAL(i32 %7, i32 %8, i32 1)
  %10 = load i32, i32* @BTR_ERR_ENA, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @STB0899_SETFIELD_VAL(i32 %10, i32 %11, i32 1)
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = load i32, i32* @STB0899_S2DEMOD, align 4
  %15 = load i32, i32* @STB0899_BASE_BTR_CNTRL, align 4
  %16 = load i32, i32* @STB0899_OFF0_BTR_CNTRL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %20 = load i32, i32* @STB0899_S2DEMOD, align 4
  %21 = load i32, i32* @STB0899_BASE_BTR_FREQ_INIT, align 4
  %22 = load i32, i32* @STB0899_OFF0_BTR_FREQ_INIT, align 4
  %23 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %19, i32 %20, i32 %21, i32 %22, i32 268435456)
  %24 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %25 = load i32, i32* @STB0899_S2DEMOD, align 4
  %26 = load i32, i32* @STB0899_BASE_BTR_FREQ_INIT, align 4
  %27 = load i32, i32* @STB0899_OFF0_BTR_FREQ_INIT, align 4
  %28 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %24, i32 %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %30 = load i32, i32* @STB0899_S2DEMOD, align 4
  %31 = load i32, i32* @STB0899_BASE_BTR_PHS_INIT, align 4
  %32 = load i32, i32* @STB0899_OFF0_BTR_PHS_INIT, align 4
  %33 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %29, i32 %30, i32 %31, i32 %32, i32 268435456)
  %34 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %35 = load i32, i32* @STB0899_S2DEMOD, align 4
  %36 = load i32, i32* @STB0899_BASE_BTR_PHS_INIT, align 4
  %37 = load i32, i32* @STB0899_OFF0_BTR_PHS_INIT, align 4
  %38 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %34, i32 %35, i32 %36, i32 %37, i32 0)
  ret void
}

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
