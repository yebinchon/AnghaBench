; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-stub.c_stub_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-stub.c_stub_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_chip = type { i64, i64, i32, i32, i32, i32*, i32 }
%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i64 }
%struct.smbus_block_data = type { i32, i32* }

@stub_chips_nr = common dso_local global i32 0, align 4
@chip_addr = common dso_local global i64* null, align 8
@stub_chips = common dso_local global %struct.stub_chip* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"smbus quick - addr 0x%02x\0A\00", align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"smbus byte - addr 0x%02x, wrote 0x%02x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"smbus byte - addr 0x%02x, read  0x%02x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"smbus byte data - addr 0x%02x, wrote 0x%02x at 0x%02x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"switching to bank %u.\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"smbus byte data - addr 0x%02x, read  0x%02x at 0x%02x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"smbus word data - addr 0x%02x, wrote 0x%04x at 0x%02x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"smbus word data - addr 0x%02x, read  0x%04x at 0x%02x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"i2c block data - addr 0x%02x, wrote %d bytes at 0x%02x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"i2c block data - addr 0x%02x, read  %d bytes at 0x%02x.\0A\00", align 1
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"smbus block data - addr 0x%02x, wrote %d bytes at 0x%02x.\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"SMBus block read command without prior block write not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [59 x i8] c"smbus block data - addr 0x%02x, read  %d bytes at 0x%02x.\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Unsupported I2C/SMBus command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i64, i16, i8, i64, i32, %union.i2c_smbus_data*)* @stub_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stub_xfer(%struct.i2c_adapter* %0, i64 %1, i16 zeroext %2, i8 signext %3, i64 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.stub_chip*, align 8
  %20 = alloca %struct.smbus_block_data*, align 8
  %21 = alloca i64*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i64 %1, i64* %10, align 8
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  store %struct.stub_chip* null, %struct.stub_chip** %19, align 8
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %40, %7
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* @stub_chips_nr, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = load i64*, i64** @chip_addr, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.stub_chip*, %struct.stub_chip** @stub_chips, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %35, i64 %37
  store %struct.stub_chip* %38, %struct.stub_chip** %19, align 8
  br label %43

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %17, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %17, align 4
  br label %22

43:                                               ; preds = %34, %22
  %44 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %45 = icmp ne %struct.stub_chip* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %466

49:                                               ; preds = %43
  %50 = load i32, i32* %14, align 4
  switch i32 %50, label %458 [
    i32 129, label %51
    i32 132, label %56
    i32 131, label %91
    i32 128, label %171
    i32 130, label %207
    i32 133, label %314
  ]

51:                                               ; preds = %49
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 0
  %54 = load i64, i64* %10, align 8
  %55 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %54)
  store i32 0, i32* %16, align 4
  br label %464

56:                                               ; preds = %49
  %57 = load i8, i8* %12, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %65 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %67 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %66, i32 0, i32 0
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %69)
  br label %90

71:                                               ; preds = %56
  %72 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %73 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %74 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = call i64* @stub_get_wordp(%struct.stub_chip* %72, i64 %75)
  store i64* %77, i64** %21, align 8
  %78 = load i64*, i64** %21, align 8
  %79 = load i64, i64* %78, align 8
  %80 = and i64 %79, 255
  %81 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %82 = bitcast %union.i2c_smbus_data* %81 to i64*
  store i64 %80, i64* %82, align 8
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %84 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %83, i32 0, i32 0
  %85 = load i64, i64* %10, align 8
  %86 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %87 = bitcast %union.i2c_smbus_data* %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %85, i64 %88)
  br label %90

90:                                               ; preds = %71, %62
  store i32 0, i32* %16, align 4
  br label %464

91:                                               ; preds = %49
  %92 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i64* @stub_get_wordp(%struct.stub_chip* %92, i64 %93)
  store i64* %94, i64** %21, align 8
  %95 = load i8, i8* %12, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %152

100:                                              ; preds = %91
  %101 = load i64*, i64** %21, align 8
  %102 = load i64, i64* %101, align 8
  %103 = and i64 %102, 65280
  store i64 %103, i64* %101, align 8
  %104 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %105 = bitcast %union.i2c_smbus_data* %104 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %21, align 8
  %108 = load i64, i64* %107, align 8
  %109 = or i64 %108, %106
  store i64 %109, i64* %107, align 8
  %110 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %111 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %110, i32 0, i32 0
  %112 = load i64, i64* %10, align 8
  %113 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %114 = bitcast %union.i2c_smbus_data* %113 to i64*
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %111, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %112, i64 %115, i64 %116)
  %118 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %119 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %100
  %123 = load i64, i64* %13, align 8
  %124 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %125 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %122
  %129 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %130 = bitcast %union.i2c_smbus_data* %129 to i64*
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %133 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %134 to i64
  %136 = ashr i64 %131, %135
  %137 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %138 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = and i64 %136, %140
  %142 = trunc i64 %141 to i32
  %143 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %144 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %146 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %145, i32 0, i32 0
  %147 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %148 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %128, %122, %100
  br label %166

152:                                              ; preds = %91
  %153 = load i64*, i64** %21, align 8
  %154 = load i64, i64* %153, align 8
  %155 = and i64 %154, 255
  %156 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %157 = bitcast %union.i2c_smbus_data* %156 to i64*
  store i64 %155, i64* %157, align 8
  %158 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %159 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %158, i32 0, i32 0
  %160 = load i64, i64* %10, align 8
  %161 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %162 = bitcast %union.i2c_smbus_data* %161 to i64*
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %13, align 8
  %165 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %159, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i64 %160, i64 %163, i64 %164)
  br label %166

166:                                              ; preds = %152, %151
  %167 = load i64, i64* %13, align 8
  %168 = add i64 %167, 1
  %169 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %170 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  store i32 0, i32* %16, align 4
  br label %464

171:                                              ; preds = %49
  %172 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i64* @stub_get_wordp(%struct.stub_chip* %172, i64 %173)
  store i64* %174, i64** %21, align 8
  %175 = load i8, i8* %12, align 1
  %176 = sext i8 %175 to i32
  %177 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %171
  %181 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %182 = bitcast %union.i2c_smbus_data* %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %21, align 8
  store i64 %183, i64* %184, align 8
  %185 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %186 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %185, i32 0, i32 0
  %187 = load i64, i64* %10, align 8
  %188 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %189 = bitcast %union.i2c_smbus_data* %188 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %13, align 8
  %192 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %186, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i64 %187, i64 %190, i64 %191)
  br label %206

193:                                              ; preds = %171
  %194 = load i64*, i64** %21, align 8
  %195 = load i64, i64* %194, align 8
  %196 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %197 = bitcast %union.i2c_smbus_data* %196 to i64*
  store i64 %195, i64* %197, align 8
  %198 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %199 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %198, i32 0, i32 0
  %200 = load i64, i64* %10, align 8
  %201 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %202 = bitcast %union.i2c_smbus_data* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %13, align 8
  %205 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %199, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 %200, i64 %203, i64 %204)
  br label %206

206:                                              ; preds = %193, %180
  store i32 0, i32* %16, align 4
  br label %464

207:                                              ; preds = %49
  %208 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %209 = bitcast %union.i2c_smbus_data* %208 to i32**
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %13, align 8
  %215 = sub i64 256, %214
  %216 = icmp ugt i64 %213, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %207
  %218 = load i64, i64* %13, align 8
  %219 = sub i64 256, %218
  %220 = trunc i64 %219 to i32
  %221 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %222 = bitcast %union.i2c_smbus_data* %221 to i32**
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %220, i32* %224, align 4
  br label %225

225:                                              ; preds = %217, %207
  %226 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %227 = bitcast %union.i2c_smbus_data* %226 to i32**
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %18, align 4
  %231 = load i8, i8* %12, align 1
  %232 = sext i8 %231 to i32
  %233 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %280

236:                                              ; preds = %225
  store i32 0, i32* %17, align 4
  br label %237

237:                                              ; preds = %270, %236
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %18, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %273

241:                                              ; preds = %237
  %242 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %243 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* %13, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = add i64 %245, %247
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 65280
  store i32 %251, i32* %249, align 4
  %252 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %253 = bitcast %union.i2c_smbus_data* %252 to i32**
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %17, align 4
  %256 = add nsw i32 1, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %261 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %260, i32 0, i32 5
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %13, align 8
  %264 = load i32, i32* %17, align 4
  %265 = sext i32 %264 to i64
  %266 = add i64 %263, %265
  %267 = getelementptr inbounds i32, i32* %262, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %259
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %241
  %271 = load i32, i32* %17, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %17, align 4
  br label %237

273:                                              ; preds = %237
  %274 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %275 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %274, i32 0, i32 0
  %276 = load i64, i64* %10, align 8
  %277 = load i32, i32* %18, align 4
  %278 = load i64, i64* %13, align 8
  %279 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %275, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i64 %276, i32 %277, i64 %278)
  br label %313

280:                                              ; preds = %225
  store i32 0, i32* %17, align 4
  br label %281

281:                                              ; preds = %303, %280
  %282 = load i32, i32* %17, align 4
  %283 = load i32, i32* %18, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %306

285:                                              ; preds = %281
  %286 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %287 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %286, i32 0, i32 5
  %288 = load i32*, i32** %287, align 8
  %289 = load i64, i64* %13, align 8
  %290 = load i32, i32* %17, align 4
  %291 = sext i32 %290 to i64
  %292 = add i64 %289, %291
  %293 = getelementptr inbounds i32, i32* %288, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, 255
  %296 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %297 = bitcast %union.i2c_smbus_data* %296 to i32**
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %17, align 4
  %300 = add nsw i32 1, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  store i32 %295, i32* %302, align 4
  br label %303

303:                                              ; preds = %285
  %304 = load i32, i32* %17, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %17, align 4
  br label %281

306:                                              ; preds = %281
  %307 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %308 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %307, i32 0, i32 0
  %309 = load i64, i64* %10, align 8
  %310 = load i32, i32* %18, align 4
  %311 = load i64, i64* %13, align 8
  %312 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %308, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i64 %309, i32 %310, i64 %311)
  br label %313

313:                                              ; preds = %306, %273
  store i32 0, i32* %16, align 4
  br label %464

314:                                              ; preds = %49
  %315 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %316 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %315, i32 0, i32 0
  %317 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %318 = load i64, i64* %13, align 8
  %319 = call %struct.smbus_block_data* @stub_find_block(i32* %316, %struct.stub_chip* %317, i64 %318, i32 0)
  store %struct.smbus_block_data* %319, %struct.smbus_block_data** %20, align 8
  %320 = load i8, i8* %12, align 1
  %321 = sext i8 %320 to i32
  %322 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp eq i32 %321, %323
  br i1 %324, label %325, label %410

325:                                              ; preds = %314
  %326 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %327 = bitcast %union.i2c_smbus_data* %326 to i32**
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 0
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* %18, align 4
  %331 = load i32, i32* %18, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %325
  %334 = load i32, i32* %18, align 4
  %335 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %336 = icmp sgt i32 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %333, %325
  %338 = load i32, i32* @EINVAL, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %16, align 4
  br label %464

340:                                              ; preds = %333
  %341 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %342 = icmp eq %struct.smbus_block_data* %341, null
  br i1 %342, label %343, label %355

343:                                              ; preds = %340
  %344 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %345 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %344, i32 0, i32 0
  %346 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %347 = load i64, i64* %13, align 8
  %348 = call %struct.smbus_block_data* @stub_find_block(i32* %345, %struct.stub_chip* %346, i64 %347, i32 1)
  store %struct.smbus_block_data* %348, %struct.smbus_block_data** %20, align 8
  %349 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %350 = icmp eq %struct.smbus_block_data* %349, null
  br i1 %350, label %351, label %354

351:                                              ; preds = %343
  %352 = load i32, i32* @ENOMEM, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %16, align 4
  br label %464

354:                                              ; preds = %343
  br label %355

355:                                              ; preds = %354, %340
  %356 = load i32, i32* %18, align 4
  %357 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %358 = getelementptr inbounds %struct.smbus_block_data, %struct.smbus_block_data* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp sgt i32 %356, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = load i32, i32* %18, align 4
  %363 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %364 = getelementptr inbounds %struct.smbus_block_data, %struct.smbus_block_data* %363, i32 0, i32 0
  store i32 %362, i32* %364, align 8
  br label %365

365:                                              ; preds = %361, %355
  store i32 0, i32* %17, align 4
  br label %366

366:                                              ; preds = %385, %365
  %367 = load i32, i32* %17, align 4
  %368 = load i32, i32* %18, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %388

370:                                              ; preds = %366
  %371 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %372 = bitcast %union.i2c_smbus_data* %371 to i32**
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %17, align 4
  %375 = add nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %373, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %380 = getelementptr inbounds %struct.smbus_block_data, %struct.smbus_block_data* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %17, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 %378, i32* %384, align 4
  br label %385

385:                                              ; preds = %370
  %386 = load i32, i32* %17, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %17, align 4
  br label %366

388:                                              ; preds = %366
  %389 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %390 = getelementptr inbounds %struct.smbus_block_data, %struct.smbus_block_data* %389, i32 0, i32 1
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 0
  %393 = load i32, i32* %392, align 4
  %394 = shl i32 %393, 8
  %395 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %396 = getelementptr inbounds %struct.smbus_block_data, %struct.smbus_block_data* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = or i32 %394, %397
  %399 = load %struct.stub_chip*, %struct.stub_chip** %19, align 8
  %400 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %399, i32 0, i32 5
  %401 = load i32*, i32** %400, align 8
  %402 = load i64, i64* %13, align 8
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  store i32 %398, i32* %403, align 4
  %404 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %405 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %404, i32 0, i32 0
  %406 = load i64, i64* %10, align 8
  %407 = load i32, i32* %18, align 4
  %408 = load i64, i64* %13, align 8
  %409 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %405, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i64 %406, i32 %407, i64 %408)
  br label %457

410:                                              ; preds = %314
  %411 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %412 = icmp eq %struct.smbus_block_data* %411, null
  br i1 %412, label %413, label %419

413:                                              ; preds = %410
  %414 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %415 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %414, i32 0, i32 0
  %416 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %415, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  %417 = load i32, i32* @EOPNOTSUPP, align 4
  %418 = sub nsw i32 0, %417
  store i32 %418, i32* %16, align 4
  br label %464

419:                                              ; preds = %410
  %420 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %421 = getelementptr inbounds %struct.smbus_block_data, %struct.smbus_block_data* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  store i32 %422, i32* %18, align 4
  %423 = load i32, i32* %18, align 4
  %424 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %425 = bitcast %union.i2c_smbus_data* %424 to i32**
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  store i32 %423, i32* %427, align 4
  store i32 0, i32* %17, align 4
  br label %428

428:                                              ; preds = %447, %419
  %429 = load i32, i32* %17, align 4
  %430 = load i32, i32* %18, align 4
  %431 = icmp slt i32 %429, %430
  br i1 %431, label %432, label %450

432:                                              ; preds = %428
  %433 = load %struct.smbus_block_data*, %struct.smbus_block_data** %20, align 8
  %434 = getelementptr inbounds %struct.smbus_block_data, %struct.smbus_block_data* %433, i32 0, i32 1
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %17, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %441 = bitcast %union.i2c_smbus_data* %440 to i32**
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %17, align 4
  %444 = add nsw i32 %443, 1
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %442, i64 %445
  store i32 %439, i32* %446, align 4
  br label %447

447:                                              ; preds = %432
  %448 = load i32, i32* %17, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %17, align 4
  br label %428

450:                                              ; preds = %428
  %451 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %452 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %451, i32 0, i32 0
  %453 = load i64, i64* %10, align 8
  %454 = load i32, i32* %18, align 4
  %455 = load i64, i64* %13, align 8
  %456 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %452, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i64 %453, i32 %454, i64 %455)
  br label %457

457:                                              ; preds = %450, %388
  store i32 0, i32* %16, align 4
  br label %464

458:                                              ; preds = %49
  %459 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %460 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %459, i32 0, i32 0
  %461 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %460, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %462 = load i32, i32* @EOPNOTSUPP, align 4
  %463 = sub nsw i32 0, %462
  store i32 %463, i32* %16, align 4
  br label %464

464:                                              ; preds = %458, %457, %413, %351, %337, %313, %206, %166, %90, %51
  %465 = load i32, i32* %16, align 4
  store i32 %465, i32* %8, align 4
  br label %466

466:                                              ; preds = %464, %46
  %467 = load i32, i32* %8, align 4
  ret i32 %467
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64* @stub_get_wordp(%struct.stub_chip*, i64) #1

declare dso_local %struct.smbus_block_data* @stub_find_block(i32*, %struct.stub_chip*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
