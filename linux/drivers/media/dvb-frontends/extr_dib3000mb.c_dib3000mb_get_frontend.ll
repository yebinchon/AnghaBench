; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000mb_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000mb_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000_state* }
%struct.dib3000_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i8*, i32, i32 }

@DIB3000MB_REG_TPS_LOCK = common dso_local global i32 0, align 4
@DIB3000MB_REG_DDS_VALUE_MSB = common dso_local global i32 0, align 4
@DIB3000MB_REG_DDS_VALUE_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DDS_VAL: %x %x %x\0A\00", align 1
@DIB3000MB_REG_DDS_FREQ_MSB = common dso_local global i32 0, align 4
@DIB3000MB_REG_DDS_FREQ_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"DDS_FREQ: %x %x %x\0A\00", align 1
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"inversion %d %d, %d\0A\00", align 1
@DIB3000MB_REG_TPS_QAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"QPSK\0A\00", align 1
@QPSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"QAM16\0A\00", align 1
@QAM_16 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"QAM64\0A\00", align 1
@QAM_64 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Unexpected constellation returned by TPS (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"TPS: %d\0A\00", align 1
@DIB3000MB_REG_TPS_HRCH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"HRCH ON\0A\00", align 1
@FEC_NONE = common dso_local global i8* null, align 8
@DIB3000MB_REG_TPS_VIT_ALPHA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"HIERARCHY_NONE\0A\00", align 1
@HIERARCHY_NONE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"HIERARCHY_1\0A\00", align 1
@HIERARCHY_1 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"HIERARCHY_2\0A\00", align 1
@HIERARCHY_2 = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"HIERARCHY_4\0A\00", align 1
@HIERARCHY_4 = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [45 x i8] c"Unexpected ALPHA value returned by TPS (%d)\0A\00", align 1
@DIB3000MB_REG_TPS_CODE_RATE_LP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"HRCH OFF\0A\00", align 1
@DIB3000MB_REG_TPS_CODE_RATE_HP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"FEC_1_2\0A\00", align 1
@FEC_1_2 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"FEC_2_3\0A\00", align 1
@FEC_2_3 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"FEC_3_4\0A\00", align 1
@FEC_3_4 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"FEC_5_6\0A\00", align 1
@FEC_4_5 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"FEC_7_8\0A\00", align 1
@FEC_7_8 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [37 x i8] c"Unexpected FEC returned by TPS (%d)\0A\00", align 1
@DIB3000MB_REG_TPS_GUARD_TIME = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"GUARD_INTERVAL_1_32\0A\00", align 1
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"GUARD_INTERVAL_1_16\0A\00", align 1
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"GUARD_INTERVAL_1_8\0A\00", align 1
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [20 x i8] c"GUARD_INTERVAL_1_4\0A\00", align 1
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [44 x i8] c"Unexpected Guard Time returned by TPS (%d)\0A\00", align 1
@DIB3000MB_REG_TPS_FFT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [22 x i8] c"TRANSMISSION_MODE_2K\0A\00", align 1
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [22 x i8] c"TRANSMISSION_MODE_8K\0A\00", align 1
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [49 x i8] c"unexpected transmission mode return by TPS (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @dib3000mb_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mb_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.dib3000_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.dib3000_state*, %struct.dib3000_state** %14, align 8
  store %struct.dib3000_state* %15, %struct.dib3000_state** %6, align 8
  store i32 8388608, i32* %12, align 4
  %16 = load i32, i32* @DIB3000MB_REG_TPS_LOCK, align 4
  %17 = call i32 @rd(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %253

20:                                               ; preds = %2
  %21 = load i32, i32* @DIB3000MB_REG_DDS_VALUE_MSB, align 4
  %22 = call i32 @rd(i32 %21)
  %23 = and i32 %22, 255
  %24 = shl i32 %23, 16
  %25 = load i32, i32* @DIB3000MB_REG_DDS_VALUE_LSB, align 4
  %26 = call i32 @rd(i32 %25)
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @DIB3000MB_REG_DDS_VALUE_MSB, align 4
  %30 = call i32 @rd(i32 %29)
  %31 = load i32, i32* @DIB3000MB_REG_DDS_VALUE_LSB, align 4
  %32 = call i32 @rd(i32 %31)
  %33 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %45

38:                                               ; preds = %20
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %44

43:                                               ; preds = %38
  store i32 2, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* @DIB3000MB_REG_DDS_FREQ_MSB, align 4
  %47 = call i32 @rd(i32 %46)
  %48 = and i32 %47, 255
  %49 = shl i32 %48, 16
  %50 = load i32, i32* @DIB3000MB_REG_DDS_FREQ_LSB, align 4
  %51 = call i32 @rd(i32 %50)
  %52 = add nsw i32 %49, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @DIB3000MB_REG_DDS_FREQ_MSB, align 4
  %55 = call i32 @rd(i32 %54)
  %56 = load i32, i32* @DIB3000MB_REG_DDS_FREQ_LSB, align 4
  %57 = call i32 @rd(i32 %56)
  %58 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %70

63:                                               ; preds = %45
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 1, i32* %10, align 4
  br label %69

68:                                               ; preds = %63
  store i32 2, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %62
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76, %70
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %90

88:                                               ; preds = %85, %82, %76, %73
  %89 = load i32, i32* @INVERSION_ON, align 4
  br label %92

90:                                               ; preds = %85, %79
  %91 = load i32, i32* @INVERSION_OFF, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97, i32 %100)
  %102 = load i32, i32* @DIB3000MB_REG_TPS_QAM, align 4
  %103 = call i32 @rd(i32 %102)
  store i32 %103, i32* %8, align 4
  switch i32 %103, label %119 [
    i32 139, label %104
    i32 141, label %109
    i32 140, label %114
  ]

104:                                              ; preds = %92
  %105 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* @QPSK, align 4
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  br label %122

109:                                              ; preds = %92
  %110 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* @QAM_16, align 4
  %112 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  br label %122

114:                                              ; preds = %92
  %115 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @QAM_64, align 4
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  br label %122

119:                                              ; preds = %92
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %119, %114, %109, %104
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @DIB3000MB_REG_TPS_HRCH, align 4
  %126 = call i32 @rd(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %166

128:                                              ; preds = %122
  %129 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %130 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %131 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %130, i32 0, i32 0
  store i32* %131, i32** %7, align 8
  %132 = load i8*, i8** @FEC_NONE, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @DIB3000MB_REG_TPS_VIT_ALPHA, align 4
  %137 = call i32 @rd(i32 %136)
  store i32 %137, i32* %8, align 4
  switch i32 %137, label %158 [
    i32 145, label %138
    i32 144, label %143
    i32 143, label %148
    i32 142, label %153
  ]

138:                                              ; preds = %128
  %139 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %140 = load i8*, i8** @HIERARCHY_NONE, align 8
  %141 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %142 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  br label %161

143:                                              ; preds = %128
  %144 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %145 = load i8*, i8** @HIERARCHY_1, align 8
  %146 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  br label %161

148:                                              ; preds = %128
  %149 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %150 = load i8*, i8** @HIERARCHY_2, align 8
  %151 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %152 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  br label %161

153:                                              ; preds = %128
  %154 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %155 = load i8*, i8** @HIERARCHY_4, align 8
  %156 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %157 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %156, i32 0, i32 4
  store i8* %155, i8** %157, align 8
  br label %161

158:                                              ; preds = %128
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %158, %153, %148, %143, %138
  %162 = load i32, i32* %8, align 4
  %163 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @DIB3000MB_REG_TPS_CODE_RATE_LP, align 4
  %165 = call i32 @rd(i32 %164)
  store i32 %165, i32* %8, align 4
  br label %179

166:                                              ; preds = %122
  %167 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %168 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %169 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %168, i32 0, i32 1
  store i32* %169, i32** %7, align 8
  %170 = load i8*, i8** @FEC_NONE, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %173 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i8*, i8** @HIERARCHY_NONE, align 8
  %175 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %176 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %175, i32 0, i32 4
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* @DIB3000MB_REG_TPS_CODE_RATE_HP, align 4
  %178 = call i32 @rd(i32 %177)
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %166, %161
  %180 = load i32, i32* %8, align 4
  switch i32 %180, label %201 [
    i32 138, label %181
    i32 137, label %185
    i32 136, label %189
    i32 135, label %193
    i32 134, label %197
  ]

181:                                              ; preds = %179
  %182 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %183 = load i32, i32* @FEC_1_2, align 4
  %184 = load i32*, i32** %7, align 8
  store i32 %183, i32* %184, align 4
  br label %204

185:                                              ; preds = %179
  %186 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %187 = load i32, i32* @FEC_2_3, align 4
  %188 = load i32*, i32** %7, align 8
  store i32 %187, i32* %188, align 4
  br label %204

189:                                              ; preds = %179
  %190 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %191 = load i32, i32* @FEC_3_4, align 4
  %192 = load i32*, i32** %7, align 8
  store i32 %191, i32* %192, align 4
  br label %204

193:                                              ; preds = %179
  %194 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %195 = load i32, i32* @FEC_4_5, align 4
  %196 = load i32*, i32** %7, align 8
  store i32 %195, i32* %196, align 4
  br label %204

197:                                              ; preds = %179
  %198 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %199 = load i32, i32* @FEC_7_8, align 4
  %200 = load i32*, i32** %7, align 8
  store i32 %199, i32* %200, align 4
  br label %204

201:                                              ; preds = %179
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %201, %197, %193, %189, %185, %181
  %205 = load i32, i32* %8, align 4
  %206 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @DIB3000MB_REG_TPS_GUARD_TIME, align 4
  %208 = call i32 @rd(i32 %207)
  store i32 %208, i32* %8, align 4
  switch i32 %208, label %229 [
    i32 132, label %209
    i32 133, label %214
    i32 130, label %219
    i32 131, label %224
  ]

209:                                              ; preds = %204
  %210 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %211 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %212 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %213 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  br label %232

214:                                              ; preds = %204
  %215 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %216 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %217 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %218 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  br label %232

219:                                              ; preds = %204
  %220 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  %221 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %222 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %223 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 4
  br label %232

224:                                              ; preds = %204
  %225 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0))
  %226 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %227 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %228 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  br label %232

229:                                              ; preds = %204
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %229, %224, %219, %214, %209
  %233 = load i32, i32* %8, align 4
  %234 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @DIB3000MB_REG_TPS_FFT, align 4
  %236 = call i32 @rd(i32 %235)
  store i32 %236, i32* %8, align 4
  switch i32 %236, label %247 [
    i32 129, label %237
    i32 128, label %242
  ]

237:                                              ; preds = %232
  %238 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %239 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %240 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %241 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  br label %250

242:                                              ; preds = %232
  %243 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  %244 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %245 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %246 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  br label %250

247:                                              ; preds = %232
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %247, %242, %237
  %251 = load i32, i32* %8, align 4
  %252 = call i32 (i8*, ...) @deb_getf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %251)
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %250, %19
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @rd(i32) #1

declare dso_local i32 @deb_getf(i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
