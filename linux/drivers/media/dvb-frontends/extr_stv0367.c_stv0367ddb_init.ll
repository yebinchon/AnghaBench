; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0367_state = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.stv0367ter_state* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.stv0367ter_state = type { i32, i64, i64 }

@R367TER_TOPCTRL = common dso_local global i32 0, align 4
@stv0367_deftabs = common dso_local global i64** null, align 8
@STV0367_TAB_BASE = common dso_local global i64 0, align 8
@STV0367_TAB_CAB = common dso_local global i64 0, align 8
@STV0367_TAB_TER = common dso_local global i64 0, align 8
@R367TER_GAIN_SRC1 = common dso_local global i32 0, align 4
@R367TER_GAIN_SRC2 = common dso_local global i32 0, align 4
@R367TER_INC_DEROT1 = common dso_local global i32 0, align 4
@R367TER_INC_DEROT2 = common dso_local global i32 0, align 4
@R367TER_TRL_CTL = common dso_local global i32 0, align 4
@R367TER_TRL_NOMRATE1 = common dso_local global i32 0, align 4
@R367TER_TRL_NOMRATE2 = common dso_local global i32 0, align 4
@R367TER_FEPATH_CFG = common dso_local global i32 0, align 4
@R367TER_TSCFGH = common dso_local global i32 0, align 4
@R367TER_TSCFGM = common dso_local global i32 0, align 4
@R367TER_TSCFGL = common dso_local global i32 0, align 4
@R367TER_TSSPEED = common dso_local global i32 0, align 4
@R367TER_AGC12C = common dso_local global i32 0, align 4
@R367TER_AGCCTRL1 = common dso_local global i32 0, align 4
@R367CAB_OUTFORMAT_0 = common dso_local global i32 0, align 4
@R367TER_ANACTRL = common dso_local global i32 0, align 4
@STV0367_ICSPEED_58000 = common dso_local global i32 0, align 4
@R367TER_ANADIGCTRL = common dso_local global i32 0, align 4
@R367TER_DUAL_AD12 = common dso_local global i32 0, align 4
@R367CAB_FSM_SNR2_HTH = common dso_local global i32 0, align 4
@R367CAB_IQ_QAM = common dso_local global i32 0, align 4
@R367CAB_EQU_FFE_LEAKAGE = common dso_local global i32 0, align 4
@R367CAB_IQDEM_ADJ_EN = common dso_local global i32 0, align 4
@R367TER_I2CRPT = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0367_state*)* @stv0367ddb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367ddb_init(%struct.stv0367_state* %0) #0 {
  %2 = alloca %struct.stv0367_state*, align 8
  %3 = alloca %struct.stv0367ter_state*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.stv0367_state* %0, %struct.stv0367_state** %2, align 8
  %5 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %6 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %5, i32 0, i32 3
  %7 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %6, align 8
  store %struct.stv0367ter_state* %7, %struct.stv0367ter_state** %3, align 8
  %8 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %9 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %12 = load i32, i32* @R367TER_TOPCTRL, align 4
  %13 = call i32 @stv0367_writereg(%struct.stv0367_state* %11, i32 %12, i32 16)
  %14 = load i64**, i64*** @stv0367_deftabs, align 8
  %15 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %16 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64*, i64** %14, i64 %17
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @STV0367_TAB_BASE, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %26 = load i64**, i64*** @stv0367_deftabs, align 8
  %27 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %28 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64*, i64** %26, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @STV0367_TAB_BASE, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @stv0367_write_table(%struct.stv0367_state* %25, i64 %34)
  br label %36

36:                                               ; preds = %24, %1
  %37 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %38 = load i64**, i64*** @stv0367_deftabs, align 8
  %39 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %40 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64*, i64** %38, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @STV0367_TAB_CAB, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @stv0367_write_table(%struct.stv0367_state* %37, i64 %46)
  %48 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %49 = load i32, i32* @R367TER_TOPCTRL, align 4
  %50 = call i32 @stv0367_writereg(%struct.stv0367_state* %48, i32 %49, i32 0)
  %51 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %52 = load i64**, i64*** @stv0367_deftabs, align 8
  %53 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %54 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64*, i64** %52, i64 %55
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @STV0367_TAB_TER, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @stv0367_write_table(%struct.stv0367_state* %51, i64 %60)
  %62 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %63 = load i32, i32* @R367TER_GAIN_SRC1, align 4
  %64 = call i32 @stv0367_writereg(%struct.stv0367_state* %62, i32 %63, i32 42)
  %65 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %66 = load i32, i32* @R367TER_GAIN_SRC2, align 4
  %67 = call i32 @stv0367_writereg(%struct.stv0367_state* %65, i32 %66, i32 214)
  %68 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %69 = load i32, i32* @R367TER_INC_DEROT1, align 4
  %70 = call i32 @stv0367_writereg(%struct.stv0367_state* %68, i32 %69, i32 85)
  %71 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %72 = load i32, i32* @R367TER_INC_DEROT2, align 4
  %73 = call i32 @stv0367_writereg(%struct.stv0367_state* %71, i32 %72, i32 85)
  %74 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %75 = load i32, i32* @R367TER_TRL_CTL, align 4
  %76 = call i32 @stv0367_writereg(%struct.stv0367_state* %74, i32 %75, i32 20)
  %77 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %78 = load i32, i32* @R367TER_TRL_NOMRATE1, align 4
  %79 = call i32 @stv0367_writereg(%struct.stv0367_state* %77, i32 %78, i32 174)
  %80 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %81 = load i32, i32* @R367TER_TRL_NOMRATE2, align 4
  %82 = call i32 @stv0367_writereg(%struct.stv0367_state* %80, i32 %81, i32 86)
  %83 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %84 = load i32, i32* @R367TER_FEPATH_CFG, align 4
  %85 = call i32 @stv0367_writereg(%struct.stv0367_state* %83, i32 %84, i32 0)
  %86 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %87 = load i32, i32* @R367TER_TSCFGH, align 4
  %88 = call i32 @stv0367_writereg(%struct.stv0367_state* %86, i32 %87, i32 112)
  %89 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %90 = load i32, i32* @R367TER_TSCFGM, align 4
  %91 = call i32 @stv0367_writereg(%struct.stv0367_state* %89, i32 %90, i32 192)
  %92 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %93 = load i32, i32* @R367TER_TSCFGL, align 4
  %94 = call i32 @stv0367_writereg(%struct.stv0367_state* %92, i32 %93, i32 32)
  %95 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %96 = load i32, i32* @R367TER_TSSPEED, align 4
  %97 = call i32 @stv0367_writereg(%struct.stv0367_state* %95, i32 %96, i32 64)
  %98 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %99 = load i32, i32* @R367TER_TSCFGH, align 4
  %100 = call i32 @stv0367_writereg(%struct.stv0367_state* %98, i32 %99, i32 113)
  %101 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %102 = load i32, i32* @R367TER_TSCFGH, align 4
  %103 = call i32 @stv0367_writereg(%struct.stv0367_state* %101, i32 %102, i32 112)
  %104 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %105 = load i32, i32* @R367TER_TOPCTRL, align 4
  %106 = call i32 @stv0367_writereg(%struct.stv0367_state* %104, i32 %105, i32 16)
  %107 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %108 = load i32, i32* @R367TER_AGC12C, align 4
  %109 = call i32 @stv0367_writereg(%struct.stv0367_state* %107, i32 %108, i32 1)
  %110 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %111 = load i32, i32* @R367TER_AGCCTRL1, align 4
  %112 = call i32 @stv0367_writereg(%struct.stv0367_state* %110, i32 %111, i32 138)
  %113 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %114 = load i32, i32* @R367CAB_OUTFORMAT_0, align 4
  %115 = call i32 @stv0367_writereg(%struct.stv0367_state* %113, i32 %114, i32 133)
  %116 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %117 = load i32, i32* @R367TER_ANACTRL, align 4
  %118 = call i32 @stv0367_writereg(%struct.stv0367_state* %116, i32 %117, i32 13)
  %119 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %120 = load i32, i32* @STV0367_ICSPEED_58000, align 4
  %121 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %122 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @stv0367_pll_setup(%struct.stv0367_state* %119, i32 %120, i32 %125)
  %127 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %128 = load i32, i32* @R367TER_ANADIGCTRL, align 4
  %129 = call i32 @stv0367_writereg(%struct.stv0367_state* %127, i32 %128, i32 139)
  %130 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %131 = load i32, i32* @R367TER_DUAL_AD12, align 4
  %132 = call i32 @stv0367_writereg(%struct.stv0367_state* %130, i32 %131, i32 4)
  %133 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %134 = load i32, i32* @R367CAB_FSM_SNR2_HTH, align 4
  %135 = call i32 @stv0367_writereg(%struct.stv0367_state* %133, i32 %134, i32 35)
  %136 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %137 = load i32, i32* @R367CAB_IQ_QAM, align 4
  %138 = call i32 @stv0367_writereg(%struct.stv0367_state* %136, i32 %137, i32 1)
  %139 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %140 = load i32, i32* @R367CAB_EQU_FFE_LEAKAGE, align 4
  %141 = call i32 @stv0367_writereg(%struct.stv0367_state* %139, i32 %140, i32 131)
  %142 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %143 = load i32, i32* @R367CAB_IQDEM_ADJ_EN, align 4
  %144 = call i32 @stv0367_writereg(%struct.stv0367_state* %142, i32 %143, i32 5)
  %145 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %146 = load i32, i32* @R367TER_ANACTRL, align 4
  %147 = call i32 @stv0367_writereg(%struct.stv0367_state* %145, i32 %146, i32 0)
  %148 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %149 = load i32, i32* @R367TER_I2CRPT, align 4
  %150 = call i32 @stv0367_writereg(%struct.stv0367_state* %148, i32 %149, i32 88)
  %151 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %3, align 8
  %152 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %151, i32 0, i32 2
  store i64 0, i64* %152, align 8
  %153 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %3, align 8
  %154 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  %155 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %3, align 8
  %156 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %155, i32 0, i32 0
  store i32 2, i32* %156, align 8
  %157 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %158 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  store i8* %160, i8** %166, align 8
  %167 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %168 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %171 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %172 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  store i8* %170, i8** %176, align 8
  %177 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %178 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  store i8* %180, i8** %186, align 8
  ret i32 0
}

declare dso_local i32 @stv0367_writereg(%struct.stv0367_state*, i32, i32) #1

declare dso_local i32 @stv0367_write_table(%struct.stv0367_state*, i64) #1

declare dso_local i32 @stv0367_pll_setup(%struct.stv0367_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
