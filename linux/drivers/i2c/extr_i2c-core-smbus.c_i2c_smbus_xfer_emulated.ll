; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_xfer_emulated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_xfer_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.i2c_msg = type { i16, i32, i8*, i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I2C_M_RD = common dso_local global i16 0, align 2
@I2C_M_RECV_LEN = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [29 x i8] c"Invalid block write size %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid block %s size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i16 0, align 2
@EIO = common dso_local global i32 0, align 4
@I2C_M_DMA_SAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i8, i32, %union.i2c_smbus_data*)* @i2c_smbus_xfer_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_smbus_xfer_emulated(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i8 zeroext %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca [2 x %struct.i2c_msg], align 16
  %24 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i8 %4, i8* %13, align 1
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %25 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %26 = add nsw i32 %25, 3
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %30 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %31 = add nsw i32 %30, 2
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %18, align 8
  %34 = load i8, i8* %12, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @I2C_SMBUS_READ, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 2, i32 1
  store i32 %40, i32* %19, align 4
  store i8 0, i8* %21, align 1
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 0
  %43 = load i16, i16* %11, align 2
  store i16 %43, i16* %42, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 2
  store i8* %29, i8** %45, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 3
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i64 1
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 0
  %50 = load i16, i16* %11, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @I2C_M_RD, align 2
  %53 = zext i16 %52 to i32
  %54 = or i32 %51, %53
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %49, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 2
  store i8* %33, i8** %57, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 3
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %58, align 8
  %60 = load i8, i8* %13, align 1
  %61 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %60, i8* %61, align 16
  %62 = load i32, i32* %14, align 4
  switch i32 %62, label %387 [
    i32 129, label %63
    i32 133, label %83
    i32 132, label %99
    i32 128, label %116
    i32 130, label %141
    i32 135, label %159
    i32 134, label %235
    i32 131, label %305
  ]

63:                                               ; preds = %7
  %64 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load i16, i16* %11, align 2
  %67 = zext i16 %66 to i32
  %68 = load i8, i8* %12, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* @I2C_SMBUS_READ, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i16, i16* @I2C_M_RD, align 2
  %75 = zext i16 %74 to i32
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 0, %76 ]
  %79 = or i32 %67, %78
  %80 = trunc i32 %79 to i16
  %81 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 0
  store i16 %80, i16* %82, align 16
  store i32 1, i32* %19, align 4
  br label %394

83:                                               ; preds = %7
  %84 = load i8, i8* %12, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8, i8* @I2C_SMBUS_READ, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load i16, i16* @I2C_M_RD, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* %11, align 2
  %93 = zext i16 %92 to i32
  %94 = or i32 %91, %93
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 0
  store i16 %95, i16* %97, align 16
  store i32 1, i32* %19, align 4
  br label %98

98:                                               ; preds = %89, %83
  br label %394

99:                                               ; preds = %7
  %100 = load i8, i8* %12, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @I2C_SMBUS_READ, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %115

108:                                              ; preds = %99
  %109 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 1
  store i32 2, i32* %110, align 4
  %111 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %112 = bitcast %union.i2c_smbus_data* %111 to i8*
  %113 = load i8, i8* %112, align 8
  %114 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %113, i8* %114, align 1
  br label %115

115:                                              ; preds = %108, %105
  br label %394

116:                                              ; preds = %7
  %117 = load i8, i8* %12, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8, i8* @I2C_SMBUS_READ, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 1
  store i32 2, i32* %124, align 4
  br label %140

125:                                              ; preds = %116
  %126 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i32 0, i32 1
  store i32 3, i32* %127, align 4
  %128 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %129 = bitcast %union.i2c_smbus_data* %128 to i32*
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 255
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %132, i8* %133, align 1
  %134 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %135 = bitcast %union.i2c_smbus_data* %134 to i32*
  %136 = load i32, i32* %135, align 8
  %137 = ashr i32 %136, 8
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %138, i8* %139, align 2
  br label %140

140:                                              ; preds = %125, %122
  br label %394

141:                                              ; preds = %7
  store i32 2, i32* %19, align 4
  %142 = load i8, i8* @I2C_SMBUS_READ, align 1
  store i8 %142, i8* %12, align 1
  %143 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i32 0, i32 1
  store i32 3, i32* %144, align 4
  %145 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i32 0, i32 1
  store i32 2, i32* %146, align 4
  %147 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %148 = bitcast %union.i2c_smbus_data* %147 to i32*
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 255
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %151, i8* %152, align 1
  %153 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %154 = bitcast %union.i2c_smbus_data* %153 to i32*
  %155 = load i32, i32* %154, align 8
  %156 = ashr i32 %155, 8
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %157, i8* %158, align 2
  br label %394

159:                                              ; preds = %7
  %160 = load i8, i8* %12, align 1
  %161 = sext i8 %160 to i32
  %162 = load i8, i8* @I2C_SMBUS_READ, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %159
  %166 = load i16, i16* @I2C_M_RECV_LEN, align 2
  %167 = zext i16 %166 to i32
  %168 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %169 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %168, i32 0, i32 0
  %170 = load i16, i16* %169, align 8
  %171 = zext i16 %170 to i32
  %172 = or i32 %171, %167
  %173 = trunc i32 %172 to i16
  store i16 %173, i16* %169, align 8
  %174 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %175 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  %176 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %177 = call i32 @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %176, i8 zeroext 0)
  br label %234

178:                                              ; preds = %159
  %179 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %180 = bitcast %union.i2c_smbus_data* %179 to i32**
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 2
  %185 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %186 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %188 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %191 = add nsw i32 %190, 2
  %192 = icmp sgt i32 %189, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %178
  %194 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %195 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %194, i32 0, i32 0
  %196 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %197 = bitcast %union.i2c_smbus_data* %196 to i32**
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32*, i8*, ...) @dev_err(i32* %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %613

204:                                              ; preds = %178
  %205 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %206 = load i8, i8* %13, align 1
  %207 = call i32 @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %205, i8 zeroext %206)
  store i32 1, i32* %20, align 4
  br label %208

208:                                              ; preds = %230, %204
  %209 = load i32, i32* %20, align 4
  %210 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %211 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %233

214:                                              ; preds = %208
  %215 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %216 = bitcast %union.i2c_smbus_data* %215 to i32**
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %20, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = trunc i32 %222 to i8
  %224 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %225 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %224, i32 0, i32 2
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* %20, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  store i8 %223, i8* %229, align 1
  br label %230

230:                                              ; preds = %214
  %231 = load i32, i32* %20, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %20, align 4
  br label %208

233:                                              ; preds = %208
  br label %234

234:                                              ; preds = %233, %165
  br label %394

235:                                              ; preds = %7
  store i32 2, i32* %19, align 4
  %236 = load i8, i8* @I2C_SMBUS_READ, align 1
  store i8 %236, i8* %12, align 1
  %237 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %238 = bitcast %union.i2c_smbus_data* %237 to i32**
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %243 = icmp sgt i32 %241, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %235
  %245 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %246 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %245, i32 0, i32 0
  %247 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %248 = bitcast %union.i2c_smbus_data* %247 to i32**
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i32*, i8*, ...) @dev_err(i32* %246, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %613

255:                                              ; preds = %235
  %256 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %257 = bitcast %union.i2c_smbus_data* %256 to i32**
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 2
  %262 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %263 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %265 = load i8, i8* %13, align 1
  %266 = call i32 @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %264, i8 zeroext %265)
  store i32 1, i32* %20, align 4
  br label %267

267:                                              ; preds = %289, %255
  %268 = load i32, i32* %20, align 4
  %269 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %270 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %292

273:                                              ; preds = %267
  %274 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %275 = bitcast %union.i2c_smbus_data* %274 to i32**
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %20, align 4
  %278 = sub nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = trunc i32 %281 to i8
  %283 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %284 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %283, i32 0, i32 2
  %285 = load i8*, i8** %284, align 8
  %286 = load i32, i32* %20, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  store i8 %282, i8* %288, align 1
  br label %289

289:                                              ; preds = %273
  %290 = load i32, i32* %20, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %20, align 4
  br label %267

292:                                              ; preds = %267
  %293 = load i16, i16* @I2C_M_RECV_LEN, align 2
  %294 = zext i16 %293 to i32
  %295 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %296 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %295, i32 0, i32 0
  %297 = load i16, i16* %296, align 8
  %298 = zext i16 %297 to i32
  %299 = or i32 %298, %294
  %300 = trunc i32 %299 to i16
  store i16 %300, i16* %296, align 8
  %301 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %302 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %301, i32 0, i32 1
  store i32 1, i32* %302, align 4
  %303 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %304 = call i32 @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %303, i8 zeroext 0)
  br label %394

305:                                              ; preds = %7
  %306 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %307 = bitcast %union.i2c_smbus_data* %306 to i32**
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %312 = icmp sgt i32 %310, %311
  br i1 %312, label %313, label %331

313:                                              ; preds = %305
  %314 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %315 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %314, i32 0, i32 0
  %316 = load i8, i8* %12, align 1
  %317 = sext i8 %316 to i32
  %318 = load i8, i8* @I2C_SMBUS_READ, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 %317, %319
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %323 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %324 = bitcast %union.i2c_smbus_data* %323 to i32**
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i32*, i8*, ...) @dev_err(i32* %315, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %322, i32 %327)
  %329 = load i32, i32* @EINVAL, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %613

331:                                              ; preds = %305
  %332 = load i8, i8* %12, align 1
  %333 = sext i8 %332 to i32
  %334 = load i8, i8* @I2C_SMBUS_READ, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %333, %335
  br i1 %336, label %337, label %347

337:                                              ; preds = %331
  %338 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %339 = bitcast %union.i2c_smbus_data* %338 to i32**
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %344 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %343, i32 0, i32 1
  store i32 %342, i32* %344, align 4
  %345 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %346 = call i32 @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %345, i8 zeroext 0)
  br label %386

347:                                              ; preds = %331
  %348 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %349 = bitcast %union.i2c_smbus_data* %348 to i32**
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, 1
  %354 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %355 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %354, i32 0, i32 1
  store i32 %353, i32* %355, align 4
  %356 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %357 = load i8, i8* %13, align 1
  %358 = call i32 @i2c_smbus_try_get_dmabuf(%struct.i2c_msg* %356, i8 zeroext %357)
  store i32 1, i32* %20, align 4
  br label %359

359:                                              ; preds = %382, %347
  %360 = load i32, i32* %20, align 4
  %361 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %362 = bitcast %union.i2c_smbus_data* %361 to i32**
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 0
  %365 = load i32, i32* %364, align 4
  %366 = icmp sle i32 %360, %365
  br i1 %366, label %367, label %385

367:                                              ; preds = %359
  %368 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %369 = bitcast %union.i2c_smbus_data* %368 to i32**
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %20, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = trunc i32 %374 to i8
  %376 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %377 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %376, i32 0, i32 2
  %378 = load i8*, i8** %377, align 8
  %379 = load i32, i32* %20, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %378, i64 %380
  store i8 %375, i8* %381, align 1
  br label %382

382:                                              ; preds = %367
  %383 = load i32, i32* %20, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %20, align 4
  br label %359

385:                                              ; preds = %359
  br label %386

386:                                              ; preds = %385, %337
  br label %394

387:                                              ; preds = %7
  %388 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %389 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %388, i32 0, i32 0
  %390 = load i32, i32* %14, align 4
  %391 = call i32 (i32*, i8*, ...) @dev_err(i32* %389, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %390)
  %392 = load i32, i32* @EOPNOTSUPP, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %613

394:                                              ; preds = %386, %292, %234, %141, %140, %115, %98, %77
  %395 = load i16, i16* %11, align 2
  %396 = zext i16 %395 to i32
  %397 = load i16, i16* @I2C_CLIENT_PEC, align 2
  %398 = zext i16 %397 to i32
  %399 = and i32 %396, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %394
  %402 = load i32, i32* %14, align 4
  %403 = icmp ne i32 %402, 129
  br i1 %403, label %404, label %407

404:                                              ; preds = %401
  %405 = load i32, i32* %14, align 4
  %406 = icmp ne i32 %405, 131
  br label %407

407:                                              ; preds = %404, %401, %394
  %408 = phi i1 [ false, %401 ], [ false, %394 ], [ %406, %404 ]
  %409 = zext i1 %408 to i32
  store i32 %409, i32* %20, align 4
  %410 = load i32, i32* %20, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %452

412:                                              ; preds = %407
  %413 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %414 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %413, i32 0, i32 0
  %415 = load i16, i16* %414, align 16
  %416 = zext i16 %415 to i32
  %417 = load i16, i16* @I2C_M_RD, align 2
  %418 = zext i16 %417 to i32
  %419 = and i32 %416, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %431, label %421

421:                                              ; preds = %412
  %422 = load i32, i32* %19, align 4
  %423 = icmp eq i32 %422, 1
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  %425 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %426 = call i32 @i2c_smbus_add_pec(%struct.i2c_msg* %425)
  br label %430

427:                                              ; preds = %421
  %428 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %429 = call zeroext i8 @i2c_smbus_msg_pec(i32 0, %struct.i2c_msg* %428)
  store i8 %429, i8* %21, align 1
  br label %430

430:                                              ; preds = %427, %424
  br label %431

431:                                              ; preds = %430, %412
  %432 = load i32, i32* %19, align 4
  %433 = sub nsw i32 %432, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 %434
  %436 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %435, i32 0, i32 0
  %437 = load i16, i16* %436, align 8
  %438 = zext i16 %437 to i32
  %439 = load i16, i16* @I2C_M_RD, align 2
  %440 = zext i16 %439 to i32
  %441 = and i32 %438, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %451

443:                                              ; preds = %431
  %444 = load i32, i32* %19, align 4
  %445 = sub nsw i32 %444, 1
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 %446
  %448 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %448, align 4
  br label %451

451:                                              ; preds = %443, %431
  br label %452

452:                                              ; preds = %451, %407
  %453 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %454 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %455 = load i32, i32* %19, align 4
  %456 = call i32 @__i2c_transfer(%struct.i2c_adapter* %453, %struct.i2c_msg* %454, i32 %455)
  store i32 %456, i32* %22, align 4
  %457 = load i32, i32* %22, align 4
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %452
  br label %583

460:                                              ; preds = %452
  %461 = load i32, i32* %22, align 4
  %462 = load i32, i32* %19, align 4
  %463 = icmp ne i32 %461, %462
  br i1 %463, label %464, label %467

464:                                              ; preds = %460
  %465 = load i32, i32* @EIO, align 4
  %466 = sub nsw i32 0, %465
  store i32 %466, i32* %22, align 4
  br label %583

467:                                              ; preds = %460
  store i32 0, i32* %22, align 4
  %468 = load i32, i32* %20, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %493

470:                                              ; preds = %467
  %471 = load i32, i32* %19, align 4
  %472 = sub nsw i32 %471, 1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 %473
  %475 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %474, i32 0, i32 0
  %476 = load i16, i16* %475, align 8
  %477 = zext i16 %476 to i32
  %478 = load i16, i16* @I2C_M_RD, align 2
  %479 = zext i16 %478 to i32
  %480 = and i32 %477, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %493

482:                                              ; preds = %470
  %483 = load i8, i8* %21, align 1
  %484 = load i32, i32* %19, align 4
  %485 = sub nsw i32 %484, 1
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 %486
  %488 = call i32 @i2c_smbus_check_pec(i8 zeroext %483, %struct.i2c_msg* %487)
  store i32 %488, i32* %22, align 4
  %489 = load i32, i32* %22, align 4
  %490 = icmp slt i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %482
  br label %583

492:                                              ; preds = %482
  br label %493

493:                                              ; preds = %492, %470, %467
  %494 = load i8, i8* %12, align 1
  %495 = sext i8 %494 to i32
  %496 = load i8, i8* @I2C_SMBUS_READ, align 1
  %497 = sext i8 %496 to i32
  %498 = icmp eq i32 %495, %497
  br i1 %498, label %499, label %582

499:                                              ; preds = %493
  %500 = load i32, i32* %14, align 4
  switch i32 %500, label %581 [
    i32 133, label %501
    i32 132, label %506
    i32 128, label %511
    i32 130, label %511
    i32 131, label %522
    i32 135, label %551
    i32 134, label %551
  ]

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, i8* %29, i64 0
  %503 = load i8, i8* %502, align 16
  %504 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %505 = bitcast %union.i2c_smbus_data* %504 to i8*
  store i8 %503, i8* %505, align 8
  br label %581

506:                                              ; preds = %499
  %507 = getelementptr inbounds i8, i8* %33, i64 0
  %508 = load i8, i8* %507, align 16
  %509 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %510 = bitcast %union.i2c_smbus_data* %509 to i8*
  store i8 %508, i8* %510, align 8
  br label %581

511:                                              ; preds = %499, %499
  %512 = getelementptr inbounds i8, i8* %33, i64 0
  %513 = load i8, i8* %512, align 16
  %514 = zext i8 %513 to i32
  %515 = getelementptr inbounds i8, i8* %33, i64 1
  %516 = load i8, i8* %515, align 1
  %517 = zext i8 %516 to i32
  %518 = shl i32 %517, 8
  %519 = or i32 %514, %518
  %520 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %521 = bitcast %union.i2c_smbus_data* %520 to i32*
  store i32 %519, i32* %521, align 8
  br label %581

522:                                              ; preds = %499
  store i32 0, i32* %20, align 4
  br label %523

523:                                              ; preds = %547, %522
  %524 = load i32, i32* %20, align 4
  %525 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %526 = bitcast %union.i2c_smbus_data* %525 to i32**
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 0
  %529 = load i32, i32* %528, align 4
  %530 = icmp slt i32 %524, %529
  br i1 %530, label %531, label %550

531:                                              ; preds = %523
  %532 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %533 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %532, i32 0, i32 2
  %534 = load i8*, i8** %533, align 8
  %535 = load i32, i32* %20, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i8, i8* %534, i64 %536
  %538 = load i8, i8* %537, align 1
  %539 = zext i8 %538 to i32
  %540 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %541 = bitcast %union.i2c_smbus_data* %540 to i32**
  %542 = load i32*, i32** %541, align 8
  %543 = load i32, i32* %20, align 4
  %544 = add nsw i32 %543, 1
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %542, i64 %545
  store i32 %539, i32* %546, align 4
  br label %547

547:                                              ; preds = %531
  %548 = load i32, i32* %20, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %20, align 4
  br label %523

550:                                              ; preds = %523
  br label %581

551:                                              ; preds = %499, %499
  store i32 0, i32* %20, align 4
  br label %552

552:                                              ; preds = %577, %551
  %553 = load i32, i32* %20, align 4
  %554 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %555 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %554, i32 0, i32 2
  %556 = load i8*, i8** %555, align 8
  %557 = getelementptr inbounds i8, i8* %556, i64 0
  %558 = load i8, i8* %557, align 1
  %559 = zext i8 %558 to i32
  %560 = add nsw i32 %559, 1
  %561 = icmp slt i32 %553, %560
  br i1 %561, label %562, label %580

562:                                              ; preds = %552
  %563 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %564 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %563, i32 0, i32 2
  %565 = load i8*, i8** %564, align 8
  %566 = load i32, i32* %20, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i8, i8* %565, i64 %567
  %569 = load i8, i8* %568, align 1
  %570 = zext i8 %569 to i32
  %571 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %572 = bitcast %union.i2c_smbus_data* %571 to i32**
  %573 = load i32*, i32** %572, align 8
  %574 = load i32, i32* %20, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32, i32* %573, i64 %575
  store i32 %570, i32* %576, align 4
  br label %577

577:                                              ; preds = %562
  %578 = load i32, i32* %20, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %20, align 4
  br label %552

580:                                              ; preds = %552
  br label %581

581:                                              ; preds = %499, %580, %550, %511, %506, %501
  br label %582

582:                                              ; preds = %581, %493
  br label %583

583:                                              ; preds = %582, %491, %464, %459
  %584 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %585 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %584, i32 0, i32 0
  %586 = load i16, i16* %585, align 16
  %587 = zext i16 %586 to i32
  %588 = load i32, i32* @I2C_M_DMA_SAFE, align 4
  %589 = and i32 %587, %588
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %597

591:                                              ; preds = %583
  %592 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 0
  %593 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %592, i32 0, i32 2
  %594 = load i8*, i8** %593, align 8
  %595 = bitcast i8* %594 to i32*
  %596 = call i32 @kfree(i32* %595)
  br label %597

597:                                              ; preds = %591, %583
  %598 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %599 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %598, i32 0, i32 0
  %600 = load i16, i16* %599, align 8
  %601 = zext i16 %600 to i32
  %602 = load i32, i32* @I2C_M_DMA_SAFE, align 4
  %603 = and i32 %601, %602
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %611

605:                                              ; preds = %597
  %606 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %23, i64 0, i64 1
  %607 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %606, i32 0, i32 2
  %608 = load i8*, i8** %607, align 8
  %609 = bitcast i8* %608 to i32*
  %610 = call i32 @kfree(i32* %609)
  br label %611

611:                                              ; preds = %605, %597
  %612 = load i32, i32* %22, align 4
  store i32 %612, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %613

613:                                              ; preds = %611, %387, %313, %244, %193
  %614 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %614)
  %615 = load i32, i32* %8, align 4
  ret i32 %615
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_smbus_try_get_dmabuf(%struct.i2c_msg*, i8 zeroext) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @i2c_smbus_add_pec(%struct.i2c_msg*) #2

declare dso_local zeroext i8 @i2c_smbus_msg_pec(i32, %struct.i2c_msg*) #2

declare dso_local i32 @__i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @i2c_smbus_check_pec(i8 zeroext, %struct.i2c_msg*) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
