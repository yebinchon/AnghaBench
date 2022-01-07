; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_agc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_agc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32, i32, %struct.dibx000_agc_config*, %struct.TYPE_2__ }
%struct.dibx000_agc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.dibx000_agc_config* }

@.str = private unnamed_addr constant [50 x i8] c"no valid AGC configuration found for band 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"WBD: ref: %d, sel: %d, active: %d, alpha: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*, i32)* @dib7000p_set_agc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_set_agc_config(%struct.dib7000p_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib7000p_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dibx000_agc_config*, align 8
  %7 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dibx000_agc_config* null, %struct.dibx000_agc_config** %6, align 8
  %8 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %9 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %15 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %14, i32 0, i32 2
  %16 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %15, align 8
  %17 = icmp ne %struct.dibx000_agc_config* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %247

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %22 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %52, %19
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %26 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %32 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %34, i64 %36
  %38 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %45 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %47, i64 %49
  store %struct.dibx000_agc_config* %50, %struct.dibx000_agc_config** %6, align 8
  br label %55

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %23

55:                                               ; preds = %43, %23
  %56 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %57 = icmp eq %struct.dibx000_agc_config* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %247

63:                                               ; preds = %55
  %64 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %65 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %66 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %65, i32 0, i32 2
  store %struct.dibx000_agc_config* %64, %struct.dibx000_agc_config** %66, align 8
  %67 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %68 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %69 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %67, i32 75, i32 %70)
  %72 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %73 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %74 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %72, i32 76, i32 %75)
  %77 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %78 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %79 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %77, i32 77, i32 %80)
  %82 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %83 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %84 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 12
  %87 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %88 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %86, %89
  %91 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %82, i32 100, i32 %90)
  %92 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %93 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %94 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 5
  %97 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %98 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %96, %99
  %101 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %92, i32 101, i32 %100)
  %102 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %103 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %104 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 6
  %107 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %108 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %106, %109
  %111 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %102, i32 102, i32 %110)
  %112 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %113 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %63
  %117 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %118 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  br label %124

120:                                              ; preds = %63
  %121 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %122 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  br label %124

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %119, %116 ], [ %123, %120 ]
  %126 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %127 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %130 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %136 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %128, i32 %134, i32 %137)
  %139 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %140 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %124
  %144 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %145 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %146 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %145, i32 0, i32 13
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 12
  %149 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %150 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %148, %151
  %153 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %144, i32 105, i32 %152)
  br label %165

154:                                              ; preds = %124
  %155 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %156 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %157 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %156, i32 0, i32 13
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 12
  %160 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %161 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %159, %162
  %164 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %155, i32 105, i32 %163)
  br label %165

165:                                              ; preds = %154, %143
  %166 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %167 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %168 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 13
  %171 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %172 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %171, i32 0, i32 14
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 9
  %175 = or i32 %170, %174
  %176 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %177 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %176, i32 0, i32 12
  %178 = load i32, i32* %177, align 4
  %179 = shl i32 %178, 8
  %180 = or i32 %175, %179
  %181 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %166, i32 106, i32 %180)
  %182 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %183 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %184 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %183, i32 0, i32 15
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %182, i32 107, i32 %185)
  %187 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %188 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %189 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %188, i32 0, i32 16
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %187, i32 108, i32 %190)
  %192 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %193 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %194 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %193, i32 0, i32 17
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %192, i32 109, i32 %195)
  %197 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %198 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %199 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %198, i32 0, i32 18
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %197, i32 110, i32 %200)
  %202 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %203 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %204 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %203, i32 0, i32 19
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 8
  %207 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %208 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %207, i32 0, i32 20
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %206, %209
  %211 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %202, i32 111, i32 %210)
  %212 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %213 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %214 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %213, i32 0, i32 21
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %212, i32 112, i32 %215)
  %217 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %218 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %219 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %218, i32 0, i32 22
  %220 = load i32, i32* %219, align 4
  %221 = shl i32 %220, 8
  %222 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %223 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %222, i32 0, i32 23
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %221, %224
  %226 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %217, i32 113, i32 %225)
  %227 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %228 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %229 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %228, i32 0, i32 24
  %230 = load i32, i32* %229, align 4
  %231 = shl i32 %230, 8
  %232 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %233 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %232, i32 0, i32 25
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %231, %234
  %236 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %227, i32 114, i32 %235)
  %237 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %238 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %239 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %238, i32 0, i32 26
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 %240, 8
  %242 = load %struct.dibx000_agc_config*, %struct.dibx000_agc_config** %6, align 8
  %243 = getelementptr inbounds %struct.dibx000_agc_config, %struct.dibx000_agc_config* %242, i32 0, i32 27
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %241, %244
  %246 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %237, i32 115, i32 %245)
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %165, %58, %18
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
