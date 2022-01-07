; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dvb-pll.c_dvb_pll_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dvb-pll.c_dvb_pll_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_pll_desc = type { i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.dvb_pll_priv*, %struct.TYPE_5__ }
%struct.dvb_pll_priv = type { i32, i32, %struct.dvb_pll_desc*, %struct.i2c_adapter* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 (%struct.dvb_frontend.0*, i32)* }
%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.dvb_frontend.0 = type opaque
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i64*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pll_ida = common dso_local global i32 0, align 4
@DVB_PLL_MAX = common dso_local global i32 0, align 4
@id = common dso_local global i32* null, align 8
@DVB_PLL_UNDEFINED = common dso_local global i32 0, align 4
@pll_list = common dso_local global %struct.dvb_pll_desc** null, align 8
@dvb_pll_tuner_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s tuner, frequency range: %u...%u\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"dvb-pll[%d]\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" %d-%04x\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c": id# %d (%s) attached, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"insmod option\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"autodetected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @dvb_pll_attach(%struct.dvb_frontend* %0, i32 %1, %struct.i2c_adapter* %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca %struct.dvb_pll_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dvb_pll_desc*, align 8
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i64* null, i64** %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %21 = load i32, i32* @I2C_M_RD, align 4
  store i32 %21, i32* %20, align 8
  store %struct.dvb_pll_priv* null, %struct.dvb_pll_priv** %12, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64* @kmalloc(i32 1, i32 %22)
  store i64* %23, i64** %10, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %5, align 8
  br label %251

27:                                               ; preds = %4
  %28 = load i64*, i64** %10, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i64* %30, i64** %31, align 8
  %32 = load i32, i32* @DVB_PLL_MAX, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @ida_simple_get(i32* @pll_ida, i32 0, i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i64*, i64** %10, align 8
  %39 = call i32 @kfree(i64* %38)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %5, align 8
  br label %251

40:                                               ; preds = %27
  %41 = load i32*, i32** @id, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DVB_PLL_UNDEFINED, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = load i32*, i32** @id, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dvb_pll_desc**, %struct.dvb_pll_desc*** @pll_list, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.dvb_pll_desc** %54)
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load i32*, i32** @id, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %57, %48, %40
  %64 = load i32, i32* %9, align 4
  %65 = icmp ult i32 %64, 1
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.dvb_pll_desc**, %struct.dvb_pll_desc*** @pll_list, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.dvb_pll_desc** %68)
  %70 = icmp uge i32 %67, %69
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi i1 [ true, %63 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load %struct.dvb_pll_desc**, %struct.dvb_pll_desc*** @pll_list, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %75, i64 %77
  %79 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %78, align 8
  store %struct.dvb_pll_desc* %79, %struct.dvb_pll_desc** %14, align 8
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %81 = icmp ne %struct.i2c_adapter* %80, null
  br i1 %81, label %82, label %117

82:                                               ; preds = %71
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %91, align 8
  %93 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %94 = bitcast %struct.dvb_frontend* %93 to %struct.dvb_frontend.0*
  %95 = call i32 %92(%struct.dvb_frontend.0* %94, i32 1)
  br label %96

96:                                               ; preds = %88, %82
  %97 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %98 = call i32 @i2c_transfer(%struct.i2c_adapter* %97, %struct.i2c_msg* %11, i32 1)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %246

102:                                              ; preds = %96
  %103 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %104 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %105, align 8
  %107 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %110 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %111, align 8
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %114 = bitcast %struct.dvb_frontend* %113 to %struct.dvb_frontend.0*
  %115 = call i32 %112(%struct.dvb_frontend.0* %114, i32 0)
  br label %116

116:                                              ; preds = %108, %102
  br label %117

117:                                              ; preds = %116, %71
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call %struct.dvb_pll_priv* @kzalloc(i32 24, i32 %118)
  store %struct.dvb_pll_priv* %119, %struct.dvb_pll_priv** %12, align 8
  %120 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  %121 = icmp ne %struct.dvb_pll_priv* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  br label %246

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  %126 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %128 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  %129 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %128, i32 0, i32 3
  store %struct.i2c_adapter* %127, %struct.i2c_adapter** %129, align 8
  %130 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %131 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  %132 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %131, i32 0, i32 2
  store %struct.dvb_pll_desc* %130, %struct.dvb_pll_desc** %132, align 8
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  %135 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %137 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = call i32 @memcpy(%struct.TYPE_6__* %138, i32* @dvb_pll_tuner_ops, i32 4)
  %140 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %141 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %147 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @strscpy(i32 %145, i32 %148, i32 4)
  %150 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %151 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %154 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i32 %152, i32* %157, align 4
  %158 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %159 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %162 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i32 %160, i32* %165, align 8
  %166 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %167 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %171 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %174 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %169, i32 %172, i32 %175)
  %177 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %178 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %123
  %182 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %183 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  store i32* null, i32** %185, align 8
  br label %186

186:                                              ; preds = %181, %123
  %187 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %188 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %193 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32* null, i32** %195, align 8
  br label %196

196:                                              ; preds = %191, %186
  %197 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  %198 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %199 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %198, i32 0, i32 0
  store %struct.dvb_pll_priv* %197, %struct.dvb_pll_priv** %199, align 8
  %200 = load i64, i64* @debug, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %196
  %203 = load i32*, i32** @id, align 8
  %204 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  %205 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %242

212:                                              ; preds = %202, %196
  %213 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  %214 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %216)
  %218 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %219 = icmp ne %struct.i2c_adapter* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %222 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %221)
  %223 = load i32, i32* %7, align 4
  %224 = call i32 (i8*, i32, i32, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %220, %212
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %14, align 8
  %228 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** @id, align 8
  %231 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %12, align 8
  %232 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %230, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp eq i32 %236, %237
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)
  %241 = call i32 (i8*, i32, i32, ...) @pr_cont(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %226, i32 %229, i8* %240)
  br label %242

242:                                              ; preds = %225, %202
  %243 = load i64*, i64** %10, align 8
  %244 = call i32 @kfree(i64* %243)
  %245 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  store %struct.dvb_frontend* %245, %struct.dvb_frontend** %5, align 8
  br label %251

246:                                              ; preds = %122, %101
  %247 = load i64*, i64** %10, align 8
  %248 = call i32 @kfree(i64* %247)
  %249 = load i32, i32* %15, align 4
  %250 = call i32 @ida_simple_remove(i32* @pll_ida, i32 %249)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %5, align 8
  br label %251

251:                                              ; preds = %246, %242, %37, %26
  %252 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  ret %struct.dvb_frontend* %252
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.dvb_pll_desc**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local %struct.dvb_pll_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i64, ...) #1

declare dso_local i32 @pr_cont(i8*, i32, i32, ...) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
