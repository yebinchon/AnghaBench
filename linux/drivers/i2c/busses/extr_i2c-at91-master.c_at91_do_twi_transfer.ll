; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_do_twi_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-master.c_at91_do_twi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_twi_dev = type { i32, i32, i32, i64, i64, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"transfer: %s %zu bytes.\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@AT91_TWI_SR = common dso_local global i32 0, align 4
@AT91_TWI_FMR = common dso_local global i32 0, align 4
@AT91_TWI_FMR_TXRDYM_MASK = common dso_local global i32 0, align 4
@AT91_TWI_FMR_RXRDYM_MASK = common dso_local global i32 0, align 4
@AT91_TWI_ONE_DATA = common dso_local global i32 0, align 4
@AT91_TWI_CR = common dso_local global i32 0, align 4
@AT91_TWI_THRCLR = common dso_local global i32 0, align 4
@AT91_TWI_RHRCLR = common dso_local global i32 0, align 4
@AT91_TWI_QUICK = common dso_local global i32 0, align 4
@AT91_TWI_IER = common dso_local global i32 0, align 4
@AT91_TWI_TXCOMP = common dso_local global i32 0, align 4
@AT91_TWI_START = common dso_local global i32 0, align 4
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@AT91_TWI_STOP = common dso_local global i32 0, align 4
@AT91_I2C_DMA_THRESHOLD = common dso_local global i32 0, align 4
@AT91_TWI_NACK = common dso_local global i32 0, align 4
@AT91_TWI_RXRDY = common dso_local global i32 0, align 4
@AT91_TWI_TXRDY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"received nack\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@AT91_TWI_OVRE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"overrun while reading\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AT91_TWI_UNRE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"underrun while writing\0A\00", align 1
@AT91_TWI_LOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"tx locked\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"invalid smbus block length recvd\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"transfer complete\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"unlock tx\0A\00", align 1
@AT91_TWI_LOCKCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_twi_dev*)* @at91_do_twi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_do_twi_transfer(%struct.at91_twi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at91_twi_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.at91_twi_dev* %0, %struct.at91_twi_dev** %3, align 8
  %10 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %11 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %10, i32 0, i32 10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %16 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %15, i32 0, i32 10
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %21 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %24 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %23, i32 0, i32 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I2C_M_RD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %33 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %34 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  %37 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %38 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %37, i32 0, i32 6
  %39 = call i32 @reinit_completion(i32* %38)
  %40 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %41 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %43 = load i32, i32* @AT91_TWI_SR, align 4
  %44 = call i32 @at91_twi_read(%struct.at91_twi_dev* %42, i32 %43)
  %45 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %46 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %1
  %50 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %51 = load i32, i32* @AT91_TWI_FMR, align 4
  %52 = call i32 @at91_twi_read(%struct.at91_twi_dev* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @AT91_TWI_FMR_TXRDYM_MASK, align 4
  %54 = load i32, i32* @AT91_TWI_FMR_RXRDYM_MASK, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @AT91_TWI_ONE_DATA, align 4
  %60 = call i32 @AT91_TWI_FMR_TXRDYM(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @AT91_TWI_ONE_DATA, align 4
  %64 = call i32 @AT91_TWI_FMR_RXRDYM(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %68 = load i32, i32* @AT91_TWI_FMR, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @at91_twi_write(%struct.at91_twi_dev* %67, i32 %68, i32 %69)
  %71 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %72 = load i32, i32* @AT91_TWI_CR, align 4
  %73 = load i32, i32* @AT91_TWI_THRCLR, align 4
  %74 = load i32, i32* @AT91_TWI_RHRCLR, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @at91_twi_write(%struct.at91_twi_dev* %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %49, %1
  %78 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %79 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %77
  %83 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %84 = load i32, i32* @AT91_TWI_CR, align 4
  %85 = load i32, i32* @AT91_TWI_QUICK, align 4
  %86 = call i32 @at91_twi_write(%struct.at91_twi_dev* %83, i32 %84, i32 %85)
  %87 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %88 = load i32, i32* @AT91_TWI_IER, align 4
  %89 = load i32, i32* @AT91_TWI_TXCOMP, align 4
  %90 = call i32 @at91_twi_write(%struct.at91_twi_dev* %87, i32 %88, i32 %89)
  br label %195

91:                                               ; preds = %77
  %92 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %93 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %92, i32 0, i32 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @I2C_M_RD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %156

100:                                              ; preds = %91
  %101 = load i32, i32* @AT91_TWI_START, align 4
  store i32 %101, i32* %9, align 4
  %102 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %103 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %100
  %107 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %108 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sle i32 %109, 1
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %113 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %112, i32 0, i32 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* @AT91_TWI_STOP, align 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %120, %111, %106, %100
  %125 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %126 = load i32, i32* @AT91_TWI_CR, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @at91_twi_write(%struct.at91_twi_dev* %125, i32 %126, i32 %127)
  %129 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %130 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %124
  %134 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %135 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @AT91_I2C_DMA_THRESHOLD, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %141 = load i32, i32* @AT91_TWI_IER, align 4
  %142 = load i32, i32* @AT91_TWI_NACK, align 4
  %143 = call i32 @at91_twi_write(%struct.at91_twi_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %145 = call i32 @at91_twi_read_data_dma(%struct.at91_twi_dev* %144)
  br label %155

146:                                              ; preds = %133, %124
  %147 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %148 = load i32, i32* @AT91_TWI_IER, align 4
  %149 = load i32, i32* @AT91_TWI_TXCOMP, align 4
  %150 = load i32, i32* @AT91_TWI_NACK, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @AT91_TWI_RXRDY, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @at91_twi_write(%struct.at91_twi_dev* %147, i32 %148, i32 %153)
  br label %155

155:                                              ; preds = %146, %139
  br label %194

156:                                              ; preds = %91
  %157 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %158 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %156
  %162 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %163 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @AT91_I2C_DMA_THRESHOLD, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %169 = load i32, i32* @AT91_TWI_IER, align 4
  %170 = load i32, i32* @AT91_TWI_NACK, align 4
  %171 = call i32 @at91_twi_write(%struct.at91_twi_dev* %168, i32 %169, i32 %170)
  %172 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %173 = call i32 @at91_twi_write_data_dma(%struct.at91_twi_dev* %172)
  br label %193

174:                                              ; preds = %161, %156
  %175 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %176 = call i32 @at91_twi_write_next_byte(%struct.at91_twi_dev* %175)
  %177 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %178 = load i32, i32* @AT91_TWI_IER, align 4
  %179 = load i32, i32* @AT91_TWI_TXCOMP, align 4
  %180 = load i32, i32* @AT91_TWI_NACK, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %183 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %174
  %187 = load i32, i32* @AT91_TWI_TXRDY, align 4
  br label %189

188:                                              ; preds = %174
  br label %189

189:                                              ; preds = %188, %186
  %190 = phi i32 [ %187, %186 ], [ 0, %188 ]
  %191 = or i32 %181, %190
  %192 = call i32 @at91_twi_write(%struct.at91_twi_dev* %177, i32 %178, i32 %191)
  br label %193

193:                                              ; preds = %189, %167
  br label %194

194:                                              ; preds = %193, %155
  br label %195

195:                                              ; preds = %194, %82
  %196 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %197 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %196, i32 0, i32 6
  %198 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %199 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @wait_for_completion_timeout(i32* %197, i32 %201)
  store i64 %202, i64* %5, align 8
  %203 = load i64, i64* %5, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %195
  %206 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %207 = load i32, i32* @AT91_TWI_SR, align 4
  %208 = call i32 @at91_twi_read(%struct.at91_twi_dev* %206, i32 %207)
  %209 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %210 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %214 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @dev_err(i32 %215, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %217 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %218 = call i32 @at91_init_twi_bus(%struct.at91_twi_dev* %217)
  %219 = load i32, i32* @ETIMEDOUT, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %4, align 4
  br label %305

221:                                              ; preds = %195
  %222 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %223 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @AT91_TWI_NACK, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %221
  %229 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %230 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @dev_dbg(i32 %231, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %233 = load i32, i32* @EREMOTEIO, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %4, align 4
  br label %305

235:                                              ; preds = %221
  %236 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %237 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @AT91_TWI_OVRE, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %235
  %243 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %244 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @dev_err(i32 %245, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %247 = load i32, i32* @EIO, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %4, align 4
  br label %305

249:                                              ; preds = %235
  %250 = load i32, i32* %6, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %249
  %253 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %254 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @AT91_TWI_UNRE, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %252
  %260 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %261 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @dev_err(i32 %262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %264 = load i32, i32* @EIO, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %4, align 4
  br label %305

266:                                              ; preds = %252, %249
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %266
  %270 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %271 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %288

274:                                              ; preds = %269, %266
  %275 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %276 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @AT91_TWI_LOCK, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %274
  %282 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %283 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @dev_err(i32 %284, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %286 = load i32, i32* @EIO, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %4, align 4
  br label %305

288:                                              ; preds = %274, %269
  %289 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %290 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %288
  %294 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %295 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @dev_err(i32 %296, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %298 = load i32, i32* @EPROTO, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %4, align 4
  br label %305

300:                                              ; preds = %288
  %301 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %302 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 (i32, i8*, ...) @dev_dbg(i32 %303, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %335

305:                                              ; preds = %293, %281, %259, %242, %228, %205
  %306 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %307 = call i32 @at91_twi_dma_cleanup(%struct.at91_twi_dev* %306)
  %308 = load i32, i32* %7, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %305
  %311 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %312 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %333

315:                                              ; preds = %310, %305
  %316 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %317 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @AT91_TWI_LOCK, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %333

322:                                              ; preds = %315
  %323 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %324 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = call i32 (i32, i8*, ...) @dev_dbg(i32 %325, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %327 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %3, align 8
  %328 = load i32, i32* @AT91_TWI_CR, align 4
  %329 = load i32, i32* @AT91_TWI_THRCLR, align 4
  %330 = load i32, i32* @AT91_TWI_LOCKCLR, align 4
  %331 = or i32 %329, %330
  %332 = call i32 @at91_twi_write(%struct.at91_twi_dev* %327, i32 %328, i32 %331)
  br label %333

333:                                              ; preds = %322, %315, %310
  %334 = load i32, i32* %4, align 4
  store i32 %334, i32* %2, align 4
  br label %335

335:                                              ; preds = %333, %300
  %336 = load i32, i32* %2, align 4
  ret i32 %336
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @at91_twi_read(%struct.at91_twi_dev*, i32) #1

declare dso_local i32 @AT91_TWI_FMR_TXRDYM(i32) #1

declare dso_local i32 @AT91_TWI_FMR_RXRDYM(i32) #1

declare dso_local i32 @at91_twi_write(%struct.at91_twi_dev*, i32, i32) #1

declare dso_local i32 @at91_twi_read_data_dma(%struct.at91_twi_dev*) #1

declare dso_local i32 @at91_twi_write_data_dma(%struct.at91_twi_dev*) #1

declare dso_local i32 @at91_twi_write_next_byte(%struct.at91_twi_dev*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @at91_init_twi_bus(%struct.at91_twi_dev*) #1

declare dso_local i32 @at91_twi_dma_cleanup(%struct.at91_twi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
