; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_algo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, i32, %struct.TYPE_2__*, %struct.stb0899_internal }
%struct.TYPE_2__ = type { i32 (i32*, i64*)*, i32 (i32*, i64)* }
%struct.stb0899_internal = type { i32, i32, i64, i32, i32, i32, i32, i64 }

@STB0899_TSTRES = common dso_local global i32 0, align 4
@FRESRS = common dso_local global i32 0, align 4
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@IF_AGC_CNTRL = common dso_local global i32 0, align 4
@IF_LOOP_GAIN = common dso_local global i32 0, align 4
@IF_AGC_REF = common dso_local global i32 0, align 4
@STB0899_BASE_IF_AGC_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_IF_AGC_CNTRL = common dso_local global i32 0, align 4
@IF_AGC_CNTRL2 = common dso_local global i32 0, align 4
@IF_AGC_DUMP_PER = common dso_local global i32 0, align 4
@STB0899_BASE_IF_AGC_CNTRL2 = common dso_local global i32 0, align 4
@STB0899_OFF0_IF_AGC_CNTRL2 = common dso_local global i32 0, align 4
@DMD_CNTRL2 = common dso_local global i32 0, align 4
@SPECTRUM_INVERT = common dso_local global i32 0, align 4
@STB0899_BASE_DMD_CNTRL2 = common dso_local global i32 0, align 4
@STB0899_OFF0_DMD_CNTRL2 = common dso_local global i32 0, align 4
@DVBS2_DEMOD_LOCK = common dso_local global i64 0, align 8
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"------------> DVB-S2 DEMOD LOCK !\00", align 1
@DVBS2_FEC_LOCK = common dso_local global i64 0, align 8
@CRL_FREQ = common dso_local global i32 0, align 4
@CRL_NOM_FREQ = common dso_local global i32 0, align 4
@STB0899_BASE_CRL_NOM_FREQ = common dso_local global i32 0, align 4
@STB0899_OFF0_CRL_NOM_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"----------------> DVB-S2 FEC Lock !\00", align 1
@UWP_STAT2 = common dso_local global i32 0, align 4
@UWP_DECODE_MOD = common dso_local global i32 0, align 4
@STB0899_QPSK_23 = common dso_local global i32 0, align 4
@STB0899_QPSK_910 = common dso_local global i32 0, align 4
@CSM_CNTRL1 = common dso_local global i32 0, align 4
@CSM_TWO_PASS = common dso_local global i32 0, align 4
@STB0899_BASE_CSM_CNTRL1 = common dso_local global i32 0, align 4
@STB0899_OFF0_CSM_CNTRL1 = common dso_local global i32 0, align 4
@STB0899_QPSK_12 = common dso_local global i32 0, align 4
@STB0899_QPSK_35 = common dso_local global i32 0, align 4
@EQ_CNTRL = common dso_local global i32 0, align 4
@EQ_DISABLE_UPDATE = common dso_local global i32 0, align 4
@STB0899_BASE_EQ_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_EQ_CNTRL = common dso_local global i32 0, align 4
@EQ_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb0899_dvbs2_algo(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 3
  store %struct.stb0899_internal* %14, %struct.stb0899_internal** %3, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %16 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %17, 2000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 5000, i32* %6, align 4
  store i32 350, i32* %7, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %22 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %23, 5000000
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 2500, i32* %6, align 4
  store i32 170, i32* %7, align 4
  br label %55

26:                                               ; preds = %20
  %27 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %28 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 10000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1500, i32* %6, align 4
  store i32 80, i32* %7, align 4
  br label %54

32:                                               ; preds = %26
  %33 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %34 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 15000000
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 500, i32* %6, align 4
  store i32 50, i32* %7, align 4
  br label %53

38:                                               ; preds = %32
  %39 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %40 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sle i32 %41, 20000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 300, i32* %6, align 4
  store i32 30, i32* %7, align 4
  br label %52

44:                                               ; preds = %38
  %45 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %46 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %47, 25000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 250, i32* %6, align 4
  store i32 25, i32* %7, align 4
  br label %51

50:                                               ; preds = %44
  store i32 150, i32* %6, align 4
  store i32 20, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %43
  br label %53

53:                                               ; preds = %52, %37
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %19
  %57 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %58 = load i32, i32* @STB0899_TSTRES, align 4
  %59 = call i8* @stb0899_read_reg(%struct.stb0899_state* %57, i32 %58)
  store i8* %59, i8** %11, align 8
  %60 = load i32, i32* @FRESRS, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @STB0899_SETFIELD_VAL(i32 %60, i8* %61, i32 1)
  %63 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %64 = load i32, i32* @STB0899_TSTRES, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @stb0899_write_reg(%struct.stb0899_state* %63, i32 %64, i8* %65)
  %67 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %68 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %67, i32 0, i32 1
  %69 = call i32 @stb0899_i2c_gate_ctrl(i32* %68, i32 1)
  %70 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %71 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32 (i32*, i64)*, i32 (i32*, i64)** %73, align 8
  %75 = icmp ne i32 (i32*, i64)* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %56
  %77 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %78 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32 (i32*, i64)*, i32 (i32*, i64)** %80, align 8
  %82 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %83 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %82, i32 0, i32 1
  %84 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %85 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = call i32 %81(i32* %83, i64 %86)
  br label %88

88:                                               ; preds = %76, %56
  %89 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %90 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %92, align 8
  %94 = icmp ne i32 (i32*, i64*)* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %97 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %99, align 8
  %101 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %102 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %101, i32 0, i32 1
  %103 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %104 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %103, i32 0, i32 7
  %105 = call i32 %100(i32* %102, i64* %104)
  br label %106

106:                                              ; preds = %95, %88
  %107 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %108 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %107, i32 0, i32 1
  %109 = call i32 @stb0899_i2c_gate_ctrl(i32* %108, i32 0)
  %110 = load i32, i32* @STB0899_S2DEMOD, align 4
  %111 = load i32, i32* @IF_AGC_CNTRL, align 4
  %112 = call i8* @STB0899_READ_S2REG(i32 %110, i32 %111)
  store i8* %112, i8** %11, align 8
  %113 = load i32, i32* @IF_LOOP_GAIN, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @STB0899_SETFIELD_VAL(i32 %113, i8* %114, i32 4)
  %116 = load i32, i32* @IF_AGC_REF, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @STB0899_SETFIELD_VAL(i32 %116, i8* %117, i32 32)
  %119 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %120 = load i32, i32* @STB0899_S2DEMOD, align 4
  %121 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL, align 4
  %122 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL, align 4
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %119, i32 %120, i32 %121, i32 %122, i8* %123)
  %125 = load i32, i32* @STB0899_S2DEMOD, align 4
  %126 = load i32, i32* @IF_AGC_CNTRL2, align 4
  %127 = call i8* @STB0899_READ_S2REG(i32 %125, i32 %126)
  store i8* %127, i8** %11, align 8
  %128 = load i32, i32* @IF_AGC_DUMP_PER, align 4
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @STB0899_SETFIELD_VAL(i32 %128, i8* %129, i32 0)
  %131 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %132 = load i32, i32* @STB0899_S2DEMOD, align 4
  %133 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL2, align 4
  %134 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL2, align 4
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %131, i32 %132, i32 %133, i32 %134, i8* %135)
  %137 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %138 = call i32 @stb0899_dvbs2_init_calc(%struct.stb0899_state* %137)
  %139 = load i32, i32* @STB0899_S2DEMOD, align 4
  %140 = load i32, i32* @DMD_CNTRL2, align 4
  %141 = call i8* @STB0899_READ_S2REG(i32 %139, i32 %140)
  store i8* %141, i8** %11, align 8
  %142 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %143 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %153 [
    i32 129, label %145
    i32 128, label %149
  ]

145:                                              ; preds = %106
  %146 = load i32, i32* @SPECTRUM_INVERT, align 4
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @STB0899_SETFIELD_VAL(i32 %146, i8* %147, i32 0)
  br label %153

149:                                              ; preds = %106
  %150 = load i32, i32* @SPECTRUM_INVERT, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @STB0899_SETFIELD_VAL(i32 %150, i8* %151, i32 1)
  br label %153

153:                                              ; preds = %106, %149, %145
  %154 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %155 = load i32, i32* @STB0899_S2DEMOD, align 4
  %156 = load i32, i32* @STB0899_BASE_DMD_CNTRL2, align 4
  %157 = load i32, i32* @STB0899_OFF0_DMD_CNTRL2, align 4
  %158 = load i8*, i8** %11, align 8
  %159 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %154, i32 %155, i32 %156, i32 %157, i8* %158)
  %160 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %161 = call i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state* %160)
  %162 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i8* @stb0899_dvbs2_get_dmd_status(%struct.stb0899_state* %162, i32 %163)
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %167 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %169 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @DVBS2_DEMOD_LOCK, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %225

173:                                              ; preds = %153
  %174 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %175 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @FE_DEBUG, align 4
  %178 = call i32 @dprintk(i32 %176, i32 %177, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  %179 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %179, i32 %180)
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %184 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %183, i32 0, i32 2
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %196, %173
  %186 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %187 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* %10, align 4
  %193 = icmp slt i32 %192, 3
  br label %194

194:                                              ; preds = %191, %185
  %195 = phi i1 [ false, %185 ], [ %193, %191 ]
  br i1 %195, label %196, label %224

196:                                              ; preds = %194
  %197 = load i32, i32* @STB0899_S2DEMOD, align 4
  %198 = load i32, i32* @CRL_FREQ, align 4
  %199 = call i8* @STB0899_READ_S2REG(i32 %197, i32 %198)
  %200 = ptrtoint i8* %199 to i32
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* @STB0899_S2DEMOD, align 4
  %202 = load i32, i32* @CRL_NOM_FREQ, align 4
  %203 = call i8* @STB0899_READ_S2REG(i32 %201, i32 %202)
  store i8* %203, i8** %11, align 8
  %204 = load i32, i32* @CRL_NOM_FREQ, align 4
  %205 = load i8*, i8** %11, align 8
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @STB0899_SETFIELD_VAL(i32 %204, i8* %205, i32 %206)
  %208 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %209 = load i32, i32* @STB0899_S2DEMOD, align 4
  %210 = load i32, i32* @STB0899_BASE_CRL_NOM_FREQ, align 4
  %211 = load i32, i32* @STB0899_OFF0_CRL_NOM_FREQ, align 4
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %208, i32 %209, i32 %210, i32 %211, i8* %212)
  %214 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %215 = call i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state* %214)
  %216 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %217 = load i32, i32* %6, align 4
  %218 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %216, i32 %217)
  %219 = ptrtoint i8* %218 to i64
  %220 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %221 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %220, i32 0, i32 2
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %185

224:                                              ; preds = %194
  br label %225

225:                                              ; preds = %224, %153
  %226 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %227 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %312

231:                                              ; preds = %225
  %232 = load i32, i32* @STB0899_S2DEMOD, align 4
  %233 = load i32, i32* @DMD_CNTRL2, align 4
  %234 = call i8* @STB0899_READ_S2REG(i32 %232, i32 %233)
  store i8* %234, i8** %11, align 8
  %235 = load i32, i32* @SPECTRUM_INVERT, align 4
  %236 = load i8*, i8** %11, align 8
  %237 = call i32 @STB0899_GETFIELD(i32 %235, i8* %236)
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* @SPECTRUM_INVERT, align 4
  %239 = load i8*, i8** %11, align 8
  %240 = load i32, i32* %9, align 4
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  %244 = call i32 @STB0899_SETFIELD_VAL(i32 %238, i8* %239, i32 %243)
  %245 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %246 = load i32, i32* @STB0899_S2DEMOD, align 4
  %247 = load i32, i32* @STB0899_BASE_DMD_CNTRL2, align 4
  %248 = load i32, i32* @STB0899_OFF0_DMD_CNTRL2, align 4
  %249 = load i8*, i8** %11, align 8
  %250 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %245, i32 %246, i32 %247, i32 %248, i8* %249)
  %251 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %252 = call i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state* %251)
  %253 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %254 = load i32, i32* %6, align 4
  %255 = call i8* @stb0899_dvbs2_get_dmd_status(%struct.stb0899_state* %253, i32 %254)
  %256 = ptrtoint i8* %255 to i64
  %257 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %258 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %257, i32 0, i32 2
  store i64 %256, i64* %258, align 8
  %259 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %260 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @DVBS2_DEMOD_LOCK, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %311

264:                                              ; preds = %231
  store i32 0, i32* %10, align 4
  %265 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %266 = load i32, i32* %7, align 4
  %267 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %265, i32 %266)
  %268 = ptrtoint i8* %267 to i64
  %269 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %270 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %269, i32 0, i32 2
  store i64 %268, i64* %270, align 8
  br label %271

271:                                              ; preds = %282, %264
  %272 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %273 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %271
  %278 = load i32, i32* %10, align 4
  %279 = icmp slt i32 %278, 3
  br label %280

280:                                              ; preds = %277, %271
  %281 = phi i1 [ false, %271 ], [ %279, %277 ]
  br i1 %281, label %282, label %310

282:                                              ; preds = %280
  %283 = load i32, i32* @STB0899_S2DEMOD, align 4
  %284 = load i32, i32* @CRL_FREQ, align 4
  %285 = call i8* @STB0899_READ_S2REG(i32 %283, i32 %284)
  %286 = ptrtoint i8* %285 to i32
  store i32 %286, i32* %5, align 4
  %287 = load i32, i32* @STB0899_S2DEMOD, align 4
  %288 = load i32, i32* @CRL_NOM_FREQ, align 4
  %289 = call i8* @STB0899_READ_S2REG(i32 %287, i32 %288)
  store i8* %289, i8** %11, align 8
  %290 = load i32, i32* @CRL_NOM_FREQ, align 4
  %291 = load i8*, i8** %11, align 8
  %292 = load i32, i32* %5, align 4
  %293 = call i32 @STB0899_SETFIELD_VAL(i32 %290, i8* %291, i32 %292)
  %294 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %295 = load i32, i32* @STB0899_S2DEMOD, align 4
  %296 = load i32, i32* @STB0899_BASE_CRL_NOM_FREQ, align 4
  %297 = load i32, i32* @STB0899_OFF0_CRL_NOM_FREQ, align 4
  %298 = load i8*, i8** %11, align 8
  %299 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %294, i32 %295, i32 %296, i32 %297, i8* %298)
  %300 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %301 = call i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state* %300)
  %302 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %303 = load i32, i32* %6, align 4
  %304 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %302, i32 %303)
  %305 = ptrtoint i8* %304 to i64
  %306 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %307 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %306, i32 0, i32 2
  store i64 %305, i64* %307, align 8
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %10, align 4
  br label %271

310:                                              ; preds = %280
  br label %311

311:                                              ; preds = %310, %231
  br label %312

312:                                              ; preds = %311, %225
  %313 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %314 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %554

318:                                              ; preds = %312
  %319 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %320 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @FE_DEBUG, align 4
  %323 = call i32 @dprintk(i32 %321, i32 %322, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %324 = load i32, i32* @STB0899_S2DEMOD, align 4
  %325 = load i32, i32* @UWP_STAT2, align 4
  %326 = call i8* @STB0899_READ_S2REG(i32 %324, i32 %325)
  store i8* %326, i8** %11, align 8
  %327 = load i32, i32* @UWP_DECODE_MOD, align 4
  %328 = load i8*, i8** %11, align 8
  %329 = call i32 @STB0899_GETFIELD(i32 %327, i8* %328)
  %330 = ashr i32 %329, 2
  store i32 %330, i32* %4, align 4
  %331 = load i32, i32* @UWP_DECODE_MOD, align 4
  %332 = load i8*, i8** %11, align 8
  %333 = call i32 @STB0899_GETFIELD(i32 %331, i8* %332)
  %334 = and i32 %333, 1
  store i32 %334, i32* %8, align 4
  %335 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %336 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = mul nsw i32 10, %337
  %339 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %340 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = sdiv i32 %341, 10
  %343 = sdiv i32 %338, %342
  %344 = icmp sle i32 %343, 410
  br i1 %344, label %345, label %410

345:                                              ; preds = %318
  %346 = load i32, i32* @STB0899_QPSK_23, align 4
  %347 = load i32, i32* %4, align 4
  %348 = load i32, i32* @STB0899_QPSK_910, align 4
  %349 = call i64 @INRANGE(i32 %346, i32 %347, i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %410

351:                                              ; preds = %345
  %352 = load i32, i32* %8, align 4
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %410

354:                                              ; preds = %351
  %355 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %356 = load i32, i32* %8, align 4
  %357 = load i32, i32* %4, align 4
  %358 = call i32 @stb0899_dvbs2_init_csm(%struct.stb0899_state* %355, i32 %356, i32 %357)
  %359 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %360 = load i32, i32* %7, align 4
  %361 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %359, i32 %360)
  %362 = ptrtoint i8* %361 to i64
  %363 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %364 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %363, i32 0, i32 2
  store i64 %362, i64* %364, align 8
  store i32 0, i32* %10, align 4
  br label %365

365:                                              ; preds = %376, %354
  %366 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %367 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %370 = icmp ne i64 %368, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load i32, i32* %10, align 4
  %373 = icmp slt i32 %372, 3
  br label %374

374:                                              ; preds = %371, %365
  %375 = phi i1 [ false, %365 ], [ %373, %371 ]
  br i1 %375, label %376, label %409

376:                                              ; preds = %374
  %377 = load i32, i32* @STB0899_S2DEMOD, align 4
  %378 = load i32, i32* @CSM_CNTRL1, align 4
  %379 = call i8* @STB0899_READ_S2REG(i32 %377, i32 %378)
  store i8* %379, i8** %12, align 8
  %380 = load i32, i32* @CSM_TWO_PASS, align 4
  %381 = load i8*, i8** %12, align 8
  %382 = call i32 @STB0899_SETFIELD_VAL(i32 %380, i8* %381, i32 1)
  %383 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %384 = load i32, i32* @STB0899_S2DEMOD, align 4
  %385 = load i32, i32* @STB0899_BASE_CSM_CNTRL1, align 4
  %386 = load i32, i32* @STB0899_OFF0_CSM_CNTRL1, align 4
  %387 = load i8*, i8** %12, align 8
  %388 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %383, i32 %384, i32 %385, i32 %386, i8* %387)
  %389 = load i32, i32* @STB0899_S2DEMOD, align 4
  %390 = load i32, i32* @CSM_CNTRL1, align 4
  %391 = call i8* @STB0899_READ_S2REG(i32 %389, i32 %390)
  store i8* %391, i8** %12, align 8
  %392 = load i32, i32* @CSM_TWO_PASS, align 4
  %393 = load i8*, i8** %12, align 8
  %394 = call i32 @STB0899_SETFIELD_VAL(i32 %392, i8* %393, i32 0)
  %395 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %396 = load i32, i32* @STB0899_S2DEMOD, align 4
  %397 = load i32, i32* @STB0899_BASE_CSM_CNTRL1, align 4
  %398 = load i32, i32* @STB0899_OFF0_CSM_CNTRL1, align 4
  %399 = load i8*, i8** %12, align 8
  %400 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %395, i32 %396, i32 %397, i32 %398, i8* %399)
  %401 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %402 = load i32, i32* %7, align 4
  %403 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %401, i32 %402)
  %404 = ptrtoint i8* %403 to i64
  %405 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %406 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %405, i32 0, i32 2
  store i64 %404, i64* %406, align 8
  %407 = load i32, i32* %10, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %10, align 4
  br label %365

409:                                              ; preds = %374
  br label %410

410:                                              ; preds = %409, %351, %345, %318
  %411 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %412 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = mul nsw i32 10, %413
  %415 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %416 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = sdiv i32 %417, 10
  %419 = sdiv i32 %414, %418
  %420 = icmp sle i32 %419, 410
  br i1 %420, label %421, label %443

421:                                              ; preds = %410
  %422 = load i32, i32* @STB0899_QPSK_12, align 4
  %423 = load i32, i32* %4, align 4
  %424 = load i32, i32* @STB0899_QPSK_35, align 4
  %425 = call i64 @INRANGE(i32 %422, i32 %423, i32 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %443

427:                                              ; preds = %421
  %428 = load i32, i32* %8, align 4
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %430, label %443

430:                                              ; preds = %427
  %431 = load i32, i32* @STB0899_S2DEMOD, align 4
  %432 = load i32, i32* @EQ_CNTRL, align 4
  %433 = call i8* @STB0899_READ_S2REG(i32 %431, i32 %432)
  store i8* %433, i8** %11, align 8
  %434 = load i32, i32* @EQ_DISABLE_UPDATE, align 4
  %435 = load i8*, i8** %11, align 8
  %436 = call i32 @STB0899_SETFIELD_VAL(i32 %434, i8* %435, i32 1)
  %437 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %438 = load i32, i32* @STB0899_S2DEMOD, align 4
  %439 = load i32, i32* @STB0899_BASE_EQ_CNTRL, align 4
  %440 = load i32, i32* @STB0899_OFF0_EQ_CNTRL, align 4
  %441 = load i8*, i8** %11, align 8
  %442 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %437, i32 %438, i32 %439, i32 %440, i8* %441)
  br label %443

443:                                              ; preds = %430, %427, %421, %410
  %444 = load i32, i32* @STB0899_S2DEMOD, align 4
  %445 = load i32, i32* @EQ_CNTRL, align 4
  %446 = call i8* @STB0899_READ_S2REG(i32 %444, i32 %445)
  store i8* %446, i8** %11, align 8
  %447 = load i32, i32* @EQ_SHIFT, align 4
  %448 = load i8*, i8** %11, align 8
  %449 = call i32 @STB0899_SETFIELD_VAL(i32 %447, i8* %448, i32 2)
  %450 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %451 = load i32, i32* @STB0899_S2DEMOD, align 4
  %452 = load i32, i32* @STB0899_BASE_EQ_CNTRL, align 4
  %453 = load i32, i32* @STB0899_OFF0_EQ_CNTRL, align 4
  %454 = load i8*, i8** %11, align 8
  %455 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %450, i32 %451, i32 %452, i32 %453, i8* %454)
  %456 = load i32, i32* @STB0899_S2DEMOD, align 4
  %457 = load i32, i32* @CRL_FREQ, align 4
  %458 = call i8* @STB0899_READ_S2REG(i32 %456, i32 %457)
  %459 = ptrtoint i8* %458 to i32
  store i32 %459, i32* %5, align 4
  %460 = load i32, i32* %5, align 4
  %461 = call i32 @sign_extend32(i32 %460, i32 29)
  store i32 %461, i32* %5, align 4
  %462 = load i32, i32* %5, align 4
  %463 = sdiv i32 %462, 1073741
  store i32 %463, i32* %5, align 4
  %464 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %465 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 8
  %467 = sdiv i32 %466, 1000000
  %468 = load i32, i32* %5, align 4
  %469 = mul nsw i32 %468, %467
  store i32 %469, i32* %5, align 4
  %470 = load i32, i32* @STB0899_S2DEMOD, align 4
  %471 = load i32, i32* @DMD_CNTRL2, align 4
  %472 = call i8* @STB0899_READ_S2REG(i32 %470, i32 %471)
  store i8* %472, i8** %11, align 8
  %473 = load i32, i32* @SPECTRUM_INVERT, align 4
  %474 = load i8*, i8** %11, align 8
  %475 = call i32 @STB0899_GETFIELD(i32 %473, i8* %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %443
  %478 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %479 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %478, i32 0, i32 1
  store i32 128, i32* %479, align 4
  br label %483

480:                                              ; preds = %443
  %481 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %482 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %481, i32 0, i32 1
  store i32 129, i32* %482, align 4
  br label %483

483:                                              ; preds = %480, %477
  %484 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %485 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %484, i32 0, i32 7
  %486 = load i64, i64* %485, align 8
  %487 = load i32, i32* %5, align 4
  %488 = sext i32 %487 to i64
  %489 = add nsw i64 %486, %488
  %490 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %491 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %490, i32 0, i32 7
  store i64 %489, i64* %491, align 8
  %492 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %493 = call i32 @stb0899_dvbs2_get_srate(%struct.stb0899_state* %492)
  %494 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %495 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %494, i32 0, i32 0
  store i32 %493, i32* %495, align 8
  %496 = load i32, i32* @STB0899_S2DEMOD, align 4
  %497 = load i32, i32* @UWP_STAT2, align 4
  %498 = call i8* @STB0899_READ_S2REG(i32 %496, i32 %497)
  store i8* %498, i8** %11, align 8
  %499 = load i32, i32* @UWP_DECODE_MOD, align 4
  %500 = load i8*, i8** %11, align 8
  %501 = call i32 @STB0899_GETFIELD(i32 %499, i8* %500)
  %502 = ashr i32 %501, 2
  %503 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %504 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %503, i32 0, i32 4
  store i32 %502, i32* %504, align 4
  %505 = load i32, i32* @UWP_DECODE_MOD, align 4
  %506 = load i8*, i8** %11, align 8
  %507 = call i32 @STB0899_GETFIELD(i32 %505, i8* %506)
  %508 = and i32 %507, 1
  %509 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %510 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %509, i32 0, i32 5
  store i32 %508, i32* %510, align 8
  %511 = load i32, i32* @UWP_DECODE_MOD, align 4
  %512 = load i8*, i8** %11, align 8
  %513 = call i32 @STB0899_GETFIELD(i32 %511, i8* %512)
  %514 = ashr i32 %513, 1
  %515 = and i32 %514, 1
  %516 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %517 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %516, i32 0, i32 6
  store i32 %515, i32* %517, align 4
  %518 = load i32, i32* @STB0899_S2DEMOD, align 4
  %519 = load i32, i32* @IF_AGC_CNTRL, align 4
  %520 = call i8* @STB0899_READ_S2REG(i32 %518, i32 %519)
  store i8* %520, i8** %11, align 8
  %521 = load i32, i32* @IF_LOOP_GAIN, align 4
  %522 = load i8*, i8** %11, align 8
  %523 = call i32 @STB0899_SETFIELD_VAL(i32 %521, i8* %522, i32 3)
  %524 = load i32, i32* @STB0899_QPSK_12, align 4
  %525 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %526 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %525, i32 0, i32 4
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @STB0899_QPSK_23, align 4
  %529 = call i64 @INRANGE(i32 %524, i32 %527, i32 %528)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %535

531:                                              ; preds = %483
  %532 = load i32, i32* @IF_AGC_REF, align 4
  %533 = load i8*, i8** %11, align 8
  %534 = call i32 @STB0899_SETFIELD_VAL(i32 %532, i8* %533, i32 16)
  br label %535

535:                                              ; preds = %531, %483
  %536 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %537 = load i32, i32* @STB0899_S2DEMOD, align 4
  %538 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL, align 4
  %539 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL, align 4
  %540 = load i8*, i8** %11, align 8
  %541 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %536, i32 %537, i32 %538, i32 %539, i8* %540)
  %542 = load i32, i32* @STB0899_S2DEMOD, align 4
  %543 = load i32, i32* @IF_AGC_CNTRL2, align 4
  %544 = call i8* @STB0899_READ_S2REG(i32 %542, i32 %543)
  store i8* %544, i8** %11, align 8
  %545 = load i32, i32* @IF_AGC_DUMP_PER, align 4
  %546 = load i8*, i8** %11, align 8
  %547 = call i32 @STB0899_SETFIELD_VAL(i32 %545, i8* %546, i32 7)
  %548 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %549 = load i32, i32* @STB0899_S2DEMOD, align 4
  %550 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL2, align 4
  %551 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL2, align 4
  %552 = load i8*, i8** %11, align 8
  %553 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %548, i32 %549, i32 %550, i32 %551, i8* %552)
  br label %554

554:                                              ; preds = %535, %312
  %555 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %556 = load i32, i32* @STB0899_TSTRES, align 4
  %557 = call i8* @stb0899_read_reg(%struct.stb0899_state* %555, i32 %556)
  store i8* %557, i8** %11, align 8
  %558 = load i32, i32* @FRESRS, align 4
  %559 = load i8*, i8** %11, align 8
  %560 = call i32 @STB0899_SETFIELD_VAL(i32 %558, i8* %559, i32 0)
  %561 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %562 = load i32, i32* @STB0899_TSTRES, align 4
  %563 = load i8*, i8** %11, align 8
  %564 = call i32 @stb0899_write_reg(%struct.stb0899_state* %561, i32 %562, i8* %563)
  %565 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %566 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %565, i32 0, i32 2
  %567 = load i64, i64* %566, align 8
  %568 = trunc i64 %567 to i32
  ret i32 %568
}

declare dso_local i8* @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i8*, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i8*) #1

declare dso_local i32 @stb0899_i2c_gate_ctrl(i32*, i32) #1

declare dso_local i8* @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i8*) #1

declare dso_local i32 @stb0899_dvbs2_init_calc(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state*) #1

declare dso_local i8* @stb0899_dvbs2_get_dmd_status(%struct.stb0899_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i8*) #1

declare dso_local i64 @INRANGE(i32, i32, i32) #1

declare dso_local i32 @stb0899_dvbs2_init_csm(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @stb0899_dvbs2_get_srate(%struct.stb0899_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
