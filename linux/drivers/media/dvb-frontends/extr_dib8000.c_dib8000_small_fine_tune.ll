; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_small_fine_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_small_fine_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@DQPSK = common dso_local global i32 0, align 4
@coeff_2k_sb_1seg_dqpsk = common dso_local global i32* null, align 8
@coeff_2k_sb_1seg = common dso_local global i32* null, align 8
@coeff_2k_sb_3seg_0dqpsk_1dqpsk = common dso_local global i32* null, align 8
@coeff_2k_sb_3seg_0dqpsk = common dso_local global i32* null, align 8
@coeff_2k_sb_3seg_1dqpsk = common dso_local global i32* null, align 8
@coeff_2k_sb_3seg = common dso_local global i32* null, align 8
@coeff_4k_sb_1seg_dqpsk = common dso_local global i32* null, align 8
@coeff_4k_sb_1seg = common dso_local global i32* null, align 8
@coeff_4k_sb_3seg_0dqpsk_1dqpsk = common dso_local global i32* null, align 8
@coeff_4k_sb_3seg_0dqpsk = common dso_local global i32* null, align 8
@coeff_4k_sb_3seg_1dqpsk = common dso_local global i32* null, align 8
@coeff_4k_sb_3seg = common dso_local global i32* null, align 8
@coeff_8k_sb_1seg_dqpsk = common dso_local global i32* null, align 8
@coeff_8k_sb_1seg = common dso_local global i32* null, align 8
@coeff_8k_sb_3seg_0dqpsk_1dqpsk = common dso_local global i32* null, align 8
@coeff_8k_sb_3seg_0dqpsk = common dso_local global i32* null, align 8
@coeff_8k_sb_3seg_1dqpsk = common dso_local global i32* null, align 8
@coeff_8k_sb_3seg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*)* @dib8000_small_fine_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_small_fine_tune(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  %6 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %7 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %8, i64 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %5, align 8
  %12 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %14 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dib8000_write_word(%struct.dib8000_state* %12, i32 352, i32 %15)
  %17 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %19 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dib8000_write_word(%struct.dib8000_state* %17, i32 353, i32 %20)
  %22 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 9
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 8
  %31 = or i32 %26, %30
  %32 = or i32 %31, 208
  %33 = or i32 %32, 5
  %34 = call i32 @dib8000_write_word(%struct.dib8000_state* %22, i32 351, i32 %33)
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %236

39:                                               ; preds = %1
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %160 [
    i32 131, label %43
    i32 130, label %101
    i32 128, label %159
    i32 129, label %159
  ]

43:                                               ; preds = %39
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DQPSK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32*, i32** @coeff_2k_sb_1seg_dqpsk, align 8
  store i32* %58, i32** %4, align 8
  br label %61

59:                                               ; preds = %48
  %60 = load i32*, i32** @coeff_2k_sb_1seg, align 8
  store i32* %60, i32** %4, align 8
  br label %61

61:                                               ; preds = %59, %57
  br label %100

62:                                               ; preds = %43
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DQPSK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %62
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DQPSK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32*, i32** @coeff_2k_sb_3seg_0dqpsk_1dqpsk, align 8
  store i32* %81, i32** %4, align 8
  br label %84

82:                                               ; preds = %71
  %83 = load i32*, i32** @coeff_2k_sb_3seg_0dqpsk, align 8
  store i32* %83, i32** %4, align 8
  br label %84

84:                                               ; preds = %82, %80
  br label %99

85:                                               ; preds = %62
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DQPSK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32*, i32** @coeff_2k_sb_3seg_1dqpsk, align 8
  store i32* %95, i32** %4, align 8
  br label %98

96:                                               ; preds = %85
  %97 = load i32*, i32** @coeff_2k_sb_3seg, align 8
  store i32* %97, i32** %4, align 8
  br label %98

98:                                               ; preds = %96, %94
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %61
  br label %218

101:                                              ; preds = %39
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DQPSK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i32*, i32** @coeff_4k_sb_1seg_dqpsk, align 8
  store i32* %116, i32** %4, align 8
  br label %119

117:                                              ; preds = %106
  %118 = load i32*, i32** @coeff_4k_sb_1seg, align 8
  store i32* %118, i32** %4, align 8
  br label %119

119:                                              ; preds = %117, %115
  br label %158

120:                                              ; preds = %101
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DQPSK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %120
  %130 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %131 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @DQPSK, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32*, i32** @coeff_4k_sb_3seg_0dqpsk_1dqpsk, align 8
  store i32* %139, i32** %4, align 8
  br label %142

140:                                              ; preds = %129
  %141 = load i32*, i32** @coeff_4k_sb_3seg_0dqpsk, align 8
  store i32* %141, i32** %4, align 8
  br label %142

142:                                              ; preds = %140, %138
  br label %157

143:                                              ; preds = %120
  %144 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %145 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @DQPSK, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = load i32*, i32** @coeff_4k_sb_3seg_1dqpsk, align 8
  store i32* %153, i32** %4, align 8
  br label %156

154:                                              ; preds = %143
  %155 = load i32*, i32** @coeff_4k_sb_3seg, align 8
  store i32* %155, i32** %4, align 8
  br label %156

156:                                              ; preds = %154, %152
  br label %157

157:                                              ; preds = %156, %142
  br label %158

158:                                              ; preds = %157, %119
  br label %218

159:                                              ; preds = %39, %39
  br label %160

160:                                              ; preds = %39, %159
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %160
  %166 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %167 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %166, i32 0, i32 2
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DQPSK, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %165
  %175 = load i32*, i32** @coeff_8k_sb_1seg_dqpsk, align 8
  store i32* %175, i32** %4, align 8
  br label %178

176:                                              ; preds = %165
  %177 = load i32*, i32** @coeff_8k_sb_1seg, align 8
  store i32* %177, i32** %4, align 8
  br label %178

178:                                              ; preds = %176, %174
  br label %217

179:                                              ; preds = %160
  %180 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %181 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %180, i32 0, i32 2
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @DQPSK, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %179
  %189 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %190 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %189, i32 0, i32 2
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @DQPSK, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %188
  %198 = load i32*, i32** @coeff_8k_sb_3seg_0dqpsk_1dqpsk, align 8
  store i32* %198, i32** %4, align 8
  br label %201

199:                                              ; preds = %188
  %200 = load i32*, i32** @coeff_8k_sb_3seg_0dqpsk, align 8
  store i32* %200, i32** %4, align 8
  br label %201

201:                                              ; preds = %199, %197
  br label %216

202:                                              ; preds = %179
  %203 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %204 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %203, i32 0, i32 2
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @DQPSK, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %202
  %212 = load i32*, i32** @coeff_8k_sb_3seg_1dqpsk, align 8
  store i32* %212, i32** %4, align 8
  br label %215

213:                                              ; preds = %202
  %214 = load i32*, i32** @coeff_8k_sb_3seg, align 8
  store i32* %214, i32** %4, align 8
  br label %215

215:                                              ; preds = %213, %211
  br label %216

216:                                              ; preds = %215, %201
  br label %217

217:                                              ; preds = %216, %178
  br label %218

218:                                              ; preds = %217, %158, %100
  store i32 0, i32* %3, align 4
  br label %219

219:                                              ; preds = %232, %218
  %220 = load i32, i32* %3, align 4
  %221 = icmp slt i32 %220, 8
  br i1 %221, label %222, label %235

222:                                              ; preds = %219
  %223 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %224 = load i32, i32* %3, align 4
  %225 = add nsw i32 343, %224
  %226 = load i32*, i32** %4, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @dib8000_write_word(%struct.dib8000_state* %223, i32 %225, i32 %230)
  br label %232

232:                                              ; preds = %222
  %233 = load i32, i32* %3, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %3, align 4
  br label %219

235:                                              ; preds = %219
  br label %236

236:                                              ; preds = %235, %1
  ret void
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
