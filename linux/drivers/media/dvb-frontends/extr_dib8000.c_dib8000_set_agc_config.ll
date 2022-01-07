; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_agc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_agc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, i64, i32, %struct.dibx000_agc_config*, %struct.TYPE_2__ }
%struct.dibx000_agc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.dibx000_agc_config* }

@.str = private unnamed_addr constant [50 x i8] c"no valid AGC configuration found for band 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"WBD: ref: %d, sel: %d, active: %d, alpha: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32)* @dib8000_set_agc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_agc_config(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dibx000_agc_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dibx000_agc_config* null, %struct.dibx000_agc_config** %6, align 8
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %10 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %16 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %15, i32 0, i32 3
  %17 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %16, align 8
  %18 = icmp ne %struct.dibx000_agc_config* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %274

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %23 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %53, %20
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %27 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %35, i64 %37
  %39 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %46 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %48, i64 %50
  store %struct.dibx000_agc_config* %51, %struct.dibx000_agc_config** %6, align 8
  br label %56

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %24

56:                                               ; preds = %44, %24
  %57 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %58 = icmp eq %struct.dibx000_agc_config* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %274

64:                                               ; preds = %56
  %65 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %66 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %67 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %66, i32 0, i32 3
  store %struct.dibx000_agc_config* %65, %struct.dibx000_agc_config** %67, align 8
  %68 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %69 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %70 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dib8000_write_word(%struct.dib8000_state* %68, i32 76, i32 %71)
  %73 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %74 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %75 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dib8000_write_word(%struct.dib8000_state* %73, i32 77, i32 %76)
  %78 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %79 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %80 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dib8000_write_word(%struct.dib8000_state* %78, i32 78, i32 %81)
  %83 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %84 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %85 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 12
  %88 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %89 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %87, %90
  %92 = call i32 @dib8000_write_word(%struct.dib8000_state* %83, i32 101, i32 %91)
  %93 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %94 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %95 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 5
  %98 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %99 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %97, %100
  %102 = call i32 @dib8000_write_word(%struct.dib8000_state* %93, i32 102, i32 %101)
  %103 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %104 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %105 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 6
  %108 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %109 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %107, %110
  %112 = call i32 @dib8000_write_word(%struct.dib8000_state* %103, i32 103, i32 %111)
  %113 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %114 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %64
  %118 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %119 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  br label %126

121:                                              ; preds = %64
  %122 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %123 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi i64 [ %120, %117 ], [ %125, %121 ]
  %128 = trunc i64 %127 to i32
  %129 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %130 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %133 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %132, i32 0, i32 12
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %139 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %138, i32 0, i32 11
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %131, i32 %137, i32 %140)
  %142 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %143 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %126
  %147 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %148 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %149 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @dib8000_write_word(%struct.dib8000_state* %147, i32 106, i32 %151)
  br label %159

153:                                              ; preds = %126
  %154 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %155 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %156 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dib8000_write_word(%struct.dib8000_state* %154, i32 106, i32 %157)
  br label %159

159:                                              ; preds = %153, %146
  %160 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %161 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 32912
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %166 = call i32 @dib8000_read_word(%struct.dib8000_state* %165, i32 922)
  %167 = and i32 %166, 12
  store i32 %167, i32* %8, align 4
  %168 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %171 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %170, i32 0, i32 11
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 2
  %174 = or i32 %169, %173
  %175 = call i32 @dib8000_write_word(%struct.dib8000_state* %168, i32 922, i32 %174)
  br label %176

176:                                              ; preds = %164, %159
  %177 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %178 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %179 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %178, i32 0, i32 13
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 9
  %182 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %183 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %182, i32 0, i32 12
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 8
  %186 = or i32 %181, %185
  %187 = call i32 @dib8000_write_word(%struct.dib8000_state* %177, i32 107, i32 %186)
  %188 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %189 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %190 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %189, i32 0, i32 14
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @dib8000_write_word(%struct.dib8000_state* %188, i32 108, i32 %191)
  %193 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %194 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %195 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %194, i32 0, i32 15
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @dib8000_write_word(%struct.dib8000_state* %193, i32 109, i32 %196)
  %198 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %199 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %200 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %199, i32 0, i32 16
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @dib8000_write_word(%struct.dib8000_state* %198, i32 110, i32 %201)
  %203 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %204 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %205 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %204, i32 0, i32 17
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @dib8000_write_word(%struct.dib8000_state* %203, i32 111, i32 %206)
  %208 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %209 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %210 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %209, i32 0, i32 18
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 %211, 8
  %213 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %214 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %213, i32 0, i32 19
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %212, %215
  %217 = call i32 @dib8000_write_word(%struct.dib8000_state* %208, i32 112, i32 %216)
  %218 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %219 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %220 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %219, i32 0, i32 20
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 8
  %223 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %224 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %223, i32 0, i32 21
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %222, %225
  %227 = call i32 @dib8000_write_word(%struct.dib8000_state* %218, i32 113, i32 %226)
  %228 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %229 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %230 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %229, i32 0, i32 22
  %231 = load i32, i32* %230, align 4
  %232 = shl i32 %231, 8
  %233 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %234 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %233, i32 0, i32 23
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %232, %235
  %237 = call i32 @dib8000_write_word(%struct.dib8000_state* %228, i32 114, i32 %236)
  %238 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %239 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %240 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %239, i32 0, i32 24
  %241 = load i32, i32* %240, align 4
  %242 = shl i32 %241, 8
  %243 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %244 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %243, i32 0, i32 25
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %242, %245
  %247 = call i32 @dib8000_write_word(%struct.dib8000_state* %238, i32 115, i32 %246)
  %248 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %249 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %250 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %249, i32 0, i32 26
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @dib8000_write_word(%struct.dib8000_state* %248, i32 75, i32 %251)
  %253 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %254 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 32912
  br i1 %256, label %257, label %273

257:                                              ; preds = %176
  %258 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %259 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %260 = call i32 @dib8000_read_word(%struct.dib8000_state* %259, i32 923)
  %261 = and i32 %260, 65507
  %262 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %263 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %262, i32 0, i32 27
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %264, 4
  %266 = or i32 %261, %265
  %267 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %268 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %267, i32 0, i32 11
  %269 = load i32, i32* %268, align 4
  %270 = shl i32 %269, 2
  %271 = or i32 %266, %270
  %272 = call i32 @dib8000_write_word(%struct.dib8000_state* %258, i32 923, i32 %271)
  br label %273

273:                                              ; preds = %257, %176
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %273, %59, %19
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
