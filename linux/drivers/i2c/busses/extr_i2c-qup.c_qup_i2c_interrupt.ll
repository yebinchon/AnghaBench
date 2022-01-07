; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, i32, i32, %struct.TYPE_2__*, i32 (%struct.qup_i2c_dev*)*, i64, i64, i64, i32 (%struct.qup_i2c_dev*)*, i32 (%struct.qup_i2c_dev*)*, i64, i64, %struct.qup_i2c_block }
%struct.TYPE_2__ = type { i32 }
%struct.qup_i2c_block = type { i64, i32, i32, i32, i32 }

@QUP_I2C_STATUS = common dso_local global i64 0, align 8
@QUP_ERROR_FLAGS = common dso_local global i64 0, align 8
@QUP_OPERATIONAL = common dso_local global i64 0, align 8
@QUP_RESET_STATE = common dso_local global i32 0, align 4
@QUP_STATE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@I2C_STATUS_ERROR_MASK = common dso_local global i32 0, align 4
@QUP_STATUS_ERROR_FLAGS = common dso_local global i32 0, align 4
@QUP_OUT_SVC_FLAG = common dso_local global i32 0, align 4
@OUT_BLOCK_WRITE_REQ = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@QUP_IN_SVC_FLAG = common dso_local global i32 0, align 4
@IN_BLOCK_READ_REQ = common dso_local global i32 0, align 4
@QUP_MX_OUTPUT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qup_i2c_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qup_i2c_dev*, align 8
  %7 = alloca %struct.qup_i2c_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.qup_i2c_dev*
  store %struct.qup_i2c_dev* %12, %struct.qup_i2c_dev** %6, align 8
  %13 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %14 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %13, i32 0, i32 12
  store %struct.qup_i2c_block* %14, %struct.qup_i2c_block** %7, align 8
  %15 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %16 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QUP_I2C_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %22 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QUP_ERROR_FLAGS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %28 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QUP_OPERATIONAL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %34 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @QUP_RESET_STATE, align 4
  %39 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %40 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QUP_STATE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %256

46:                                               ; preds = %2
  %47 = load i32, i32* @I2C_STATUS_ERROR_MASK, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @QUP_STATUS_ERROR_FLAGS, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %58 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @QUP_ERROR_FLAGS, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  br label %63

63:                                               ; preds = %55, %46
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %69 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @QUP_I2C_STATUS, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  br label %74

74:                                               ; preds = %66, %63
  %75 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %76 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %81 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %86 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %90, i32* %3, align 4
  br label %256

91:                                               ; preds = %84, %74
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94, %91
  %98 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %99 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %98, i32 0, i32 11
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @QUP_RESET_STATE, align 4
  %104 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %105 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @QUP_STATE, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  br label %110

110:                                              ; preds = %102, %97
  br label %245

111:                                              ; preds = %94
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @QUP_OUT_SVC_FLAG, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %160

116:                                              ; preds = %111
  %117 = load i32, i32* @QUP_OUT_SVC_FLAG, align 4
  %118 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %119 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @QUP_OPERATIONAL, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @OUT_BLOCK_WRITE_REQ, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %159

128:                                              ; preds = %116
  %129 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %130 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %129, i32 0, i32 10
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %133 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %139 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %138, i32 0, i32 3
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @I2C_M_RD, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %128
  %147 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %148 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %147, i32 0, i32 9
  %149 = load i32 (%struct.qup_i2c_dev*)*, i32 (%struct.qup_i2c_dev*)** %148, align 8
  %150 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %151 = call i32 %149(%struct.qup_i2c_dev* %150)
  br label %158

152:                                              ; preds = %128
  %153 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %154 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %153, i32 0, i32 8
  %155 = load i32 (%struct.qup_i2c_dev*)*, i32 (%struct.qup_i2c_dev*)** %154, align 8
  %156 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %157 = call i32 %155(%struct.qup_i2c_dev* %156)
  br label %158

158:                                              ; preds = %152, %146
  br label %159

159:                                              ; preds = %158, %116
  br label %160

160:                                              ; preds = %159, %111
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @QUP_IN_SVC_FLAG, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %214

165:                                              ; preds = %160
  %166 = load i32, i32* @QUP_IN_SVC_FLAG, align 4
  %167 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %168 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @QUP_OPERATIONAL, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 %166, i64 %171)
  %173 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %174 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %165
  %178 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %179 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %182 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %180
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  %187 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %188 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %187, i32 0, i32 4
  %189 = load i32 (%struct.qup_i2c_dev*)*, i32 (%struct.qup_i2c_dev*)** %188, align 8
  %190 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %191 = call i32 %189(%struct.qup_i2c_dev* %190)
  br label %213

192:                                              ; preds = %165
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @IN_BLOCK_READ_REQ, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %199 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %202 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %200
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 4
  %207 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %208 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %207, i32 0, i32 4
  %209 = load i32 (%struct.qup_i2c_dev*)*, i32 (%struct.qup_i2c_dev*)** %208, align 8
  %210 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %211 = call i32 %209(%struct.qup_i2c_dev* %210)
  br label %212

212:                                              ; preds = %197, %192
  br label %213

213:                                              ; preds = %212, %177
  br label %214

214:                                              ; preds = %213, %160
  %215 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %216 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %215, i32 0, i32 3
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @I2C_M_RD, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %214
  %224 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %225 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %229, i32* %3, align 4
  br label %256

230:                                              ; preds = %223
  br label %244

231:                                              ; preds = %214
  %232 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %233 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @QUP_MX_OUTPUT_DONE, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %236
  %242 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %242, i32* %3, align 4
  br label %256

243:                                              ; preds = %236, %231
  br label %244

244:                                              ; preds = %243, %230
  br label %245

245:                                              ; preds = %244, %110
  %246 = load i32, i32* %9, align 4
  %247 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %248 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %251 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %253 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %252, i32 0, i32 2
  %254 = call i32 @complete(i32* %253)
  %255 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %245, %241, %228, %89, %37
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
