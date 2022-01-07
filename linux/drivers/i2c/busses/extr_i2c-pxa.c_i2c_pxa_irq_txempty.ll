; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_irq_txempty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_irq_txempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32, i64, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32* }

@ICR_START = common dso_local global i32 0, align 4
@ICR_STOP = common dso_local global i32 0, align 4
@ICR_ACKNAK = common dso_local global i32 0, align 4
@ICR_TB = common dso_local global i32 0, align 4
@ISR_ALD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ALD set\00", align 1
@ISR_BED = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@ISR_ACKNAK = common dso_local global i32 0, align 4
@BUS_ERROR = common dso_local global i32 0, align 4
@I2C_RETRY = common dso_local global i32 0, align 4
@XFER_NAKED = common dso_local global i32 0, align 4
@ISR_RWM = common dso_local global i32 0, align 4
@ICR_ALDIE = common dso_local global i32 0, align 4
@I2C_M_STOP = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_i2c*, i32)* @i2c_pxa_irq_txempty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_pxa_irq_txempty(%struct.pxa_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %8 = call i32 @_ICR(%struct.pxa_i2c* %7)
  %9 = call i32 @readl(i32 %8)
  %10 = load i32, i32* @ICR_START, align 4
  %11 = load i32, i32* @ICR_STOP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ICR_ACKNAK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ICR_TB, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %9, %17
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %202, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ISR_ALD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %26 = call i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %259

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ISR_BED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %27
  %33 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %34 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %33, i32 0, i32 6
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ISR_ACKNAK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* @BUS_ERROR, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ISR_ACKNAK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %54 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %59 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @I2C_RETRY, align 4
  store i32 %63, i32* %6, align 4
  br label %66

64:                                               ; preds = %57, %52
  %65 = load i32, i32* @XFER_NAKED, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @i2c_pxa_master_complete(%struct.pxa_i2c* %68, i32 %69)
  br label %242

71:                                               ; preds = %41, %27
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @ISR_RWM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %71
  %77 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %78 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %81 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %80, i32 0, i32 6
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp eq i32 %79, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %76
  %88 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %89 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %92 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = icmp eq i64 %90, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load i32, i32* @ICR_STOP, align 4
  %99 = load i32, i32* @ICR_ACKNAK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %97, %87, %76
  %104 = load i32, i32* @ICR_ALDIE, align 4
  %105 = load i32, i32* @ICR_TB, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %241

109:                                              ; preds = %71
  %110 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %111 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %114 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %113, i32 0, i32 6
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %173

119:                                              ; preds = %109
  %120 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %121 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %120, i32 0, i32 6
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %126 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %133 = call i32 @_IDBR(%struct.pxa_i2c* %132)
  %134 = call i32 @writel(i32 %131, i32 %133)
  %135 = load i32, i32* @ICR_ALDIE, align 4
  %136 = load i32, i32* @ICR_TB, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %5, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %141 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %144 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %143, i32 0, i32 6
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %142, %147
  br i1 %148, label %149, label %172

149:                                              ; preds = %119
  %150 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %151 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %150, i32 0, i32 6
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @I2C_M_STOP, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %149
  %159 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %160 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %163 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = icmp eq i64 %161, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %158, %149
  %169 = load i32, i32* @ICR_STOP, align 4
  %170 = load i32, i32* %5, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %168, %158, %119
  br label %240

173:                                              ; preds = %109
  %174 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %175 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %178 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %176, %181
  br i1 %182, label %183, label %226

183:                                              ; preds = %173
  %184 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %185 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  %186 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %187 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %187, align 8
  %190 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %191 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %190, i32 0, i32 6
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 1
  store %struct.TYPE_2__* %193, %struct.TYPE_2__** %191, align 8
  %194 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %195 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %194, i32 0, i32 6
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @I2C_M_NOSTART, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %183
  br label %19

203:                                              ; preds = %183
  %204 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %205 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %204, i32 0, i32 6
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = call i32 @i2c_pxa_addr_byte(%struct.TYPE_2__* %206)
  %208 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %209 = call i32 @_IDBR(%struct.pxa_i2c* %208)
  %210 = call i32 @writel(i32 %207, i32 %209)
  %211 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %212 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %211, i32 0, i32 6
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = call i32 @i2c_pxa_addr_byte(%struct.TYPE_2__* %213)
  %215 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %216 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* @ICR_ALDIE, align 4
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %5, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* @ICR_START, align 4
  %222 = load i32, i32* @ICR_TB, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* %5, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %5, align 4
  br label %239

226:                                              ; preds = %173
  %227 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %228 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %227, i32 0, i32 6
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %235 = call i32 @i2c_pxa_reset(%struct.pxa_i2c* %234)
  br label %236

236:                                              ; preds = %233, %226
  %237 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %238 = call i32 @i2c_pxa_master_complete(%struct.pxa_i2c* %237, i32 0)
  br label %239

239:                                              ; preds = %236, %203
  br label %240

240:                                              ; preds = %239, %172
  br label %241

241:                                              ; preds = %240, %103
  br label %242

242:                                              ; preds = %241, %67
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %245 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %248 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %246, i64 %251
  store i32 %243, i32* %252, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %255 = call i32 @_ICR(%struct.pxa_i2c* %254)
  %256 = call i32 @writel(i32 %253, i32 %255)
  %257 = load %struct.pxa_i2c*, %struct.pxa_i2c** %3, align 8
  %258 = call i32 @show_state(%struct.pxa_i2c* %257)
  br label %259

259:                                              ; preds = %242, %24
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ICR(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c*, i8*) #1

declare dso_local i32 @i2c_pxa_master_complete(%struct.pxa_i2c*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @_IDBR(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_addr_byte(%struct.TYPE_2__*) #1

declare dso_local i32 @i2c_pxa_reset(%struct.pxa_i2c*) #1

declare dso_local i32 @show_state(%struct.pxa_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
