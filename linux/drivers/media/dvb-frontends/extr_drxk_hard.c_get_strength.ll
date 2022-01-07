; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_get_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_get_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxk_state = type { %struct.s_cfg_agc, %struct.s_cfg_agc, %struct.s_cfg_agc, %struct.s_cfg_agc, %struct.s_cfg_agc, %struct.s_cfg_agc }
%struct.s_cfg_agc = type { i64, i32, i64, i64, i32 }

@DRXK_AGC_CTRL_AUTO = common dso_local global i64 0, align 8
@SCU_RAM_AGC_RF_IACCU_HI__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_RF_IACCU_HI_CO__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_IF_IACCU_HI__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_INGAIN_TGT_MIN__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxk_state*, i32*)* @get_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_strength(%struct.drxk_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drxk_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s_cfg_agc, align 8
  %8 = alloca %struct.s_cfg_agc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drxk_state* %0, %struct.drxk_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 50, i32* %14, align 4
  store i32 40, i32* %15, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %18 = call i64 @is_dvbt(%struct.drxk_state* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %22 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %21, i32 0, i32 5
  %23 = bitcast %struct.s_cfg_agc* %7 to i8*
  %24 = bitcast %struct.s_cfg_agc* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 40, i1 false)
  %25 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %26 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %25, i32 0, i32 4
  %27 = bitcast %struct.s_cfg_agc* %8 to i8*
  %28 = bitcast %struct.s_cfg_agc* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 40, i1 false)
  br label %52

29:                                               ; preds = %2
  %30 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %31 = call i64 @is_qam(%struct.drxk_state* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %35 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %34, i32 0, i32 3
  %36 = bitcast %struct.s_cfg_agc* %7 to i8*
  %37 = bitcast %struct.s_cfg_agc* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 40, i1 false)
  %38 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %39 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %38, i32 0, i32 2
  %40 = bitcast %struct.s_cfg_agc* %8 to i8*
  %41 = bitcast %struct.s_cfg_agc* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 40, i1 false)
  br label %51

42:                                               ; preds = %29
  %43 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %44 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %43, i32 0, i32 1
  %45 = bitcast %struct.s_cfg_agc* %7 to i8*
  %46 = bitcast %struct.s_cfg_agc* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 40, i1 false)
  %47 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %48 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %47, i32 0, i32 0
  %49 = bitcast %struct.s_cfg_agc* %8 to i8*
  %50 = bitcast %struct.s_cfg_agc* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 40, i1 false)
  br label %51

51:                                               ; preds = %42, %33
  br label %52

52:                                               ; preds = %51, %20
  %53 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DRXK_AGC_CTRL_AUTO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %142

57:                                               ; preds = %52
  %58 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %59 = load i32, i32* @SCU_RAM_AGC_RF_IACCU_HI__A, align 4
  %60 = call i32 @read16(%struct.drxk_state* %58, i32 %59, i32* %12)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %238

65:                                               ; preds = %57
  %66 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %67 = load i32, i32* @SCU_RAM_AGC_RF_IACCU_HI_CO__A, align 4
  %68 = call i32 @read16(%struct.drxk_state* %66, i32 %67, i32* %13)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %238

73:                                               ; preds = %65
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %74, %75
  %77 = icmp slt i32 %76, 65535
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %79, %80
  %82 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  br label %85

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 1
  store i32 65535, i32* %84, align 8
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  br label %100

100:                                              ; preds = %95, %85
  %101 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %103, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  br label %112

112:                                              ; preds = %107, %100
  %113 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %114, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %112
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 100, %123
  %125 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %7, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %127, %129
  %131 = trunc i64 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = mul i64 %124, %132
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = udiv i64 %133, %135
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %121, %112
  br label %142

142:                                              ; preds = %141, %52
  %143 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DRXK_AGC_CTRL_AUTO, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %222

147:                                              ; preds = %142
  %148 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %149 = load i32, i32* @SCU_RAM_AGC_IF_IACCU_HI__A, align 4
  %150 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 1
  %151 = call i32 @read16(%struct.drxk_state* %148, i32 %149, i32* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %238

156:                                              ; preds = %147
  %157 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %158 = load i32, i32* @SCU_RAM_AGC_INGAIN_TGT_MIN__A, align 4
  %159 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 4
  %160 = call i32 @read16(%struct.drxk_state* %157, i32 %158, i32* %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %3, align 4
  br label %238

165:                                              ; preds = %156
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %9, align 4
  %169 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp slt i64 %171, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 1
  store i32 %178, i32* %179, align 8
  br label %180

180:                                              ; preds = %175, %165
  %181 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %183, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 1
  store i32 %190, i32* %191, align 8
  br label %192

192:                                              ; preds = %187, %180
  %193 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %194, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %221

201:                                              ; preds = %192
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = mul i64 100, %203
  %205 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.s_cfg_agc, %struct.s_cfg_agc* %8, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %207, %209
  %211 = trunc i64 %210 to i32
  %212 = sext i32 %211 to i64
  %213 = mul i64 %204, %212
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = udiv i64 %213, %215
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = add i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %10, align 4
  br label %221

221:                                              ; preds = %201, %192
  br label %222

222:                                              ; preds = %221, %142
  %223 = load i32, i32* %9, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 65535, %227
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = udiv i64 %228, %230
  %232 = udiv i64 %231, 100
  %233 = trunc i64 %232 to i32
  %234 = load i32*, i32** %5, align 8
  store i32 %233, i32* %234, align 4
  br label %237

235:                                              ; preds = %222
  %236 = load i32*, i32** %5, align 8
  store i32 65535, i32* %236, align 4
  br label %237

237:                                              ; preds = %235, %225
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %237, %163, %154, %71, %63
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i64 @is_dvbt(%struct.drxk_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_qam(%struct.drxk_state*) #1

declare dso_local i32 @read16(%struct.drxk_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
