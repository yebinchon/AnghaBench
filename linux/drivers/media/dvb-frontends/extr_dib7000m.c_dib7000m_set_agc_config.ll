; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_agc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_agc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i64, i32, %struct.dibx000_agc_config*, %struct.TYPE_2__ }
%struct.dibx000_agc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.dibx000_agc_config* }

@.str = private unnamed_addr constant [50 x i8] c"no valid AGC configuration found for band 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"WBD: ref: %d, sel: %d, active: %d, alpha: %d\0A\00", align 1
@__const.dib7000m_set_agc_config.b = private unnamed_addr constant [9 x i32] [i32 676, i32 696, i32 717, i32 737, i32 758, i32 778, i32 799, i32 819, i32 840], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*, i32)* @dib7000m_set_agc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_set_agc_config(%struct.dib7000m_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib7000m_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dibx000_agc_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [9 x i32], align 16
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dibx000_agc_config* null, %struct.dibx000_agc_config** %6, align 8
  %9 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %10 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %16 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %15, i32 0, i32 3
  %17 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %16, align 8
  %18 = icmp ne %struct.dibx000_agc_config* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %275

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %23 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %53, %20
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %27 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %33 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %32, i32 0, i32 4
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
  %45 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %46 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %45, i32 0, i32 4
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
  br label %275

64:                                               ; preds = %56
  %65 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %66 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %67 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %66, i32 0, i32 3
  store %struct.dibx000_agc_config* %65, %struct.dibx000_agc_config** %67, align 8
  %68 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %69 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %70 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %68, i32 72, i32 %71)
  %73 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %74 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %75 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %73, i32 73, i32 %76)
  %78 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %79 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %80 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %78, i32 74, i32 %81)
  %83 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %84 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %85 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 12
  %88 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %89 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %87, %90
  %92 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %83, i32 97, i32 %91)
  %93 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %94 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %95 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 5
  %98 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %99 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %97, %100
  %102 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %93, i32 98, i32 %101)
  %103 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %104 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %105 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 6
  %108 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %109 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %107, %110
  %112 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %103, i32 99, i32 %111)
  %113 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %114 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %64
  %118 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %119 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %118, i32 0, i32 1
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
  %142 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %143 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %126
  %147 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %148 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %149 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %147, i32 102, i32 %151)
  br label %159

153:                                              ; preds = %126
  %154 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %155 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %156 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %154, i32 102, i32 %157)
  br label %159

159:                                              ; preds = %153, %146
  %160 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %161 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %162 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %161, i32 0, i32 13
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 9
  %165 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %166 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %165, i32 0, i32 12
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 8
  %169 = or i32 %164, %168
  %170 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %160, i32 103, i32 %169)
  %171 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %172 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %173 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %172, i32 0, i32 14
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %171, i32 104, i32 %174)
  %176 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %177 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %178 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %177, i32 0, i32 15
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %176, i32 105, i32 %179)
  %181 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %182 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %183 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %182, i32 0, i32 16
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %181, i32 106, i32 %184)
  %186 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %187 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %188 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %187, i32 0, i32 17
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %186, i32 107, i32 %189)
  %191 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %192 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %193 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %192, i32 0, i32 18
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %194, 8
  %196 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %197 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %196, i32 0, i32 19
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %195, %198
  %200 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %191, i32 108, i32 %199)
  %201 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %202 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %203 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %202, i32 0, i32 20
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 8
  %206 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %207 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %206, i32 0, i32 21
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %205, %208
  %210 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %201, i32 109, i32 %209)
  %211 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %212 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %213 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %212, i32 0, i32 22
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 8
  %216 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %217 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %216, i32 0, i32 23
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %215, %218
  %220 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %211, i32 110, i32 %219)
  %221 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %222 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %223 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %222, i32 0, i32 24
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 8
  %226 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %227 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %226, i32 0, i32 25
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %225, %228
  %230 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %221, i32 111, i32 %229)
  %231 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %232 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp sgt i32 %233, 16384
  br i1 %234, label %235, label %256

235:                                              ; preds = %159
  %236 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %237 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %238 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %237, i32 0, i32 26
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %236, i32 71, i32 %239)
  %241 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %242 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %243 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %242, i32 929)
  %244 = and i32 %243, 65507
  %245 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %246 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %245, i32 0, i32 27
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 4
  %249 = or i32 %244, %248
  %250 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %251 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %250, i32 0, i32 11
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 2
  %254 = or i32 %249, %253
  %255 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %241, i32 929, i32 %254)
  br label %274

256:                                              ; preds = %159
  %257 = bitcast [9 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %257, i8* align 16 bitcast ([9 x i32]* @__const.dib7000m_set_agc_config.b to i8*), i64 36, i1 false)
  store i32 0, i32* %7, align 4
  br label %258

258:                                              ; preds = %270, %256
  %259 = load i32, i32* %7, align 4
  %260 = icmp slt i32 %259, 9
  br i1 %260, label %261, label %273

261:                                              ; preds = %258
  %262 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 88, %263
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %262, i32 %264, i32 %268)
  br label %270

270:                                              ; preds = %261
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %7, align 4
  br label %258

273:                                              ; preds = %258
  br label %274

274:                                              ; preds = %273, %235
  store i32 0, i32* %3, align 4
  br label %275

275:                                              ; preds = %274, %59, %19
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
