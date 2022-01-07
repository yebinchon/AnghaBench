; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv* }
%struct.stv = type { i64, i64 }
%struct.dtv_frontend_properties = type { i32, i32, i64, i32, i32 }

@RCVMODE_DVBS2 = common dso_local global i64 0, align 8
@QPSK = common dso_local global i32 0, align 4
@PSK_8 = common dso_local global i32 0, align 4
@APSK_16 = common dso_local global i32 0, align 4
@APSK_32 = common dso_local global i32 0, align 4
@FEC_NONE = common dso_local global i32 0, align 4
@FEC_2_5 = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i32 0, align 4
@FEC_3_5 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@FEC_4_5 = common dso_local global i32 0, align 4
@FEC_5_6 = common dso_local global i32 0, align 4
@FEC_8_9 = common dso_local global i32 0, align 4
@FEC_9_10 = common dso_local global i32 0, align 4
@RSTV0910_P2_DMDMODCOD = common dso_local global i64 0, align 8
@PILOT_ON = common dso_local global i32 0, align 4
@PILOT_OFF = common dso_local global i32 0, align 4
@RCVMODE_DVBS = common dso_local global i64 0, align 8
@RSTV0910_P2_VITCURPUN = common dso_local global i64 0, align 8
@FEC_7_8 = common dso_local global i32 0, align 4
@ROLLOFF_35 = common dso_local global i32 0, align 4
@RCVMODE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.stv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32 x i32], align 16
  %10 = alloca [32 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.stv*, %struct.stv** %12, align 8
  store %struct.stv* %13, %struct.stv** %5, align 8
  %14 = load %struct.stv*, %struct.stv** %5, align 8
  %15 = getelementptr inbounds %struct.stv, %struct.stv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RCVMODE_DVBS2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %182

19:                                               ; preds = %2
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %21 = load i32, i32* @QPSK, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @QPSK, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @QPSK, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @QPSK, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @QPSK, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @QPSK, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @QPSK, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @QPSK, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @QPSK, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @QPSK, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @QPSK, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %40, i64 1
  %43 = load i32, i32* @QPSK, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  %45 = load i32, i32* @PSK_8, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @PSK_8, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* @PSK_8, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds i32, i32* %48, i64 1
  %51 = load i32, i32* @PSK_8, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %50, i64 1
  %53 = load i32, i32* @PSK_8, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %52, i64 1
  %55 = load i32, i32* @PSK_8, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds i32, i32* %54, i64 1
  %57 = load i32, i32* @APSK_16, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  %59 = load i32, i32* @APSK_16, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 1
  %61 = load i32, i32* @APSK_16, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %60, i64 1
  %63 = load i32, i32* @APSK_16, align 4
  store i32 %63, i32* %62, align 4
  %64 = getelementptr inbounds i32, i32* %62, i64 1
  %65 = load i32, i32* @APSK_16, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds i32, i32* %64, i64 1
  %67 = load i32, i32* @APSK_16, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds i32, i32* %66, i64 1
  %69 = load i32, i32* @APSK_32, align 4
  store i32 %69, i32* %68, align 4
  %70 = getelementptr inbounds i32, i32* %68, i64 1
  %71 = load i32, i32* @APSK_32, align 4
  store i32 %71, i32* %70, align 4
  %72 = getelementptr inbounds i32, i32* %70, i64 1
  %73 = load i32, i32* @APSK_32, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds i32, i32* %72, i64 1
  %75 = load i32, i32* @APSK_32, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds i32, i32* %74, i64 1
  %77 = load i32, i32* @APSK_32, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds i32, i32* %76, i64 1
  %79 = getelementptr inbounds i32, i32* %20, i64 32
  br label %80

80:                                               ; preds = %80, %19
  %81 = phi i32* [ %78, %19 ], [ %82, %80 ]
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = icmp eq i32* %82, %79
  br i1 %83, label %84, label %80

84:                                               ; preds = %80
  %85 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %86 = load i32, i32* @FEC_NONE, align 4
  store i32 %86, i32* %85, align 4
  %87 = getelementptr inbounds i32, i32* %85, i64 1
  %88 = load i32, i32* @FEC_NONE, align 4
  store i32 %88, i32* %87, align 4
  %89 = getelementptr inbounds i32, i32* %87, i64 1
  %90 = load i32, i32* @FEC_NONE, align 4
  store i32 %90, i32* %89, align 4
  %91 = getelementptr inbounds i32, i32* %89, i64 1
  %92 = load i32, i32* @FEC_2_5, align 4
  store i32 %92, i32* %91, align 4
  %93 = getelementptr inbounds i32, i32* %91, i64 1
  %94 = load i32, i32* @FEC_1_2, align 4
  store i32 %94, i32* %93, align 4
  %95 = getelementptr inbounds i32, i32* %93, i64 1
  %96 = load i32, i32* @FEC_3_5, align 4
  store i32 %96, i32* %95, align 4
  %97 = getelementptr inbounds i32, i32* %95, i64 1
  %98 = load i32, i32* @FEC_2_3, align 4
  store i32 %98, i32* %97, align 4
  %99 = getelementptr inbounds i32, i32* %97, i64 1
  %100 = load i32, i32* @FEC_3_4, align 4
  store i32 %100, i32* %99, align 4
  %101 = getelementptr inbounds i32, i32* %99, i64 1
  %102 = load i32, i32* @FEC_4_5, align 4
  store i32 %102, i32* %101, align 4
  %103 = getelementptr inbounds i32, i32* %101, i64 1
  %104 = load i32, i32* @FEC_5_6, align 4
  store i32 %104, i32* %103, align 4
  %105 = getelementptr inbounds i32, i32* %103, i64 1
  %106 = load i32, i32* @FEC_8_9, align 4
  store i32 %106, i32* %105, align 4
  %107 = getelementptr inbounds i32, i32* %105, i64 1
  %108 = load i32, i32* @FEC_9_10, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds i32, i32* %107, i64 1
  %110 = load i32, i32* @FEC_3_5, align 4
  store i32 %110, i32* %109, align 4
  %111 = getelementptr inbounds i32, i32* %109, i64 1
  %112 = load i32, i32* @FEC_2_3, align 4
  store i32 %112, i32* %111, align 4
  %113 = getelementptr inbounds i32, i32* %111, i64 1
  %114 = load i32, i32* @FEC_3_4, align 4
  store i32 %114, i32* %113, align 4
  %115 = getelementptr inbounds i32, i32* %113, i64 1
  %116 = load i32, i32* @FEC_5_6, align 4
  store i32 %116, i32* %115, align 4
  %117 = getelementptr inbounds i32, i32* %115, i64 1
  %118 = load i32, i32* @FEC_8_9, align 4
  store i32 %118, i32* %117, align 4
  %119 = getelementptr inbounds i32, i32* %117, i64 1
  %120 = load i32, i32* @FEC_9_10, align 4
  store i32 %120, i32* %119, align 4
  %121 = getelementptr inbounds i32, i32* %119, i64 1
  %122 = load i32, i32* @FEC_2_3, align 4
  store i32 %122, i32* %121, align 4
  %123 = getelementptr inbounds i32, i32* %121, i64 1
  %124 = load i32, i32* @FEC_3_4, align 4
  store i32 %124, i32* %123, align 4
  %125 = getelementptr inbounds i32, i32* %123, i64 1
  %126 = load i32, i32* @FEC_4_5, align 4
  store i32 %126, i32* %125, align 4
  %127 = getelementptr inbounds i32, i32* %125, i64 1
  %128 = load i32, i32* @FEC_5_6, align 4
  store i32 %128, i32* %127, align 4
  %129 = getelementptr inbounds i32, i32* %127, i64 1
  %130 = load i32, i32* @FEC_8_9, align 4
  store i32 %130, i32* %129, align 4
  %131 = getelementptr inbounds i32, i32* %129, i64 1
  %132 = load i32, i32* @FEC_9_10, align 4
  store i32 %132, i32* %131, align 4
  %133 = getelementptr inbounds i32, i32* %131, i64 1
  %134 = load i32, i32* @FEC_3_4, align 4
  store i32 %134, i32* %133, align 4
  %135 = getelementptr inbounds i32, i32* %133, i64 1
  %136 = load i32, i32* @FEC_4_5, align 4
  store i32 %136, i32* %135, align 4
  %137 = getelementptr inbounds i32, i32* %135, i64 1
  %138 = load i32, i32* @FEC_5_6, align 4
  store i32 %138, i32* %137, align 4
  %139 = getelementptr inbounds i32, i32* %137, i64 1
  %140 = load i32, i32* @FEC_8_9, align 4
  store i32 %140, i32* %139, align 4
  %141 = getelementptr inbounds i32, i32* %139, i64 1
  %142 = load i32, i32* @FEC_9_10, align 4
  store i32 %142, i32* %141, align 4
  %143 = getelementptr inbounds i32, i32* %141, i64 1
  %144 = getelementptr inbounds i32, i32* %85, i64 32
  br label %145

145:                                              ; preds = %145, %84
  %146 = phi i32* [ %143, %84 ], [ %147, %145 ]
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = icmp eq i32* %147, %144
  br i1 %148, label %149, label %145

149:                                              ; preds = %145
  %150 = load %struct.stv*, %struct.stv** %5, align 8
  %151 = load i64, i64* @RSTV0910_P2_DMDMODCOD, align 8
  %152 = load %struct.stv*, %struct.stv** %5, align 8
  %153 = getelementptr inbounds %struct.stv, %struct.stv* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %151, %154
  %156 = call i32 @read_reg(%struct.stv* %150, i64 %155, i32* %6)
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, 124
  %159 = ashr i32 %158, 2
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %8, align 8
  %161 = load i32, i32* %6, align 4
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %149
  %165 = load i32, i32* @PILOT_ON, align 4
  br label %168

166:                                              ; preds = %149
  %167 = load i32, i32* @PILOT_OFF, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %171 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load i64, i64* %8, align 8
  %173 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %176 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load i64, i64* %8, align 8
  %178 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %181 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  br label %227

182:                                              ; preds = %2
  %183 = load %struct.stv*, %struct.stv** %5, align 8
  %184 = getelementptr inbounds %struct.stv, %struct.stv* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @RCVMODE_DVBS, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %226

188:                                              ; preds = %182
  %189 = load %struct.stv*, %struct.stv** %5, align 8
  %190 = load i64, i64* @RSTV0910_P2_VITCURPUN, align 8
  %191 = load %struct.stv*, %struct.stv** %5, align 8
  %192 = getelementptr inbounds %struct.stv, %struct.stv* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %190, %193
  %195 = call i32 @read_reg(%struct.stv* %189, i64 %194, i32* %6)
  %196 = load i32, i32* %6, align 4
  %197 = and i32 %196, 31
  switch i32 %197, label %218 [
    i32 13, label %198
    i32 18, label %202
    i32 21, label %206
    i32 24, label %210
    i32 26, label %214
  ]

198:                                              ; preds = %188
  %199 = load i32, i32* @FEC_1_2, align 4
  %200 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %201 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  br label %222

202:                                              ; preds = %188
  %203 = load i32, i32* @FEC_2_3, align 4
  %204 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %205 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  br label %222

206:                                              ; preds = %188
  %207 = load i32, i32* @FEC_3_4, align 4
  %208 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %209 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  br label %222

210:                                              ; preds = %188
  %211 = load i32, i32* @FEC_5_6, align 4
  %212 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %213 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  br label %222

214:                                              ; preds = %188
  %215 = load i32, i32* @FEC_7_8, align 4
  %216 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  br label %222

218:                                              ; preds = %188
  %219 = load i32, i32* @FEC_NONE, align 4
  %220 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %221 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %218, %214, %210, %206, %202, %198
  %223 = load i32, i32* @ROLLOFF_35, align 4
  %224 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %225 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %222, %182
  br label %227

227:                                              ; preds = %226, %168
  %228 = load %struct.stv*, %struct.stv** %5, align 8
  %229 = getelementptr inbounds %struct.stv, %struct.stv* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @RCVMODE_NONE, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load %struct.stv*, %struct.stv** %5, align 8
  %235 = call i32 @get_cur_symbol_rate(%struct.stv* %234, i64* %7)
  %236 = load i64, i64* %7, align 8
  %237 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %238 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %237, i32 0, i32 2
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %233, %227
  ret i32 0
}

declare dso_local i32 @read_reg(%struct.stv*, i64, i32*) #1

declare dso_local i32 @get_cur_symbol_rate(%struct.stv*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
