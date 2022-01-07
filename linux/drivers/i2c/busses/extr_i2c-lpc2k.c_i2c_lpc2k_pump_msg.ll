; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-lpc2k.c_i2c_lpc2k_pump_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-lpc2k.c_i2c_lpc2k_pump_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc2k_i2c = type { i64, i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i8* }

@LPC24XX_I2STAT = common dso_local global i64 0, align 8
@LPC24XX_I2DAT = common dso_local global i64 0, align 8
@LPC24XX_STA = common dso_local global i8 0, align 1
@LPC24XX_I2CONCLR = common dso_local global i64 0, align 8
@LPC24XX_STO_AA = common dso_local global i8 0, align 1
@LPC24XX_I2CONSET = common dso_local global i64 0, align 8
@LPC24XX_SI = common dso_local global i8 0, align 1
@LPC24XX_AA = common dso_local global i8 0, align 1
@ENXIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LPC24XX_STO = common dso_local global i8 0, align 1
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc2k_i2c*)* @i2c_lpc2k_pump_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_lpc2k_pump_msg(%struct.lpc2k_i2c* %0) #0 {
  %2 = alloca %struct.lpc2k_i2c*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.lpc2k_i2c* %0, %struct.lpc2k_i2c** %2, align 8
  %5 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LPC24XX_I2STAT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i8* @readl(i64 %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %283 [
    i32 128, label %13
    i32 129, label %13
    i32 134, label %32
    i32 132, label %32
    i32 138, label %98
    i32 135, label %129
    i32 136, label %129
    i32 133, label %246
    i32 131, label %246
    i32 137, label %246
    i32 130, label %262
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %15 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.TYPE_2__* %16)
  store i8 %17, i8* %3, align 1
  %18 = load i8, i8* %3, align 1
  %19 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %20 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LPC24XX_I2DAT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i8 zeroext %18, i64 %23)
  %25 = load i8, i8* @LPC24XX_STA, align 1
  %26 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %27 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i8 zeroext %25, i64 %30)
  br label %292

32:                                               ; preds = %1, %1
  %33 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %34 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %37 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %35, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %32
  %43 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %44 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %43, i32 0, i32 5
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %49 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %54 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LPC24XX_I2DAT, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i8 zeroext %52, i64 %57)
  br label %93

59:                                               ; preds = %32
  %60 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %61 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load i8, i8* @LPC24XX_STO_AA, align 1
  %66 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %67 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LPC24XX_I2CONSET, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i8 zeroext %65, i64 %70)
  %72 = load i8, i8* @LPC24XX_SI, align 1
  %73 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %74 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i8 zeroext %72, i64 %77)
  %79 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %80 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %82 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @disable_irq_nosync(i32 %83)
  br label %92

85:                                               ; preds = %59
  %86 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %87 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  %88 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %89 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @disable_irq_nosync(i32 %90)
  br label %92

92:                                               ; preds = %85, %64
  br label %93

93:                                               ; preds = %92, %42
  %94 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %95 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  br label %292

98:                                               ; preds = %1
  %99 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %100 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %99, i32 0, i32 5
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load i8, i8* @LPC24XX_AA, align 1
  %107 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %108 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i8 zeroext %106, i64 %111)
  br label %121

113:                                              ; preds = %98
  %114 = load i8, i8* @LPC24XX_AA, align 1
  %115 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %116 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @LPC24XX_I2CONSET, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i8 zeroext %114, i64 %119)
  br label %121

121:                                              ; preds = %113, %105
  %122 = load i8, i8* @LPC24XX_STA, align 1
  %123 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %124 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i8 zeroext %122, i64 %127)
  br label %292

129:                                              ; preds = %1, %1
  %130 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %131 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %134 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %133, i32 0, i32 5
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ult i64 %132, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %129
  %140 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %141 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @LPC24XX_I2DAT, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i8* @readl(i64 %144)
  %146 = ptrtoint i8* %145 to i8
  %147 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %148 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %147, i32 0, i32 5
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %153 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  store i8 %146, i8* %155, align 1
  br label %156

156:                                              ; preds = %139, %129
  %157 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %158 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %161 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %160, i32 0, i32 5
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub i64 %164, 1
  %166 = icmp uge i64 %159, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %156
  %168 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %169 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %167
  %173 = load i8, i8* @LPC24XX_STO_AA, align 1
  %174 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %175 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @LPC24XX_I2CONSET, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @writel(i8 zeroext %173, i64 %178)
  %180 = load i8, i8* @LPC24XX_SI, align 1
  %181 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %182 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i8 zeroext %180, i64 %185)
  %187 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %188 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %187, i32 0, i32 2
  store i32 0, i32* %188, align 8
  br label %189

189:                                              ; preds = %172, %167, %156
  %190 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %191 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %194 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %193, i32 0, i32 5
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sub i64 %197, 1
  %199 = icmp uge i64 %192, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %189
  %201 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %202 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %201, i32 0, i32 2
  store i32 0, i32* %202, align 8
  %203 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %204 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @disable_irq_nosync(i32 %205)
  br label %207

207:                                              ; preds = %200, %189
  %208 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %209 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %212 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %211, i32 0, i32 5
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = sub i64 %215, 2
  %217 = icmp uge i64 %210, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %207
  %219 = load i8, i8* @LPC24XX_AA, align 1
  %220 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %221 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @writel(i8 zeroext %219, i64 %224)
  br label %234

226:                                              ; preds = %207
  %227 = load i8, i8* @LPC24XX_AA, align 1
  %228 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %229 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @LPC24XX_I2CONSET, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @writel(i8 zeroext %227, i64 %232)
  br label %234

234:                                              ; preds = %226, %218
  %235 = load i8, i8* @LPC24XX_STA, align 1
  %236 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %237 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @writel(i8 zeroext %235, i64 %240)
  %242 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %243 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %244, 1
  store i64 %245, i64* %243, align 8
  br label %292

246:                                              ; preds = %1, %1, %1
  %247 = load i8, i8* @LPC24XX_STO_AA, align 1
  %248 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %249 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @LPC24XX_I2CONSET, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @writel(i8 zeroext %247, i64 %252)
  %254 = load i32, i32* @ENXIO, align 4
  %255 = sub nsw i32 0, %254
  %256 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %257 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %259 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @disable_irq_nosync(i32 %260)
  br label %292

262:                                              ; preds = %1
  %263 = load i32, i32* @EAGAIN, align 4
  %264 = sub nsw i32 0, %263
  %265 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %266 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load i8, i8* @LPC24XX_STA, align 1
  %268 = zext i8 %267 to i32
  %269 = load i8, i8* @LPC24XX_STO, align 1
  %270 = zext i8 %269 to i32
  %271 = or i32 %268, %270
  %272 = trunc i32 %271 to i8
  %273 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %274 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %277 = add nsw i64 %275, %276
  %278 = call i32 @writel(i8 zeroext %272, i64 %277)
  %279 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %280 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @disable_irq_nosync(i32 %281)
  br label %292

283:                                              ; preds = %1
  %284 = load i32, i32* @EIO, align 4
  %285 = sub nsw i32 0, %284
  %286 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %287 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 8
  %288 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %289 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @disable_irq_nosync(i32 %290)
  br label %292

292:                                              ; preds = %283, %262, %246, %234, %121, %93, %13
  %293 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %294 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @EBUSY, align 4
  %297 = sub nsw i32 0, %296
  %298 = icmp ne i32 %295, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %292
  %300 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %301 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %300, i32 0, i32 3
  %302 = call i32 @wake_up(i32* %301)
  br label %303

303:                                              ; preds = %299, %292
  %304 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %305 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %303
  %309 = load i8, i8* @LPC24XX_SI, align 1
  %310 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %2, align 8
  %311 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @LPC24XX_I2CONCLR, align 8
  %314 = add nsw i64 %312, %313
  %315 = call i32 @writel(i8 zeroext %309, i64 %314)
  br label %316

316:                                              ; preds = %308, %303
  ret void
}

declare dso_local i8* @readl(i64) #1

declare dso_local zeroext i8 @i2c_8bit_addr_from_msg(%struct.TYPE_2__*) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
