; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_6__, %struct.ipoctal_channel* }
%struct.TYPE_6__ = type { i32 }
%struct.ipoctal_channel = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ktermios = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@MR1_CHRL_6_BITS = common dso_local global i8 0, align 1
@MR1_CHRL_7_BITS = common dso_local global i8 0, align 1
@MR1_CHRL_8_BITS = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@MR1_PARITY_ON = common dso_local global i8 0, align 1
@MR1_PARITY_ODD = common dso_local global i8 0, align 1
@MR1_PARITY_EVEN = common dso_local global i8 0, align 1
@MR1_PARITY_OFF = common dso_local global i8 0, align 1
@CMSPAR = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@MR2_STOP_BITS_LENGTH_2 = common dso_local global i8 0, align 1
@MR2_STOP_BITS_LENGTH_1 = common dso_local global i8 0, align 1
@CRTSCTS = common dso_local global i32 0, align 4
@MR1_RxRTS_CONTROL_ON = common dso_local global i8 0, align 1
@MR2_TxRTS_CONTROL_OFF = common dso_local global i8 0, align 1
@MR2_CTS_ENABLE_TX_ON = common dso_local global i8 0, align 1
@MR1_RxRTS_CONTROL_OFF = common dso_local global i8 0, align 1
@MR2_CTS_ENABLE_TX_OFF = common dso_local global i8 0, align 1
@MR2_TxRTS_CONTROL_ON = common dso_local global i8 0, align 1
@TX_CLK_75 = common dso_local global i8 0, align 1
@RX_CLK_75 = common dso_local global i8 0, align 1
@TX_CLK_110 = common dso_local global i8 0, align 1
@RX_CLK_110 = common dso_local global i8 0, align 1
@TX_CLK_150 = common dso_local global i8 0, align 1
@RX_CLK_150 = common dso_local global i8 0, align 1
@TX_CLK_300 = common dso_local global i8 0, align 1
@RX_CLK_300 = common dso_local global i8 0, align 1
@TX_CLK_600 = common dso_local global i8 0, align 1
@RX_CLK_600 = common dso_local global i8 0, align 1
@TX_CLK_1200 = common dso_local global i8 0, align 1
@RX_CLK_1200 = common dso_local global i8 0, align 1
@TX_CLK_1800 = common dso_local global i8 0, align 1
@RX_CLK_1800 = common dso_local global i8 0, align 1
@TX_CLK_2000 = common dso_local global i8 0, align 1
@RX_CLK_2000 = common dso_local global i8 0, align 1
@TX_CLK_2400 = common dso_local global i8 0, align 1
@RX_CLK_2400 = common dso_local global i8 0, align 1
@TX_CLK_4800 = common dso_local global i8 0, align 1
@RX_CLK_4800 = common dso_local global i8 0, align 1
@TX_CLK_9600 = common dso_local global i8 0, align 1
@RX_CLK_9600 = common dso_local global i8 0, align 1
@TX_CLK_19200 = common dso_local global i8 0, align 1
@RX_CLK_19200 = common dso_local global i8 0, align 1
@TX_CLK_38400 = common dso_local global i8 0, align 1
@RX_CLK_38400 = common dso_local global i8 0, align 1
@MR1_ERROR_CHAR = common dso_local global i8 0, align 1
@MR1_RxINT_RxRDY = common dso_local global i8 0, align 1
@CR_ENABLE_RX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @ipoctal_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoctal_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.ipoctal_channel*, align 8
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 1
  %13 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %12, align 8
  store %struct.ipoctal_channel* %13, %struct.ipoctal_channel** %9, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %9, align 8
  %19 = call i32 @ipoctal_reset_channel(%struct.ipoctal_channel* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CSIZE, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %38 [
    i32 133, label %23
    i32 132, label %30
    i32 131, label %37
  ]

23:                                               ; preds = %2
  %24 = load i8, i8* @MR1_CHRL_6_BITS, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %6, align 1
  br label %53

30:                                               ; preds = %2
  %31 = load i8, i8* @MR1_CHRL_7_BITS, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %6, align 1
  br label %53

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %2, %37
  %39 = load i8, i8* @MR1_CHRL_8_BITS, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %6, align 1
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CSIZE, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = or i32 %48, 131
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  br label %53

53:                                               ; preds = %38, %30, %23
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @PARENB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PARODD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i8, i8* @MR1_PARITY_ON, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @MR1_PARITY_ODD, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = load i8, i8* %6, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %6, align 1
  br label %83

73:                                               ; preds = %58
  %74 = load i8, i8* @MR1_PARITY_ON, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @MR1_PARITY_EVEN, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %75, %77
  %79 = load i8, i8* %6, align 1
  %80 = zext i8 %79 to i32
  %81 = or i32 %80, %78
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %6, align 1
  br label %83

83:                                               ; preds = %73, %63
  br label %91

84:                                               ; preds = %53
  %85 = load i8, i8* @MR1_PARITY_OFF, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %6, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %6, align 1
  br label %91

91:                                               ; preds = %84, %83
  %92 = load i32, i32* @CMSPAR, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %95 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %93
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @CSTOPB, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %91
  %104 = load i8, i8* @MR2_STOP_BITS_LENGTH_2, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %7, align 1
  br label %117

110:                                              ; preds = %91
  %111 = load i8, i8* @MR2_STOP_BITS_LENGTH_1, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* %7, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %114, %112
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %7, align 1
  br label %117

117:                                              ; preds = %110, %103
  %118 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %9, align 8
  %119 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %191 [
    i32 130, label %121
    i32 129, label %159
    i32 128, label %175
  ]

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @CRTSCTS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %121
  %127 = load i8, i8* @MR1_RxRTS_CONTROL_ON, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %130, %128
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %6, align 1
  %133 = load i8, i8* @MR2_TxRTS_CONTROL_OFF, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8, i8* @MR2_CTS_ENABLE_TX_ON, align 1
  %136 = zext i8 %135 to i32
  %137 = or i32 %134, %136
  %138 = load i8, i8* %7, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %139, %137
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %7, align 1
  br label %158

142:                                              ; preds = %121
  %143 = load i8, i8* @MR1_RxRTS_CONTROL_OFF, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* %6, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %146, %144
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %6, align 1
  %149 = load i8, i8* @MR2_TxRTS_CONTROL_OFF, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* @MR2_CTS_ENABLE_TX_OFF, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %150, %152
  %154 = load i8, i8* %7, align 1
  %155 = zext i8 %154 to i32
  %156 = or i32 %155, %153
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %7, align 1
  br label %158

158:                                              ; preds = %142, %126
  br label %192

159:                                              ; preds = %117
  %160 = load i8, i8* @MR1_RxRTS_CONTROL_OFF, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* %6, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %163, %161
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %6, align 1
  %166 = load i8, i8* @MR2_TxRTS_CONTROL_OFF, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* @MR2_CTS_ENABLE_TX_OFF, align 1
  %169 = zext i8 %168 to i32
  %170 = or i32 %167, %169
  %171 = load i8, i8* %7, align 1
  %172 = zext i8 %171 to i32
  %173 = or i32 %172, %170
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %7, align 1
  br label %192

175:                                              ; preds = %117
  %176 = load i8, i8* @MR1_RxRTS_CONTROL_OFF, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, i8* %6, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %179, %177
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %6, align 1
  %182 = load i8, i8* @MR2_TxRTS_CONTROL_ON, align 1
  %183 = zext i8 %182 to i32
  %184 = load i8, i8* @MR2_CTS_ENABLE_TX_OFF, align 1
  %185 = zext i8 %184 to i32
  %186 = or i32 %183, %185
  %187 = load i8, i8* %7, align 1
  %188 = zext i8 %187 to i32
  %189 = or i32 %188, %186
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %7, align 1
  br label %192

191:                                              ; preds = %117
  br label %381

192:                                              ; preds = %175, %159, %158
  %193 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %194 = call i32 @tty_get_baud_rate(%struct.tty_struct* %193)
  store i32 %194, i32* %10, align 4
  %195 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %196 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %195, i32 0, i32 0
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @tty_termios_encode_baud_rate(%struct.TYPE_6__* %196, i32 %197, i32 %198)
  %200 = load i32, i32* %10, align 4
  switch i32 %200, label %322 [
    i32 75, label %201
    i32 110, label %211
    i32 150, label %221
    i32 300, label %231
    i32 600, label %241
    i32 1200, label %251
    i32 1800, label %261
    i32 2000, label %271
    i32 2400, label %281
    i32 4800, label %291
    i32 9600, label %301
    i32 19200, label %311
    i32 38400, label %321
  ]

201:                                              ; preds = %192
  %202 = load i8, i8* @TX_CLK_75, align 1
  %203 = zext i8 %202 to i32
  %204 = load i8, i8* @RX_CLK_75, align 1
  %205 = zext i8 %204 to i32
  %206 = or i32 %203, %205
  %207 = load i8, i8* %8, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %208, %206
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %8, align 1
  br label %335

211:                                              ; preds = %192
  %212 = load i8, i8* @TX_CLK_110, align 1
  %213 = zext i8 %212 to i32
  %214 = load i8, i8* @RX_CLK_110, align 1
  %215 = zext i8 %214 to i32
  %216 = or i32 %213, %215
  %217 = load i8, i8* %8, align 1
  %218 = zext i8 %217 to i32
  %219 = or i32 %218, %216
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %8, align 1
  br label %335

221:                                              ; preds = %192
  %222 = load i8, i8* @TX_CLK_150, align 1
  %223 = zext i8 %222 to i32
  %224 = load i8, i8* @RX_CLK_150, align 1
  %225 = zext i8 %224 to i32
  %226 = or i32 %223, %225
  %227 = load i8, i8* %8, align 1
  %228 = zext i8 %227 to i32
  %229 = or i32 %228, %226
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %8, align 1
  br label %335

231:                                              ; preds = %192
  %232 = load i8, i8* @TX_CLK_300, align 1
  %233 = zext i8 %232 to i32
  %234 = load i8, i8* @RX_CLK_300, align 1
  %235 = zext i8 %234 to i32
  %236 = or i32 %233, %235
  %237 = load i8, i8* %8, align 1
  %238 = zext i8 %237 to i32
  %239 = or i32 %238, %236
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %8, align 1
  br label %335

241:                                              ; preds = %192
  %242 = load i8, i8* @TX_CLK_600, align 1
  %243 = zext i8 %242 to i32
  %244 = load i8, i8* @RX_CLK_600, align 1
  %245 = zext i8 %244 to i32
  %246 = or i32 %243, %245
  %247 = load i8, i8* %8, align 1
  %248 = zext i8 %247 to i32
  %249 = or i32 %248, %246
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %8, align 1
  br label %335

251:                                              ; preds = %192
  %252 = load i8, i8* @TX_CLK_1200, align 1
  %253 = zext i8 %252 to i32
  %254 = load i8, i8* @RX_CLK_1200, align 1
  %255 = zext i8 %254 to i32
  %256 = or i32 %253, %255
  %257 = load i8, i8* %8, align 1
  %258 = zext i8 %257 to i32
  %259 = or i32 %258, %256
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %8, align 1
  br label %335

261:                                              ; preds = %192
  %262 = load i8, i8* @TX_CLK_1800, align 1
  %263 = zext i8 %262 to i32
  %264 = load i8, i8* @RX_CLK_1800, align 1
  %265 = zext i8 %264 to i32
  %266 = or i32 %263, %265
  %267 = load i8, i8* %8, align 1
  %268 = zext i8 %267 to i32
  %269 = or i32 %268, %266
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %8, align 1
  br label %335

271:                                              ; preds = %192
  %272 = load i8, i8* @TX_CLK_2000, align 1
  %273 = zext i8 %272 to i32
  %274 = load i8, i8* @RX_CLK_2000, align 1
  %275 = zext i8 %274 to i32
  %276 = or i32 %273, %275
  %277 = load i8, i8* %8, align 1
  %278 = zext i8 %277 to i32
  %279 = or i32 %278, %276
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %8, align 1
  br label %335

281:                                              ; preds = %192
  %282 = load i8, i8* @TX_CLK_2400, align 1
  %283 = zext i8 %282 to i32
  %284 = load i8, i8* @RX_CLK_2400, align 1
  %285 = zext i8 %284 to i32
  %286 = or i32 %283, %285
  %287 = load i8, i8* %8, align 1
  %288 = zext i8 %287 to i32
  %289 = or i32 %288, %286
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %8, align 1
  br label %335

291:                                              ; preds = %192
  %292 = load i8, i8* @TX_CLK_4800, align 1
  %293 = zext i8 %292 to i32
  %294 = load i8, i8* @RX_CLK_4800, align 1
  %295 = zext i8 %294 to i32
  %296 = or i32 %293, %295
  %297 = load i8, i8* %8, align 1
  %298 = zext i8 %297 to i32
  %299 = or i32 %298, %296
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %8, align 1
  br label %335

301:                                              ; preds = %192
  %302 = load i8, i8* @TX_CLK_9600, align 1
  %303 = zext i8 %302 to i32
  %304 = load i8, i8* @RX_CLK_9600, align 1
  %305 = zext i8 %304 to i32
  %306 = or i32 %303, %305
  %307 = load i8, i8* %8, align 1
  %308 = zext i8 %307 to i32
  %309 = or i32 %308, %306
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %8, align 1
  br label %335

311:                                              ; preds = %192
  %312 = load i8, i8* @TX_CLK_19200, align 1
  %313 = zext i8 %312 to i32
  %314 = load i8, i8* @RX_CLK_19200, align 1
  %315 = zext i8 %314 to i32
  %316 = or i32 %313, %315
  %317 = load i8, i8* %8, align 1
  %318 = zext i8 %317 to i32
  %319 = or i32 %318, %316
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %8, align 1
  br label %335

321:                                              ; preds = %192
  br label %322

322:                                              ; preds = %192, %321
  %323 = load i8, i8* @TX_CLK_38400, align 1
  %324 = zext i8 %323 to i32
  %325 = load i8, i8* @RX_CLK_38400, align 1
  %326 = zext i8 %325 to i32
  %327 = or i32 %324, %326
  %328 = load i8, i8* %8, align 1
  %329 = zext i8 %328 to i32
  %330 = or i32 %329, %327
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %8, align 1
  %332 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %333 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %332, i32 0, i32 0
  %334 = call i32 @tty_termios_encode_baud_rate(%struct.TYPE_6__* %333, i32 38400, i32 38400)
  br label %335

335:                                              ; preds = %322, %311, %301, %291, %281, %271, %261, %251, %241, %231, %221, %211, %201
  %336 = load i8, i8* @MR1_ERROR_CHAR, align 1
  %337 = zext i8 %336 to i32
  %338 = load i8, i8* %6, align 1
  %339 = zext i8 %338 to i32
  %340 = or i32 %339, %337
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %6, align 1
  %342 = load i8, i8* @MR1_RxINT_RxRDY, align 1
  %343 = zext i8 %342 to i32
  %344 = load i8, i8* %6, align 1
  %345 = zext i8 %344 to i32
  %346 = or i32 %345, %343
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %6, align 1
  %348 = load i8, i8* %6, align 1
  %349 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %9, align 8
  %350 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %349, i32 0, i32 1
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 2
  %354 = call i32 @iowrite8(i8 zeroext %348, i32* %353)
  %355 = load i8, i8* %7, align 1
  %356 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %9, align 8
  %357 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %356, i32 0, i32 1
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 2
  %361 = call i32 @iowrite8(i8 zeroext %355, i32* %360)
  %362 = load i8, i8* %8, align 1
  %363 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %9, align 8
  %364 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %363, i32 0, i32 1
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 1
  %368 = call i32 @iowrite8(i8 zeroext %362, i32* %367)
  %369 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %9, align 8
  %370 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %335
  %374 = load i8, i8* @CR_ENABLE_RX, align 1
  %375 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %9, align 8
  %376 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %375, i32 0, i32 1
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = call i32 @iowrite8(i8 zeroext %374, i32* %379)
  br label %381

381:                                              ; preds = %191, %373, %335
  ret void
}

declare dso_local i32 @ipoctal_reset_channel(%struct.ipoctal_channel*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @iowrite8(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
