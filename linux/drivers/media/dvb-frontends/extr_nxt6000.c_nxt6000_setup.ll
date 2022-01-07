; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.nxt6000_state* }
%struct.nxt6000_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RS_COR_SYNC_PARAM = common dso_local global i32 0, align 4
@SYNC_PARAM = common dso_local global i32 0, align 4
@BER_CTRL = common dso_local global i32 0, align 4
@VIT_BERTIME_2 = common dso_local global i32 0, align 4
@VIT_BERTIME_1 = common dso_local global i32 0, align 4
@VIT_BERTIME_0 = common dso_local global i32 0, align 4
@VIT_COR_INTEN = common dso_local global i32 0, align 4
@VIT_COR_CTL = common dso_local global i32 0, align 4
@VIT_COR_RESYNC = common dso_local global i32 0, align 4
@OFDM_COR_CTL = common dso_local global i32 0, align 4
@OFDM_COR_MODEGUARD = common dso_local global i32 0, align 4
@FORCEMODE8K = common dso_local global i32 0, align 4
@OFDM_AGC_CTL = common dso_local global i32 0, align 4
@AGCLAST = common dso_local global i32 0, align 4
@INITIAL_AGC_BW = common dso_local global i32 0, align 4
@OFDM_ITB_FREQ_1 = common dso_local global i32 0, align 4
@OFDM_ITB_FREQ_2 = common dso_local global i32 0, align 4
@OFDM_CAS_CTL = common dso_local global i32 0, align 4
@CAS_FREQ = common dso_local global i32 0, align 4
@OFDM_SYR_CTL = common dso_local global i32 0, align 4
@OFDM_PPM_CTL_1 = common dso_local global i32 0, align 4
@PPM256 = common dso_local global i32 0, align 4
@OFDM_TRL_NOMINALRATE_1 = common dso_local global i32 0, align 4
@OFDM_TRL_NOMINALRATE_2 = common dso_local global i32 0, align 4
@ANALOG_CONTROL_0 = common dso_local global i32 0, align 4
@EN_DMD_RACQ = common dso_local global i32 0, align 4
@DIAG_CONFIG = common dso_local global i32 0, align 4
@TB_SET = common dso_local global i32 0, align 4
@SUB_DIAG_MODE_SEL = common dso_local global i32 0, align 4
@CLKINVERSION = common dso_local global i32 0, align 4
@TS_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @nxt6000_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nxt6000_setup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.nxt6000_state*, %struct.nxt6000_state** %5, align 8
  store %struct.nxt6000_state* %6, %struct.nxt6000_state** %3, align 8
  %7 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %8 = load i32, i32* @RS_COR_SYNC_PARAM, align 4
  %9 = load i32, i32* @SYNC_PARAM, align 4
  %10 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %7, i32 %8, i32 %9)
  %11 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %12 = load i32, i32* @BER_CTRL, align 4
  %13 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %11, i32 %12, i32 3)
  %14 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %15 = load i32, i32* @VIT_BERTIME_2, align 4
  %16 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %14, i32 %15, i32 0)
  %17 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %18 = load i32, i32* @VIT_BERTIME_1, align 4
  %19 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %17, i32 %18, i32 2)
  %20 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %21 = load i32, i32* @VIT_BERTIME_0, align 4
  %22 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %20, i32 %21, i32 0)
  %23 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %24 = load i32, i32* @VIT_COR_INTEN, align 4
  %25 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %23, i32 %24, i32 152)
  %26 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %27 = load i32, i32* @VIT_COR_CTL, align 4
  %28 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %26, i32 %27, i32 130)
  %29 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %30 = load i32, i32* @VIT_COR_CTL, align 4
  %31 = load i32, i32* @VIT_COR_RESYNC, align 4
  %32 = or i32 %31, 2
  %33 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %29, i32 %30, i32 %32)
  %34 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %35 = load i32, i32* @OFDM_COR_CTL, align 4
  %36 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %37 = load i32, i32* @OFDM_COR_CTL, align 4
  %38 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %36, i32 %37)
  %39 = and i32 %38, 15
  %40 = or i32 32, %39
  %41 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %34, i32 %35, i32 %40)
  %42 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %43 = load i32, i32* @OFDM_COR_MODEGUARD, align 4
  %44 = load i32, i32* @FORCEMODE8K, align 4
  %45 = or i32 %44, 2
  %46 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %42, i32 %43, i32 %45)
  %47 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %48 = load i32, i32* @OFDM_AGC_CTL, align 4
  %49 = load i32, i32* @AGCLAST, align 4
  %50 = load i32, i32* @INITIAL_AGC_BW, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %47, i32 %48, i32 %51)
  %53 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %54 = load i32, i32* @OFDM_ITB_FREQ_1, align 4
  %55 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %53, i32 %54, i32 6)
  %56 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %57 = load i32, i32* @OFDM_ITB_FREQ_2, align 4
  %58 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %56, i32 %57, i32 49)
  %59 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %60 = load i32, i32* @OFDM_CAS_CTL, align 4
  %61 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %59, i32 %60, i32 148)
  %62 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %63 = load i32, i32* @CAS_FREQ, align 4
  %64 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %62, i32 %63, i32 187)
  %65 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %66 = load i32, i32* @OFDM_SYR_CTL, align 4
  %67 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %65, i32 %66, i32 4)
  %68 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %69 = load i32, i32* @OFDM_PPM_CTL_1, align 4
  %70 = load i32, i32* @PPM256, align 4
  %71 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %68, i32 %69, i32 %70)
  %72 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %73 = load i32, i32* @OFDM_TRL_NOMINALRATE_1, align 4
  %74 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %72, i32 %73, i32 73)
  %75 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %76 = load i32, i32* @OFDM_TRL_NOMINALRATE_2, align 4
  %77 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %75, i32 %76, i32 114)
  %78 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %79 = load i32, i32* @ANALOG_CONTROL_0, align 4
  %80 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %78, i32 %79, i32 32)
  %81 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %82 = load i32, i32* @EN_DMD_RACQ, align 4
  %83 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %81, i32 %82, i32 178)
  %84 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %85 = load i32, i32* @DIAG_CONFIG, align 4
  %86 = load i32, i32* @TB_SET, align 4
  %87 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %84, i32 %85, i32 %86)
  %88 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %89 = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %1
  %95 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %96 = load i32, i32* @SUB_DIAG_MODE_SEL, align 4
  %97 = load i32, i32* @CLKINVERSION, align 4
  %98 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %95, i32 %96, i32 %97)
  br label %103

99:                                               ; preds = %1
  %100 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %101 = load i32, i32* @SUB_DIAG_MODE_SEL, align 4
  %102 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %100, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %105 = load i32, i32* @TS_FORMAT, align 4
  %106 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %104, i32 %105, i32 0)
  ret void
}

declare dso_local i32 @nxt6000_writereg(%struct.nxt6000_state*, i32, i32) #1

declare dso_local i32 @nxt6000_readreg(%struct.nxt6000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
