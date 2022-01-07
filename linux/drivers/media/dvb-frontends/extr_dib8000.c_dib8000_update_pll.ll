; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_update_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_update_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dibx000_bandwidth_config = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Updating pll (prediv: old =  %d new = %d ; loopdiv : old = %d new = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Old Internal = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Xtal = %d , New Fmem = %d New Fdemod = %d, New Fsampling = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"New Internal = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Waiting for PLL to lock\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"PLL Updated with prediv = %d and loopdiv = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"PLL: Bandwidth Change %d MHz -> %d MHz (prediv: %d->%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"PLL: New Setting for %d MHz Bandwidth (prediv: %d, ratio: %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"PLL: Update ratio (prediv: %d, ratio: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dibx000_bandwidth_config*, i32, i32)* @dib8000_update_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_update_pll(%struct.dvb_frontend* %0, %struct.dibx000_bandwidth_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.dibx000_bandwidth_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dib8000_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store %struct.dibx000_bandwidth_config* %1, %struct.dibx000_bandwidth_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = load %struct.dib8000_state*, %struct.dib8000_state** %19, align 8
  store %struct.dib8000_state* %20, %struct.dib8000_state** %10, align 8
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %22 = call i32 @dib8000_read_word(%struct.dib8000_state* %21, i32 1856)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %12, align 4
  %30 = and i32 %29, 63
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = ashr i32 %31, 6
  %33 = and i32 %32, 63
  store i32 %33, i32* %13, align 4
  %34 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %35 = icmp eq %struct.dibx000_bandwidth_config* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %4
  %37 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %38 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %44 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %242

51:                                               ; preds = %42, %36
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %54 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %58 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %56, i32 %59)
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %62 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 32912
  br i1 %64, label %65, label %151

65:                                               ; preds = %51
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, 61440
  store i32 %67, i32* %12, align 4
  %68 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %69 = call i32 @dib8000_read_word(%struct.dib8000_state* %68, i32 1857)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, -32769
  %73 = call i32 @dib8000_write_word(%struct.dib8000_state* %70, i32 1857, i32 %72)
  %74 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %77 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 63
  %80 = shl i32 %79, 6
  %81 = or i32 %75, %80
  %82 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %83 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 63
  %86 = or i32 %81, %85
  %87 = call i32 @dib8000_write_word(%struct.dib8000_state* %74, i32 1856, i32 %86)
  %88 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %89 = call i32 @dib8000_read32(%struct.dib8000_state* %88, i32 23)
  %90 = sdiv i32 %89, 1000
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sdiv i32 %93, %94
  %96 = mul nsw i32 2, %95
  %97 = load i32, i32* %14, align 4
  %98 = mul nsw i32 %96, %97
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %101 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %99, %102
  %104 = mul nsw i32 1000, %103
  %105 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %106 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %104, %107
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sdiv i32 %110, 1000
  %112 = load i32, i32* %16, align 4
  %113 = sdiv i32 %112, 2000
  %114 = load i32, i32* %16, align 4
  %115 = sdiv i32 %114, 8000
  %116 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %111, i32 %113, i32 %115)
  %117 = load i32, i32* %16, align 4
  %118 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sdiv i32 %120, 2
  %122 = ashr i32 %121, 16
  %123 = and i32 %122, 65535
  %124 = call i32 @dib8000_write_word(%struct.dib8000_state* %119, i32 23, i32 %123)
  %125 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sdiv i32 %126, 2
  %128 = and i32 %127, 65535
  %129 = call i32 @dib8000_write_word(%struct.dib8000_state* %125, i32 24, i32 %128)
  %130 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, 32768
  %133 = call i32 @dib8000_write_word(%struct.dib8000_state* %130, i32 1857, i32 %132)
  br label %134

134:                                              ; preds = %140, %65
  %135 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %136 = call i32 @dib8000_read_word(%struct.dib8000_state* %135, i32 1856)
  %137 = ashr i32 %136, 15
  %138 = and i32 %137, 1
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %134

142:                                              ; preds = %134
  %143 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %144 = call i32 @dib8000_read_word(%struct.dib8000_state* %143, i32 1856)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = and i32 %145, 63
  %147 = load i32, i32* %12, align 4
  %148 = ashr i32 %147, 6
  %149 = and i32 %148, 63
  %150 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %149)
  br label %241

151:                                              ; preds = %51
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %154 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %152, %155
  br i1 %156, label %157, label %216

157:                                              ; preds = %151
  %158 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %159 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 1000
  %162 = load i32, i32* %8, align 4
  %163 = sdiv i32 %162, 1000
  %164 = load i32, i32* %15, align 4
  %165 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %166 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %161, i32 %163, i32 %164, i32 %170)
  %172 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %173 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %205

180:                                              ; preds = %157
  %181 = load i32, i32* %8, align 4
  %182 = sdiv i32 %181, 1000
  %183 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %184 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %190 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %182, i32 %188, i32 %194)
  %196 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %197 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %198 = call i32 @dib8000_read_word(%struct.dib8000_state* %197, i32 902)
  %199 = or i32 %198, 8
  %200 = call i32 @dib8000_write_word(%struct.dib8000_state* %196, i32 902, i32 %199)
  %201 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %202 = call i32 @dib8000_reset_pll(%struct.dib8000_state* %201)
  %203 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %204 = call i32 @dib8000_write_word(%struct.dib8000_state* %203, i32 898, i32 4)
  br label %212

205:                                              ; preds = %157
  %206 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %207 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %9, align 4
  br label %212

212:                                              ; preds = %205, %180
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %215 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %212, %151
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %216
  %220 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %221 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %225, i32 %226)
  %228 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %229 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  %230 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 8
  %236 = load i32, i32* %9, align 4
  %237 = shl i32 %236, 0
  %238 = or i32 %235, %237
  %239 = call i32 @dib8000_write_word(%struct.dib8000_state* %228, i32 901, i32 %238)
  br label %240

240:                                              ; preds = %219, %216
  br label %241

241:                                              ; preds = %240, %142
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %241, %48
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_read32(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_reset_pll(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
