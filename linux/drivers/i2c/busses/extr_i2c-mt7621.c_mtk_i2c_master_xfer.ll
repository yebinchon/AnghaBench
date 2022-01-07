; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.mtk_i2c = type { i64 }

@I2C_M_TEN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@REG_SM0D0_REG = common dso_local global i64 0, align 8
@SM0CTL1_WRITE = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@SM0CTL1_READ = common dso_local global i32 0, align 4
@SM0CTL1_READ_LAST = common dso_local global i32 0, align 4
@REG_SM0D1_REG = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @mtk_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_i2c*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = call %struct.mtk_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %18)
  store %struct.mtk_i2c* %19, %struct.mtk_i2c** %8, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %238, %3
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %241

24:                                               ; preds = %20
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i64 %27
  store %struct.i2c_msg* %28, %struct.i2c_msg** %9, align 8
  %29 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %30 = call i32 @mtk_i2c_wait_idle(%struct.mtk_i2c* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %258

34:                                               ; preds = %24
  %35 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %36 = call i32 @mtk_i2c_master_start(%struct.mtk_i2c* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %258

40:                                               ; preds = %34
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I2C_M_TEN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %40
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 7
  %52 = and i32 %51, 6
  %53 = or i32 240, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @I2C_M_RD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %67, %47
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %73 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @REG_SM0D0_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @iowrite32(i32 %71, i64 %76)
  %78 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %79 = load i32, i32* @SM0CTL1_WRITE, align 4
  %80 = call i32 @mtk_i2c_master_cmd(%struct.mtk_i2c* %78, i32 %79, i32 2)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %258

84:                                               ; preds = %70
  br label %102

85:                                               ; preds = %40
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %87 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %90 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @REG_SM0D0_REG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @iowrite32(i32 %88, i64 %93)
  %95 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %96 = load i32, i32* @SM0CTL1_WRITE, align 4
  %97 = call i32 @mtk_i2c_master_cmd(%struct.mtk_i2c* %95, i32 %96, i32 1)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  br label %258

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %102
  %110 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %111 = call i32 @BIT(i32 0)
  %112 = call i32 @mtk_i2c_check_ack(%struct.mtk_i2c* %110, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %249

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %102
  %118 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %232, %117
  %122 = load i32, i32* %14, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %237

124:                                              ; preds = %121
  %125 = load i32, i32* %14, align 4
  %126 = icmp sge i32 %125, 8
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %130

128:                                              ; preds = %124
  %129 = load i32, i32* %14, align 4
  br label %130

130:                                              ; preds = %128, %127
  %131 = phi i32 [ 8, %127 ], [ %129, %128 ]
  store i32 %131, i32* %15, align 4
  %132 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @I2C_M_RD, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = load i32, i32* %14, align 4
  %140 = icmp sgt i32 %139, 8
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @SM0CTL1_READ, align 4
  br label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @SM0CTL1_READ_LAST, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %16, align 4
  br label %174

147:                                              ; preds = %130
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %149 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @memcpy(i32* %148, i32* %154, i32 %155)
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %160 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @REG_SM0D0_REG, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @iowrite32(i32 %158, i64 %163)
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %168 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @REG_SM0D1_REG, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @iowrite32(i32 %166, i64 %171)
  %173 = load i32, i32* @SM0CTL1_WRITE, align 4
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %147, %145
  %175 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @mtk_i2c_master_cmd(%struct.mtk_i2c* %175, i32 %176, i32 %177)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %258

182:                                              ; preds = %174
  %183 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %184 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @I2C_M_RD, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %213

189:                                              ; preds = %182
  %190 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %191 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @REG_SM0D0_REG, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @ioread32(i64 %194)
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %195, i32* %196, align 4
  %197 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %198 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @REG_SM0D1_REG, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @ioread32(i64 %201)
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %202, i32* %203, align 4
  %204 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %205 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %211 = load i32, i32* %15, align 4
  %212 = call i32 @memcpy(i32* %209, i32* %210, i32 %211)
  br label %231

213:                                              ; preds = %182
  %214 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %215 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %230, label %220

220:                                              ; preds = %213
  %221 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %222 = load i32, i32* %15, align 4
  %223 = shl i32 1, %222
  %224 = sub nsw i32 %223, 1
  %225 = call i32 @mtk_i2c_check_ack(%struct.mtk_i2c* %221, i32 %224)
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %220
  br label %249

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %229, %213
  br label %231

231:                                              ; preds = %230, %189
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %14, align 4
  %234 = sub nsw i32 %233, 8
  store i32 %234, i32* %14, align 4
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 8
  store i32 %236, i32* %12, align 4
  br label %121

237:                                              ; preds = %121
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %20

241:                                              ; preds = %20
  %242 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %243 = call i32 @mtk_i2c_master_stop(%struct.mtk_i2c* %242)
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %258

247:                                              ; preds = %241
  %248 = load i32, i32* %11, align 4
  store i32 %248, i32* %4, align 4
  br label %264

249:                                              ; preds = %228, %115
  %250 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %251 = call i32 @mtk_i2c_master_stop(%struct.mtk_i2c* %250)
  store i32 %251, i32* %13, align 4
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  br label %258

255:                                              ; preds = %249
  %256 = load i32, i32* @ENXIO, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %4, align 4
  br label %264

258:                                              ; preds = %254, %246, %181, %100, %83, %39, %33
  %259 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %260 = call i32 @mtk_i2c_dump_reg(%struct.mtk_i2c* %259)
  %261 = load %struct.mtk_i2c*, %struct.mtk_i2c** %8, align 8
  %262 = call i32 @mtk_i2c_reset(%struct.mtk_i2c* %261)
  %263 = load i32, i32* %13, align 4
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %258, %255, %247
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local %struct.mtk_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mtk_i2c_wait_idle(%struct.mtk_i2c*) #1

declare dso_local i32 @mtk_i2c_master_start(%struct.mtk_i2c*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @mtk_i2c_master_cmd(%struct.mtk_i2c*, i32, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @mtk_i2c_check_ack(%struct.mtk_i2c*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @mtk_i2c_master_stop(%struct.mtk_i2c*) #1

declare dso_local i32 @mtk_i2c_dump_reg(%struct.mtk_i2c*) #1

declare dso_local i32 @mtk_i2c_reset(%struct.mtk_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
