; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_t_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_t_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn88443x_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.dtv_frontend_properties = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }

@SSEQRD_T = common dso_local global i32 0, align 4
@SSEQRD_T_SSEQSTRD_MASK = common dso_local global i32 0, align 4
@SSEQRD_T_SSEQSTRD_SYNC = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@SSEQRD_T_SSEQSTRD_FRAME_SYNC = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@AGCRDU_T = common dso_local global i32 0, align 4
@AGCRDL_T = common dso_local global i32 0, align 4
@FE_SCALE_RELATIVE = common dso_local global i8* null, align 8
@CNRDU_T = common dso_local global i32 0, align 4
@CNRDL_T = common dso_local global i32 0, align 4
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@BERFLG_T = common dso_local global i32 0, align 4
@BERFLG_T_BERVRDYA = common dso_local global i32 0, align 4
@BERRDU_T = common dso_local global i32 0, align 4
@BERRDM_T = common dso_local global i32 0, align 4
@BERRDL_T = common dso_local global i32 0, align 4
@BERLENRDU_T = common dso_local global i32 0, align 4
@BERLENRDL_T = common dso_local global i32 0, align 4
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mn88443x_priv*, %struct.dtv_frontend_properties*, i32*)* @mn88443x_t_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88443x_t_read_status(%struct.mn88443x_priv* %0, %struct.dtv_frontend_properties* %1, i32* %2) #0 {
  %4 = alloca %struct.mn88443x_priv*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mn88443x_priv* %0, %struct.mn88443x_priv** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %4, align 8
  %20 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %19, i32 0, i32 0
  %21 = load %struct.regmap*, %struct.regmap** %20, align 8
  store %struct.regmap* %21, %struct.regmap** %7, align 8
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = load i32, i32* @SSEQRD_T, align 4
  %24 = call i32 @regmap_read(%struct.regmap* %22, i32 %23, i32* %8)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SSEQRD_T_SSEQSTRD_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SSEQRD_T_SSEQSTRD_SYNC, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load i32, i32* @FE_HAS_VITERBI, align 4
  %34 = load i32, i32* @FE_HAS_SYNC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FE_HAS_LOCK, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %3
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SSEQRD_T_SSEQSTRD_FRAME_SYNC, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %47 = load i32, i32* @FE_HAS_CARRIER, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i8* %53, i8** %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %52
  %66 = load %struct.regmap*, %struct.regmap** %7, align 8
  %67 = load i32, i32* @AGCRDU_T, align 4
  %68 = call i32 @regmap_read(%struct.regmap* %66, i32 %67, i32* %11)
  %69 = load %struct.regmap*, %struct.regmap** %7, align 8
  %70 = load i32, i32* @AGCRDL_T, align 4
  %71 = call i32 @regmap_read(%struct.regmap* %69, i32 %70, i32* %13)
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %15, align 4
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i8* %79, i8** %85, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 %86, i32* %92, align 8
  br label %93

93:                                               ; preds = %65, %52
  %94 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %95 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %96 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i8* %94, i8** %100, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FE_HAS_VITERBI, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %148

106:                                              ; preds = %93
  %107 = load %struct.regmap*, %struct.regmap** %7, align 8
  %108 = load i32, i32* @CNRDU_T, align 4
  %109 = call i32 @regmap_read(%struct.regmap* %107, i32 %108, i32* %11)
  %110 = load %struct.regmap*, %struct.regmap** %7, align 8
  %111 = load i32, i32* @CNRDL_T, align 4
  %112 = call i32 @regmap_read(%struct.regmap* %110, i32 %111, i32* %13)
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115, %106
  %119 = load i32, i32* %11, align 4
  %120 = shl i32 %119, 8
  %121 = load i32, i32* %13, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @intlog10(i32 %122)
  %124 = sub nsw i32 80807124, %123
  %125 = add nsw i32 %124, 3355443
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = mul nsw i32 %126, 10000
  %128 = call i32 @div_u64(i32 %127, i32 16777216)
  store i32 %128, i32* %16, align 4
  br label %130

129:                                              ; preds = %115
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %129, %118
  %131 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %135 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  store i8* %134, i8** %140, align 8
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %143 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i32 %141, i32* %147, align 8
  br label %148

148:                                              ; preds = %130, %93
  %149 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %150 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %151 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  store i8* %149, i8** %155, align 8
  %156 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %157 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %158 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  store i8* %156, i8** %162, align 8
  %163 = load %struct.regmap*, %struct.regmap** %7, align 8
  %164 = load i32, i32* @BERFLG_T, align 4
  %165 = call i32 @regmap_read(%struct.regmap* %163, i32 %164, i32* %10)
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @FE_HAS_VITERBI, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %243

171:                                              ; preds = %148
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @BERFLG_T_BERVRDYA, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %243

176:                                              ; preds = %171
  %177 = load %struct.regmap*, %struct.regmap** %7, align 8
  %178 = load i32, i32* @BERRDU_T, align 4
  %179 = call i32 @regmap_read(%struct.regmap* %177, i32 %178, i32* %11)
  %180 = load %struct.regmap*, %struct.regmap** %7, align 8
  %181 = load i32, i32* @BERRDM_T, align 4
  %182 = call i32 @regmap_read(%struct.regmap* %180, i32 %181, i32* %12)
  %183 = load %struct.regmap*, %struct.regmap** %7, align 8
  %184 = load i32, i32* @BERRDL_T, align 4
  %185 = call i32 @regmap_read(%struct.regmap* %183, i32 %184, i32* %13)
  %186 = load i32, i32* %11, align 4
  %187 = shl i32 %186, 16
  %188 = load i32, i32* %12, align 4
  %189 = shl i32 %188, 8
  %190 = or i32 %187, %189
  %191 = load i32, i32* %13, align 4
  %192 = or i32 %190, %191
  store i32 %192, i32* %17, align 4
  %193 = load %struct.regmap*, %struct.regmap** %7, align 8
  %194 = load i32, i32* @BERLENRDU_T, align 4
  %195 = call i32 @regmap_read(%struct.regmap* %193, i32 %194, i32* %11)
  %196 = load %struct.regmap*, %struct.regmap** %7, align 8
  %197 = load i32, i32* @BERLENRDL_T, align 4
  %198 = call i32 @regmap_read(%struct.regmap* %196, i32 %197, i32* %13)
  %199 = load i32, i32* %11, align 4
  %200 = shl i32 %199, 8
  %201 = load i32, i32* %13, align 4
  %202 = or i32 %200, %201
  %203 = mul nsw i32 %202, 203
  %204 = mul nsw i32 %203, 8
  store i32 %204, i32* %18, align 4
  %205 = load i32, i32* %18, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %242

207:                                              ; preds = %176
  %208 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %209 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  store i32 1, i32* %210, align 8
  %211 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %212 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %213 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  store i8* %211, i8** %217, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %220 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  store i32 %218, i32* %224, align 8
  %225 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %226 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  %228 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %229 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %230 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  store i8* %228, i8** %234, align 8
  %235 = load i32, i32* %18, align 4
  %236 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %237 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i64 0
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  store i32 %235, i32* %241, align 8
  br label %242

242:                                              ; preds = %207, %176
  br label %243

243:                                              ; preds = %242, %171, %148
  ret i32 0
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @intlog10(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
