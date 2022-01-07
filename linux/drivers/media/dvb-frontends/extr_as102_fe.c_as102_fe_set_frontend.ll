; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_as102_fe.c_as102_fe_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_as102_fe.c_as102_fe_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.as102_state* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.as102_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.as10x_tune_args*)* }
%struct.as10x_tune_args = type { i32, i64, i8*, i32, i32, i8*, i32, i32, i32, i32 }

@INTLV_NATIVE = common dso_local global i32 0, align 4
@BW_8_MHZ = common dso_local global i8* null, align 8
@BW_7_MHZ = common dso_local global i8* null, align 8
@BW_6_MHZ = common dso_local global i8* null, align 8
@GUARD_INT_1_32 = common dso_local global i32 0, align 4
@GUARD_INT_1_16 = common dso_local global i32 0, align 4
@GUARD_INT_1_8 = common dso_local global i32 0, align 4
@GUARD_INT_1_4 = common dso_local global i32 0, align 4
@GUARD_UNKNOWN = common dso_local global i32 0, align 4
@CONST_QPSK = common dso_local global i32 0, align 4
@CONST_QAM16 = common dso_local global i32 0, align 4
@CONST_QAM64 = common dso_local global i32 0, align 4
@CONST_UNKNOWN = common dso_local global i32 0, align 4
@TRANS_MODE_2K = common dso_local global i32 0, align 4
@TRANS_MODE_8K = common dso_local global i32 0, align 4
@TRANS_MODE_UNKNOWN = common dso_local global i32 0, align 4
@HIER_NONE = common dso_local global i32 0, align 4
@HIER_ALPHA_1 = common dso_local global i32 0, align 4
@HIER_ALPHA_2 = common dso_local global i32 0, align 4
@HIER_ALPHA_4 = common dso_local global i32 0, align 4
@HIER_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"as102: tuner parameters: freq: %d  bw: 0x%02x  gi: 0x%02x\0A\00", align 1
@FEC_NONE = common dso_local global i64 0, align 8
@HIER_HIGH_PRIORITY = common dso_local global i64 0, align 8
@HIER_LOW_PRIORITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"as102: \09hierarchy: 0x%02x  selected: %s  code_rate_%s: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @as102_fe_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_fe_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.as102_state*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.as10x_tune_args, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  store %struct.as102_state* %8, %struct.as102_state** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = bitcast %struct.as10x_tune_args* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 56, i1 false)
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sdiv i32 %14, 1000
  %16 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @INTLV_NATIVE, align 4
  %18 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 8
  store i32 %17, i32* %18, align 8
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %31 [
    i32 8000000, label %22
    i32 7000000, label %25
    i32 6000000, label %28
  ]

22:                                               ; preds = %1
  %23 = load i8*, i8** @BW_8_MHZ, align 8
  %24 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 5
  store i8* %23, i8** %24, align 8
  br label %34

25:                                               ; preds = %1
  %26 = load i8*, i8** @BW_7_MHZ, align 8
  %27 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  br label %34

28:                                               ; preds = %1
  %29 = load i8*, i8** @BW_6_MHZ, align 8
  %30 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 5
  store i8* %29, i8** %30, align 8
  br label %34

31:                                               ; preds = %1
  %32 = load i8*, i8** @BW_8_MHZ, align 8
  %33 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 5
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %31, %28, %25, %22
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %51 [
    i32 141, label %38
    i32 142, label %41
    i32 139, label %44
    i32 140, label %47
    i32 138, label %50
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @GUARD_INT_1_32, align 4
  %40 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  br label %54

41:                                               ; preds = %34
  %42 = load i32, i32* @GUARD_INT_1_16, align 4
  %43 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  br label %54

44:                                               ; preds = %34
  %45 = load i32, i32* @GUARD_INT_1_8, align 4
  %46 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 4
  store i32 %45, i32* %46, align 4
  br label %54

47:                                               ; preds = %34
  %48 = load i32, i32* @GUARD_INT_1_4, align 4
  %49 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  br label %54

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %34, %50
  %52 = load i32, i32* @GUARD_UNKNOWN, align 4
  %53 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %47, %44, %41, %38
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %67 [
    i32 130, label %58
    i32 132, label %61
    i32 131, label %64
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* @CONST_QPSK, align 4
  %60 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 7
  store i32 %59, i32* %60, align 4
  br label %70

61:                                               ; preds = %54
  %62 = load i32, i32* @CONST_QAM16, align 4
  %63 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 7
  store i32 %62, i32* %63, align 4
  br label %70

64:                                               ; preds = %54
  %65 = load i32, i32* @CONST_QAM64, align 4
  %66 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 7
  store i32 %65, i32* %66, align 4
  br label %70

67:                                               ; preds = %54
  %68 = load i32, i32* @CONST_UNKNOWN, align 4
  %69 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 7
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %64, %61, %58
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %80 [
    i32 129, label %74
    i32 128, label %77
  ]

74:                                               ; preds = %70
  %75 = load i32, i32* @TRANS_MODE_2K, align 4
  %76 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 6
  store i32 %75, i32* %76, align 8
  br label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @TRANS_MODE_8K, align 4
  %79 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 6
  store i32 %78, i32* %79, align 8
  br label %83

80:                                               ; preds = %70
  %81 = load i32, i32* @TRANS_MODE_UNKNOWN, align 4
  %82 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 6
  store i32 %81, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %77, %74
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %102 [
    i32 133, label %87
    i32 137, label %90
    i32 136, label %93
    i32 135, label %96
    i32 134, label %99
  ]

87:                                               ; preds = %83
  %88 = load i32, i32* @HIER_NONE, align 4
  %89 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 3
  store i32 %88, i32* %89, align 8
  br label %102

90:                                               ; preds = %83
  %91 = load i32, i32* @HIER_ALPHA_1, align 4
  %92 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 3
  store i32 %91, i32* %92, align 8
  br label %102

93:                                               ; preds = %83
  %94 = load i32, i32* @HIER_ALPHA_2, align 4
  %95 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 3
  store i32 %94, i32* %95, align 8
  br label %102

96:                                               ; preds = %83
  %97 = load i32, i32* @HIER_ALPHA_4, align 4
  %98 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 3
  store i32 %97, i32* %98, align 8
  br label %102

99:                                               ; preds = %83
  %100 = load i32, i32* @HIER_UNKNOWN, align 4
  %101 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 3
  store i32 %100, i32* %101, align 8
  br label %102

102:                                              ; preds = %83, %99, %96, %93, %90, %87
  %103 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %104 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 5
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 (i8*, i32, i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %105, i8* %107, i8* %111)
  %113 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @HIER_NONE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %175

117:                                              ; preds = %102
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @FEC_NONE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @FEC_NONE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %175

129:                                              ; preds = %123, %117
  %130 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %131 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @FEC_NONE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load i64, i64* @HIER_HIGH_PRIORITY, align 8
  %137 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 1
  store i64 %136, i64* %137, align 8
  %138 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %139 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = call i8* @as102_fe_get_code_rate(i64 %140)
  %142 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 2
  store i8* %141, i8** %142, align 8
  br label %143

143:                                              ; preds = %135, %129
  %144 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %145 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @FEC_NONE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %143
  %150 = load i64, i64* @HIER_LOW_PRIORITY, align 8
  %151 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 1
  store i64 %150, i64* %151, align 8
  %152 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %153 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @as102_fe_get_code_rate(i64 %154)
  %156 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 2
  store i8* %155, i8** %156, align 8
  br label %157

157:                                              ; preds = %149, %143
  %158 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @HIER_HIGH_PRIORITY, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %166 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @HIER_HIGH_PRIORITY, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %172 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i8*, i32, i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %159, i8* %165, i8* %171, i8* %173)
  br label %181

175:                                              ; preds = %123, %102
  %176 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %177 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %176, i32 0, i32 7
  %178 = load i64, i64* %177, align 8
  %179 = call i8* @as102_fe_get_code_rate(i64 %178)
  %180 = getelementptr inbounds %struct.as10x_tune_args, %struct.as10x_tune_args* %5, i32 0, i32 2
  store i8* %179, i8** %180, align 8
  br label %181

181:                                              ; preds = %175, %157
  %182 = load %struct.as102_state*, %struct.as102_state** %3, align 8
  %183 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %182, i32 0, i32 1
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32 (i32, %struct.as10x_tune_args*)*, i32 (i32, %struct.as10x_tune_args*)** %185, align 8
  %187 = load %struct.as102_state*, %struct.as102_state** %3, align 8
  %188 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 %186(i32 %189, %struct.as10x_tune_args* %5)
  ret i32 %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @as102_fe_get_code_rate(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
