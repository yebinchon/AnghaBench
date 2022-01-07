; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ter_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ter_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.stv0367_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.stv0367_state = type { i64, i64, %struct.stv0367ter_state* }
%struct.stv0367ter_state = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32 }

@__const.stv0367ter_set_frontend.SenseTrials = private unnamed_addr constant [2 x i32] [i32 131, i32 132], align 4
@FE_TER_MODE_2K = common dso_local global i32 0, align 4
@FE_TER_MODE_8K = common dso_local global i32 0, align 4
@FE_TER_CHAN_BW_6M = common dso_local global i32 0, align 4
@FE_TER_CHAN_BW_7M = common dso_local global i32 0, align 4
@FE_TER_CHAN_BW_8M = common dso_local global i32 0, align 4
@FE_TER_HIER_NONE = common dso_local global i32 0, align 4
@FE_TER_NOLOCK = common dso_local global i32 0, align 4
@FE_TER_LOCKOK = common dso_local global i32 0, align 4
@INVERSION_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0367ter_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367ter_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.stv0367_state*, align 8
  %5 = alloca %struct.stv0367ter_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.stv0367_state*, %struct.stv0367_state** %12, align 8
  store %struct.stv0367_state* %13, %struct.stv0367_state** %4, align 8
  %14 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %15 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %14, i32 0, i32 2
  %16 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %15, align 8
  store %struct.stv0367ter_state* %16, %struct.stv0367ter_state** %5, align 8
  %17 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([2 x i32]* @__const.stv0367ter_set_frontend.SenseTrials to i8*), i64 8, i1 false)
  %18 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %19 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %24 = call i32 @stv0367ter_init(%struct.dvb_frontend* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %29, align 8
  %31 = icmp ne i32 (%struct.dvb_frontend.1*)* %30, null
  br i1 %31, label %32, label %79

32:                                               ; preds = %25
  %33 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %34 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %46, align 8
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %49 = bitcast %struct.dvb_frontend* %48 to %struct.dvb_frontend.0*
  %50 = call i32 %47(%struct.dvb_frontend.0* %49, i32 1)
  br label %51

51:                                               ; preds = %43, %37, %32
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %55, align 8
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %58 = bitcast %struct.dvb_frontend* %57 to %struct.dvb_frontend.1*
  %59 = call i32 %56(%struct.dvb_frontend.1* %58)
  %60 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %61 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %51
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %72 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %73, align 8
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %76 = bitcast %struct.dvb_frontend* %75 to %struct.dvb_frontend.0*
  %77 = call i32 %74(%struct.dvb_frontend.0* %76, i32 0)
  br label %78

78:                                               ; preds = %70, %64, %51
  br label %79

79:                                               ; preds = %78, %25
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %83 [
    i32 128, label %84
    i32 130, label %84
    i32 129, label %88
  ]

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %79, %79, %83
  %85 = load i32, i32* @FE_TER_MODE_2K, align 4
  %86 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %87 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  br label %92

88:                                               ; preds = %79
  %89 = load i32, i32* @FE_TER_MODE_8K, align 4
  %90 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %91 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %96 [
    i32 136, label %97
    i32 137, label %97
    i32 134, label %97
    i32 135, label %97
    i32 133, label %103
  ]

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %92, %92, %92, %92, %96
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %102 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %106

103:                                              ; preds = %92
  %104 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %105 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %104, i32 0, i32 0
  store i32 136, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %97
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %119 [
    i32 6000000, label %110
    i32 7000000, label %114
    i32 8000000, label %118
  ]

110:                                              ; preds = %106
  %111 = load i32, i32* @FE_TER_CHAN_BW_6M, align 4
  %112 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %113 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  br label %123

114:                                              ; preds = %106
  %115 = load i32, i32* @FE_TER_CHAN_BW_7M, align 4
  %116 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %117 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  br label %123

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %106, %118
  %120 = load i32, i32* @FE_TER_CHAN_BW_8M, align 4
  %121 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %122 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %114, %110
  %124 = load i32, i32* @FE_TER_HIER_NONE, align 4
  %125 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %126 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %128 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %131 [
    i32 132, label %130
    i32 131, label %130
  ]

130:                                              ; preds = %123, %123
  store i64 1, i64* %6, align 8
  br label %138

131:                                              ; preds = %123
  store i64 2, i64* %6, align 8
  %132 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %133 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i64 1, i64* %6, align 8
  br label %137

137:                                              ; preds = %136, %131
  br label %138

138:                                              ; preds = %137, %130
  %139 = load i32, i32* @FE_TER_NOLOCK, align 4
  %140 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %141 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  store i64 0, i64* %7, align 8
  br label %142

142:                                              ; preds = %202, %138
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* %6, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %148 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @FE_TER_LOCKOK, align 4
  %151 = icmp ne i32 %149, %150
  br label %152

152:                                              ; preds = %146, %142
  %153 = phi i1 [ false, %142 ], [ %151, %146 ]
  br i1 %153, label %154, label %205

154:                                              ; preds = %152
  %155 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %156 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %172, label %159

159:                                              ; preds = %154
  %160 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %161 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @INVERSION_AUTO, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i64, i64* %7, align 8
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %170 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %159
  br label %172

172:                                              ; preds = %171, %154
  %173 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %174 = call i32 @stv0367ter_algo(%struct.dvb_frontend* %173)
  %175 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %5, align 8
  %176 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @FE_TER_LOCKOK, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %202

180:                                              ; preds = %172
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @INVERSION_AUTO, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %180
  %187 = load i64, i64* %7, align 8
  %188 = icmp eq i64 %187, 1
  br i1 %188, label %189, label %202

189:                                              ; preds = %186
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %192
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  %197 = srem i32 %196, 2
  %198 = load i64, i64* %7, align 8
  %199 = add nsw i64 %198, 1
  %200 = srem i64 %199, 2
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %200
  store i32 %197, i32* %201, align 4
  br label %202

202:                                              ; preds = %189, %186, %180, %172
  %203 = load i64, i64* %7, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %7, align 8
  br label %142

205:                                              ; preds = %152
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @stv0367ter_init(%struct.dvb_frontend*) #2

declare dso_local i32 @stv0367ter_algo(%struct.dvb_frontend*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
