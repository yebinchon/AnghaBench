; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32, %struct.stb0899_config* }
%struct.stb0899_config = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Initializing STB0899 ... \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"init device\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"init S2 demod\00", align 1
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"init S1 demod\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"init S2 FEC\00", align 1
@STB0899_S2FEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"init TST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stb0899_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stb0899_state*, align 8
  %5 = alloca %struct.stb0899_config*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.stb0899_state*, %struct.stb0899_state** %7, align 8
  store %struct.stb0899_state* %8, %struct.stb0899_state** %4, align 8
  %9 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %10 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %9, i32 0, i32 1
  %11 = load %struct.stb0899_config*, %struct.stb0899_config** %10, align 8
  store %struct.stb0899_config* %11, %struct.stb0899_config** %5, align 8
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %13 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FE_DEBUG, align 4
  %16 = call i32 @dprintk(i32 %14, i32 %15, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %18 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FE_DEBUG, align 4
  %21 = call i32 @dprintk(i32 %19, i32 %20, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %51, %1
  %23 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %24 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %23, i32 0, i32 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 65535
  br i1 %31, label %32, label %54

32:                                               ; preds = %22
  %33 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %34 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %35 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %34, i32 0, i32 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %43 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @stb0899_write_reg(%struct.stb0899_state* %33, i32 %41, i32 %49)
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %22

54:                                               ; preds = %22
  %55 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %56 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FE_DEBUG, align 4
  %59 = call i32 @dprintk(i32 %57, i32 %58, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %98, %54
  %61 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %62 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 65535
  br i1 %69, label %70, label %101

70:                                               ; preds = %60
  %71 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %72 = load i32, i32* @STB0899_S2DEMOD, align 4
  %73 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %74 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %73, i32 0, i32 3
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %82 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %90 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %89, i32 0, i32 3
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %71, i32 %72, i32 %80, i32 %88, i32 %96)
  br label %98

98:                                               ; preds = %70
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %60

101:                                              ; preds = %60
  %102 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %103 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @FE_DEBUG, align 4
  %106 = call i32 @dprintk(i32 %104, i32 %105, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %136, %101
  %108 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %109 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %108, i32 0, i32 2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 65535
  br i1 %116, label %117, label %139

117:                                              ; preds = %107
  %118 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %119 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %120 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %128 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @stb0899_write_reg(%struct.stb0899_state* %118, i32 %126, i32 %134)
  br label %136

136:                                              ; preds = %117
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %107

139:                                              ; preds = %107
  %140 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %141 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @FE_DEBUG, align 4
  %144 = call i32 @dprintk(i32 %142, i32 %143, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %183, %139
  %146 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %147 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 65535
  br i1 %154, label %155, label %186

155:                                              ; preds = %145
  %156 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %157 = load i32, i32* @STB0899_S2FEC, align 4
  %158 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %159 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %158, i32 0, i32 1
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %167 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %166, i32 0, i32 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %175 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %174, i32 0, i32 1
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load i32, i32* %3, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %156, i32 %157, i32 %165, i32 %173, i32 %181)
  br label %183

183:                                              ; preds = %155
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %145

186:                                              ; preds = %145
  %187 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %188 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @FE_DEBUG, align 4
  %191 = call i32 @dprintk(i32 %189, i32 %190, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %221, %186
  %193 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %194 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %193, i32 0, i32 0
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 65535
  br i1 %201, label %202, label %224

202:                                              ; preds = %192
  %203 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %204 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %205 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %204, i32 0, i32 0
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %213 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @stb0899_write_reg(%struct.stb0899_state* %203, i32 %211, i32 %219)
  br label %221

221:                                              ; preds = %202
  %222 = load i32, i32* %3, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %3, align 4
  br label %192

224:                                              ; preds = %192
  %225 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %226 = call i32 @stb0899_init_calc(%struct.stb0899_state* %225)
  %227 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %228 = call i32 @stb0899_diseqc_init(%struct.stb0899_state* %227)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

declare dso_local i32 @stb0899_init_calc(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_diseqc_init(%struct.stb0899_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
