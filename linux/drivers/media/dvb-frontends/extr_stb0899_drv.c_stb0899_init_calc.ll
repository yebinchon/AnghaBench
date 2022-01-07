; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_init_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_init_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64 }

@STB0899_AGC1REF = common dso_local global i32 0, align 4
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@IF_AGC_CNTRL = common dso_local global i32 0, align 4
@IF_GAIN_INIT = common dso_local global i32 0, align 4
@STB0899_BASE_IF_AGC_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_IF_AGC_CNTRL = common dso_local global i32 0, align 4
@RRC_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_init_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_init_calc(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %7 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %8 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %7, i32 0, i32 0
  store %struct.stb0899_internal* %8, %struct.stb0899_internal** %3, align 8
  %9 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %10 = load i32, i32* @STB0899_AGC1REF, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %12 = call i32 @stb0899_read_regs(%struct.stb0899_state* %9, i32 %10, i32* %11, i32 2)
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = call i32 @stb0899_get_mclk(%struct.stb0899_state* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %16 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %15, i32 0, i32 10
  store i64 0, i64* %16, align 8
  %17 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %18 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %17, i32 0, i32 9
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %21 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = sdiv i64 %23, 65536
  %25 = trunc i64 %24 to i32
  %26 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %27 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %29 = call i32 @stb0899_get_alpha(%struct.stb0899_state* %28)
  %30 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %31 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %33 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %32, i32 0, i32 2
  store i32 8154, i32* %33, align 8
  %34 = load i32, i32* @STB0899_S2DEMOD, align 4
  %35 = load i32, i32* @IF_AGC_CNTRL, align 4
  %36 = call i32 @STB0899_READ_S2REG(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @IF_GAIN_INIT, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %40 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @STB0899_SETFIELD_VAL(i32 %37, i32 %38, i32 %41)
  %43 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %44 = load i32, i32* @STB0899_S2DEMOD, align 4
  %45 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL, align 4
  %46 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @STB0899_S2DEMOD, align 4
  %50 = load i32, i32* @RRC_ALPHA, align 4
  %51 = call i32 @STB0899_READ_S2REG(i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @RRC_ALPHA, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @STB0899_GETFIELD(i32 %52, i32 %53)
  %55 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %56 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %58 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %60 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %59, i32 0, i32 3
  store i32 10, i32* %60, align 4
  %61 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %62 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %61, i32 0, i32 4
  store i32 20, i32* %62, align 8
  %63 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %64 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %63, i32 0, i32 5
  store i32 2, i32* %64, align 4
  ret void
}

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @stb0899_get_mclk(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_get_alpha(%struct.stb0899_state*) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
