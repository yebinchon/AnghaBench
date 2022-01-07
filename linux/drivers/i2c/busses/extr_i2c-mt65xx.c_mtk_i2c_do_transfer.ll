; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_do_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_do_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_i2c = type { i32, i64, i64, i32, %struct.TYPE_3__, i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.i2c_msg = type { i32, i32 }

@I2C_RS_TRANSFER = common dso_local global i32 0, align 4
@OFFSET_CONTROL = common dso_local global i32 0, align 4
@I2C_CONTROL_DIR_CHANGE = common dso_local global i32 0, align 4
@I2C_CONTROL_RS = common dso_local global i32 0, align 4
@MAX_FS_MODE_SPEED = common dso_local global i64 0, align 8
@I2C_MASTER_WRRD = common dso_local global i64 0, align 8
@I2C_DEFAULT_SPEED = common dso_local global i64 0, align 8
@I2C_ST_START_CON = common dso_local global i32 0, align 4
@OFFSET_EXT_CONF = common dso_local global i32 0, align 4
@I2C_FS_START_CON = common dso_local global i32 0, align 4
@OFFSET_SLAVE_ADDR = common dso_local global i32 0, align 4
@I2C_HS_NACKERR = common dso_local global i32 0, align 4
@I2C_ACKERR = common dso_local global i32 0, align 4
@I2C_ARB_LOST = common dso_local global i32 0, align 4
@I2C_TRANSAC_COMP = common dso_local global i32 0, align 4
@OFFSET_INTR_STAT = common dso_local global i32 0, align 4
@I2C_FIFO_ADDR_CLR = common dso_local global i32 0, align 4
@OFFSET_FIFO_ADDR_CLR = common dso_local global i32 0, align 4
@OFFSET_INTR_MASK = common dso_local global i32 0, align 4
@OFFSET_TRANSFER_LEN = common dso_local global i32 0, align 4
@OFFSET_TRANSFER_LEN_AUX = common dso_local global i32 0, align 4
@I2C_WRRD_TRANAC_VALUE = common dso_local global i32 0, align 4
@OFFSET_TRANSAC_LEN = common dso_local global i32 0, align 4
@I2C_MASTER_RD = common dso_local global i64 0, align 8
@I2C_DMA_INT_FLAG_NONE = common dso_local global i32 0, align 4
@OFFSET_INT_FLAG = common dso_local global i64 0, align 8
@I2C_DMA_CON_RX = common dso_local global i32 0, align 4
@OFFSET_CON = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@OFFSET_RX_4G_MODE = common dso_local global i64 0, align 8
@OFFSET_RX_MEM_ADDR = common dso_local global i64 0, align 8
@OFFSET_RX_LEN = common dso_local global i64 0, align 8
@I2C_MASTER_WR = common dso_local global i64 0, align 8
@I2C_DMA_CON_TX = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@OFFSET_TX_4G_MODE = common dso_local global i64 0, align 8
@OFFSET_TX_MEM_ADDR = common dso_local global i64 0, align 8
@OFFSET_TX_LEN = common dso_local global i64 0, align 8
@I2C_DMA_CLR_FLAG = common dso_local global i32 0, align 4
@I2C_DMA_START_EN = common dso_local global i32 0, align 4
@OFFSET_EN = common dso_local global i64 0, align 8
@I2C_TRANSAC_START = common dso_local global i32 0, align 4
@I2C_RS_MUL_TRIG = common dso_local global i32 0, align 4
@I2C_RS_MUL_CNFG = common dso_local global i32 0, align 4
@OFFSET_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"addr: %x, transfer timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"addr: %x, transfer ACK error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_i2c*, %struct.i2c_msg*, i32, i32)* @mtk_i2c_do_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_do_transfer(%struct.mtk_i2c* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_i2c*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.mtk_i2c* %0, %struct.mtk_i2c** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %20 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %21 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %23 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @I2C_RS_TRANSFER, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %26, %4
  %29 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %30 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %29, i32 0, i32 5
  %31 = call i32 @reinit_completion(i32* %30)
  %32 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %33 = load i32, i32* @OFFSET_CONTROL, align 4
  %34 = call i32 @mtk_i2c_readw(%struct.mtk_i2c* %32, i32 %33)
  %35 = load i32, i32* @I2C_CONTROL_DIR_CHANGE, align 4
  %36 = load i32, i32* @I2C_CONTROL_RS, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %34, %38
  store i32 %39, i32* %12, align 4
  %40 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MAX_FS_MODE_SPEED, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %28
  %49 = load i32, i32* @I2C_CONTROL_RS, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %54 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @I2C_MASTER_WRRD, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @I2C_CONTROL_DIR_CHANGE, align 4
  %60 = load i32, i32* @I2C_CONTROL_RS, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @OFFSET_CONTROL, align 4
  %68 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %65, i32 %66, i32 %67)
  %69 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %70 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @I2C_DEFAULT_SPEED, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %76 = load i32, i32* @I2C_ST_START_CON, align 4
  %77 = load i32, i32* @OFFSET_EXT_CONF, align 4
  %78 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %75, i32 %76, i32 %77)
  br label %84

79:                                               ; preds = %64
  %80 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %81 = load i32, i32* @I2C_FS_START_CON, align 4
  %82 = load i32, i32* @OFFSET_EXT_CONF, align 4
  %83 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %86 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @OFFSET_SLAVE_ADDR, align 4
  %90 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %87, i32 %88, i32 %89)
  %91 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @I2C_HS_NACKERR, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @I2C_ACKERR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @I2C_ARB_LOST, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @I2C_TRANSAC_COMP, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @OFFSET_INTR_STAT, align 4
  %102 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %91, i32 %100, i32 %101)
  %103 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %104 = load i32, i32* @I2C_FIFO_ADDR_CLR, align 4
  %105 = load i32, i32* @OFFSET_FIFO_ADDR_CLR, align 4
  %106 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %103, i32 %104, i32 %105)
  %107 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @I2C_HS_NACKERR, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @I2C_ACKERR, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @I2C_ARB_LOST, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @I2C_TRANSAC_COMP, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @OFFSET_INTR_MASK, align 4
  %118 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %107, i32 %116, i32 %117)
  %119 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %120 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @I2C_MASTER_WRRD, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %163

124:                                              ; preds = %84
  %125 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %126 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %125, i32 0, i32 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %124
  %132 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %133 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @OFFSET_TRANSFER_LEN, align 4
  %137 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %132, i32 %135, i32 %136)
  %138 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 1
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @OFFSET_TRANSFER_LEN_AUX, align 4
  %144 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %138, i32 %142, i32 %143)
  br label %158

145:                                              ; preds = %124
  %146 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %147 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %151 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %150, i64 1
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 8
  %155 = or i32 %149, %154
  %156 = load i32, i32* @OFFSET_TRANSFER_LEN, align 4
  %157 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %146, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %145, %131
  %159 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %160 = load i32, i32* @I2C_WRRD_TRANAC_VALUE, align 4
  %161 = load i32, i32* @OFFSET_TRANSAC_LEN, align 4
  %162 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %159, i32 %160, i32 %161)
  br label %174

163:                                              ; preds = %84
  %164 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %165 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %166 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @OFFSET_TRANSFER_LEN, align 4
  %169 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %164, i32 %167, i32 %168)
  %170 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @OFFSET_TRANSAC_LEN, align 4
  %173 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %163, %158
  %175 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %176 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @I2C_MASTER_RD, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %259

180:                                              ; preds = %174
  %181 = load i32, i32* @I2C_DMA_INT_FLAG_NONE, align 4
  %182 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %183 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %182, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @OFFSET_INT_FLAG, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writel(i32 %181, i64 %186)
  %188 = load i32, i32* @I2C_DMA_CON_RX, align 4
  %189 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %190 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @OFFSET_CON, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @writel(i32 %188, i64 %193)
  %195 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %196 = call i32* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg* %195, i32 1)
  store i32* %196, i32** %15, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %180
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %5, align 4
  br label %660

202:                                              ; preds = %180
  %203 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %204 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load i32*, i32** %15, align 8
  %207 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %208 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %211 = call i64 @dma_map_single(i32 %205, i32* %206, i32 %209, i32 %210)
  store i64 %211, i64* %17, align 8
  %212 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %213 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load i64, i64* %17, align 8
  %216 = call i64 @dma_mapping_error(i32 %214, i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %202
  %219 = load i32*, i32** %15, align 8
  %220 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %221 = call i32 @i2c_put_dma_safe_msg_buf(i32* %219, %struct.i2c_msg* %220, i32 0)
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %5, align 4
  br label %660

224:                                              ; preds = %202
  %225 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %226 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %225, i32 0, i32 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %224
  %232 = load i64, i64* %17, align 8
  %233 = call i32 @mtk_i2c_set_4g_mode(i64 %232)
  store i32 %233, i32* %14, align 4
  %234 = load i32, i32* %14, align 4
  %235 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %236 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @OFFSET_RX_4G_MODE, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @writel(i32 %234, i64 %239)
  br label %241

241:                                              ; preds = %231, %224
  %242 = load i64, i64* %17, align 8
  %243 = trunc i64 %242 to i32
  %244 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %245 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %244, i32 0, i32 7
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @OFFSET_RX_MEM_ADDR, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @writel(i32 %243, i64 %248)
  %250 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %251 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %254 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %253, i32 0, i32 7
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @OFFSET_RX_LEN, align 8
  %257 = add nsw i64 %255, %256
  %258 = call i32 @writel(i32 %252, i64 %257)
  br label %508

259:                                              ; preds = %174
  %260 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %261 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @I2C_MASTER_WR, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %344

265:                                              ; preds = %259
  %266 = load i32, i32* @I2C_DMA_INT_FLAG_NONE, align 4
  %267 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %268 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %267, i32 0, i32 7
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @OFFSET_INT_FLAG, align 8
  %271 = add nsw i64 %269, %270
  %272 = call i32 @writel(i32 %266, i64 %271)
  %273 = load i32, i32* @I2C_DMA_CON_TX, align 4
  %274 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %275 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @OFFSET_CON, align 8
  %278 = add nsw i64 %276, %277
  %279 = call i32 @writel(i32 %273, i64 %278)
  %280 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %281 = call i32* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg* %280, i32 1)
  store i32* %281, i32** %16, align 8
  %282 = load i32*, i32** %16, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %287, label %284

284:                                              ; preds = %265
  %285 = load i32, i32* @ENOMEM, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %5, align 4
  br label %660

287:                                              ; preds = %265
  %288 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %289 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load i32*, i32** %16, align 8
  %292 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %293 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @DMA_TO_DEVICE, align 4
  %296 = call i64 @dma_map_single(i32 %290, i32* %291, i32 %294, i32 %295)
  store i64 %296, i64* %18, align 8
  %297 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %298 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = load i64, i64* %18, align 8
  %301 = call i64 @dma_mapping_error(i32 %299, i64 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %287
  %304 = load i32*, i32** %16, align 8
  %305 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %306 = call i32 @i2c_put_dma_safe_msg_buf(i32* %304, %struct.i2c_msg* %305, i32 0)
  %307 = load i32, i32* @ENOMEM, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %5, align 4
  br label %660

309:                                              ; preds = %287
  %310 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %311 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %310, i32 0, i32 8
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %309
  %317 = load i64, i64* %18, align 8
  %318 = call i32 @mtk_i2c_set_4g_mode(i64 %317)
  store i32 %318, i32* %14, align 4
  %319 = load i32, i32* %14, align 4
  %320 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %321 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %320, i32 0, i32 7
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @OFFSET_TX_4G_MODE, align 8
  %324 = add nsw i64 %322, %323
  %325 = call i32 @writel(i32 %319, i64 %324)
  br label %326

326:                                              ; preds = %316, %309
  %327 = load i64, i64* %18, align 8
  %328 = trunc i64 %327 to i32
  %329 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %330 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %329, i32 0, i32 7
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @OFFSET_TX_MEM_ADDR, align 8
  %333 = add nsw i64 %331, %332
  %334 = call i32 @writel(i32 %328, i64 %333)
  %335 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %336 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %339 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %338, i32 0, i32 7
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @OFFSET_TX_LEN, align 8
  %342 = add nsw i64 %340, %341
  %343 = call i32 @writel(i32 %337, i64 %342)
  br label %507

344:                                              ; preds = %259
  %345 = load i32, i32* @I2C_DMA_CLR_FLAG, align 4
  %346 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %347 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %346, i32 0, i32 7
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @OFFSET_INT_FLAG, align 8
  %350 = add nsw i64 %348, %349
  %351 = call i32 @writel(i32 %345, i64 %350)
  %352 = load i32, i32* @I2C_DMA_CLR_FLAG, align 4
  %353 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %354 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %353, i32 0, i32 7
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @OFFSET_CON, align 8
  %357 = add nsw i64 %355, %356
  %358 = call i32 @writel(i32 %352, i64 %357)
  %359 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %360 = call i32* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg* %359, i32 1)
  store i32* %360, i32** %16, align 8
  %361 = load i32*, i32** %16, align 8
  %362 = icmp ne i32* %361, null
  br i1 %362, label %366, label %363

363:                                              ; preds = %344
  %364 = load i32, i32* @ENOMEM, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %5, align 4
  br label %660

366:                                              ; preds = %344
  %367 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %368 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = load i32*, i32** %16, align 8
  %371 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %372 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @DMA_TO_DEVICE, align 4
  %375 = call i64 @dma_map_single(i32 %369, i32* %370, i32 %373, i32 %374)
  store i64 %375, i64* %18, align 8
  %376 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %377 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = load i64, i64* %18, align 8
  %380 = call i64 @dma_mapping_error(i32 %378, i64 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %366
  %383 = load i32*, i32** %16, align 8
  %384 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %385 = call i32 @i2c_put_dma_safe_msg_buf(i32* %383, %struct.i2c_msg* %384, i32 0)
  %386 = load i32, i32* @ENOMEM, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %5, align 4
  br label %660

388:                                              ; preds = %366
  %389 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %390 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %389, i64 1
  %391 = call i32* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg* %390, i32 1)
  store i32* %391, i32** %15, align 8
  %392 = load i32*, i32** %15, align 8
  %393 = icmp ne i32* %392, null
  br i1 %393, label %409, label %394

394:                                              ; preds = %388
  %395 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %396 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = load i64, i64* %18, align 8
  %399 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %400 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @DMA_TO_DEVICE, align 4
  %403 = call i32 @dma_unmap_single(i32 %397, i64 %398, i32 %401, i32 %402)
  %404 = load i32*, i32** %16, align 8
  %405 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %406 = call i32 @i2c_put_dma_safe_msg_buf(i32* %404, %struct.i2c_msg* %405, i32 0)
  %407 = load i32, i32* @ENOMEM, align 4
  %408 = sub nsw i32 0, %407
  store i32 %408, i32* %5, align 4
  br label %660

409:                                              ; preds = %388
  %410 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %411 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 8
  %413 = load i32*, i32** %15, align 8
  %414 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %415 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %414, i64 1
  %416 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %419 = call i64 @dma_map_single(i32 %412, i32* %413, i32 %417, i32 %418)
  store i64 %419, i64* %17, align 8
  %420 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %421 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 8
  %423 = load i64, i64* %17, align 8
  %424 = call i64 @dma_mapping_error(i32 %422, i64 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %445

426:                                              ; preds = %409
  %427 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %428 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 8
  %430 = load i64, i64* %18, align 8
  %431 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %432 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @DMA_TO_DEVICE, align 4
  %435 = call i32 @dma_unmap_single(i32 %429, i64 %430, i32 %433, i32 %434)
  %436 = load i32*, i32** %16, align 8
  %437 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %438 = call i32 @i2c_put_dma_safe_msg_buf(i32* %436, %struct.i2c_msg* %437, i32 0)
  %439 = load i32*, i32** %15, align 8
  %440 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %441 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %440, i64 1
  %442 = call i32 @i2c_put_dma_safe_msg_buf(i32* %439, %struct.i2c_msg* %441, i32 0)
  %443 = load i32, i32* @ENOMEM, align 4
  %444 = sub nsw i32 0, %443
  store i32 %444, i32* %5, align 4
  br label %660

445:                                              ; preds = %409
  %446 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %447 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %446, i32 0, i32 8
  %448 = load %struct.TYPE_4__*, %struct.TYPE_4__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %471

452:                                              ; preds = %445
  %453 = load i64, i64* %18, align 8
  %454 = call i32 @mtk_i2c_set_4g_mode(i64 %453)
  store i32 %454, i32* %14, align 4
  %455 = load i32, i32* %14, align 4
  %456 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %457 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %456, i32 0, i32 7
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @OFFSET_TX_4G_MODE, align 8
  %460 = add nsw i64 %458, %459
  %461 = call i32 @writel(i32 %455, i64 %460)
  %462 = load i64, i64* %17, align 8
  %463 = call i32 @mtk_i2c_set_4g_mode(i64 %462)
  store i32 %463, i32* %14, align 4
  %464 = load i32, i32* %14, align 4
  %465 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %466 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %465, i32 0, i32 7
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* @OFFSET_RX_4G_MODE, align 8
  %469 = add nsw i64 %467, %468
  %470 = call i32 @writel(i32 %464, i64 %469)
  br label %471

471:                                              ; preds = %452, %445
  %472 = load i64, i64* %18, align 8
  %473 = trunc i64 %472 to i32
  %474 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %475 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %474, i32 0, i32 7
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @OFFSET_TX_MEM_ADDR, align 8
  %478 = add nsw i64 %476, %477
  %479 = call i32 @writel(i32 %473, i64 %478)
  %480 = load i64, i64* %17, align 8
  %481 = trunc i64 %480 to i32
  %482 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %483 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %482, i32 0, i32 7
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @OFFSET_RX_MEM_ADDR, align 8
  %486 = add nsw i64 %484, %485
  %487 = call i32 @writel(i32 %481, i64 %486)
  %488 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %489 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %492 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %491, i32 0, i32 7
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* @OFFSET_TX_LEN, align 8
  %495 = add nsw i64 %493, %494
  %496 = call i32 @writel(i32 %490, i64 %495)
  %497 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %498 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %497, i64 1
  %499 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %502 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %501, i32 0, i32 7
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @OFFSET_RX_LEN, align 8
  %505 = add nsw i64 %503, %504
  %506 = call i32 @writel(i32 %500, i64 %505)
  br label %507

507:                                              ; preds = %471, %326
  br label %508

508:                                              ; preds = %507, %241
  %509 = load i32, i32* @I2C_DMA_START_EN, align 4
  %510 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %511 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %510, i32 0, i32 7
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* @OFFSET_EN, align 8
  %514 = add nsw i64 %512, %513
  %515 = call i32 @writel(i32 %509, i64 %514)
  %516 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %517 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %516, i32 0, i32 6
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %508
  %521 = load i32, i32* @I2C_TRANSAC_START, align 4
  store i32 %521, i32* %11, align 4
  br label %533

522:                                              ; preds = %508
  %523 = load i32, i32* @I2C_TRANSAC_START, align 4
  %524 = load i32, i32* @I2C_RS_MUL_TRIG, align 4
  %525 = or i32 %523, %524
  store i32 %525, i32* %11, align 4
  %526 = load i32, i32* %9, align 4
  %527 = icmp sge i32 %526, 1
  br i1 %527, label %528, label %532

528:                                              ; preds = %522
  %529 = load i32, i32* @I2C_RS_MUL_CNFG, align 4
  %530 = load i32, i32* %11, align 4
  %531 = or i32 %530, %529
  store i32 %531, i32* %11, align 4
  br label %532

532:                                              ; preds = %528, %522
  br label %533

533:                                              ; preds = %532, %520
  %534 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %535 = load i32, i32* %11, align 4
  %536 = load i32, i32* @OFFSET_START, align 4
  %537 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %534, i32 %535, i32 %536)
  %538 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %539 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %538, i32 0, i32 5
  %540 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %541 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %540, i32 0, i32 4
  %542 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = call i32 @wait_for_completion_timeout(i32* %539, i32 %543)
  store i32 %544, i32* %19, align 4
  %545 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %546 = load i32, i32* %13, align 4
  %547 = load i32, i32* @I2C_HS_NACKERR, align 4
  %548 = or i32 %546, %547
  %549 = load i32, i32* @I2C_ACKERR, align 4
  %550 = or i32 %548, %549
  %551 = load i32, i32* @I2C_ARB_LOST, align 4
  %552 = or i32 %550, %551
  %553 = load i32, i32* @I2C_TRANSAC_COMP, align 4
  %554 = or i32 %552, %553
  %555 = xor i32 %554, -1
  %556 = load i32, i32* @OFFSET_INTR_MASK, align 4
  %557 = call i32 @mtk_i2c_writew(%struct.mtk_i2c* %545, i32 %555, i32 %556)
  %558 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %559 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %558, i32 0, i32 2
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @I2C_MASTER_WR, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %563, label %576

563:                                              ; preds = %533
  %564 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %565 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %564, i32 0, i32 3
  %566 = load i32, i32* %565, align 8
  %567 = load i64, i64* %18, align 8
  %568 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %569 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = load i32, i32* @DMA_TO_DEVICE, align 4
  %572 = call i32 @dma_unmap_single(i32 %566, i64 %567, i32 %570, i32 %571)
  %573 = load i32*, i32** %16, align 8
  %574 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %575 = call i32 @i2c_put_dma_safe_msg_buf(i32* %573, %struct.i2c_msg* %574, i32 1)
  br label %623

576:                                              ; preds = %533
  %577 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %578 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %577, i32 0, i32 2
  %579 = load i64, i64* %578, align 8
  %580 = load i64, i64* @I2C_MASTER_RD, align 8
  %581 = icmp eq i64 %579, %580
  br i1 %581, label %582, label %595

582:                                              ; preds = %576
  %583 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %584 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 8
  %586 = load i64, i64* %17, align 8
  %587 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %588 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %591 = call i32 @dma_unmap_single(i32 %585, i64 %586, i32 %589, i32 %590)
  %592 = load i32*, i32** %15, align 8
  %593 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %594 = call i32 @i2c_put_dma_safe_msg_buf(i32* %592, %struct.i2c_msg* %593, i32 1)
  br label %622

595:                                              ; preds = %576
  %596 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %597 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 8
  %599 = load i64, i64* %18, align 8
  %600 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %601 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 4
  %603 = load i32, i32* @DMA_TO_DEVICE, align 4
  %604 = call i32 @dma_unmap_single(i32 %598, i64 %599, i32 %602, i32 %603)
  %605 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %606 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %605, i32 0, i32 3
  %607 = load i32, i32* %606, align 8
  %608 = load i64, i64* %17, align 8
  %609 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %610 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %609, i64 1
  %611 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 4
  %613 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %614 = call i32 @dma_unmap_single(i32 %607, i64 %608, i32 %612, i32 %613)
  %615 = load i32*, i32** %16, align 8
  %616 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %617 = call i32 @i2c_put_dma_safe_msg_buf(i32* %615, %struct.i2c_msg* %616, i32 1)
  %618 = load i32*, i32** %15, align 8
  %619 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %620 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %619, i64 1
  %621 = call i32 @i2c_put_dma_safe_msg_buf(i32* %618, %struct.i2c_msg* %620, i32 1)
  br label %622

622:                                              ; preds = %595, %582
  br label %623

623:                                              ; preds = %622, %563
  %624 = load i32, i32* %19, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %638

626:                                              ; preds = %623
  %627 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %628 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %627, i32 0, i32 3
  %629 = load i32, i32* %628, align 8
  %630 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %631 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = call i32 @dev_dbg(i32 %629, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %632)
  %634 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %635 = call i32 @mtk_i2c_init_hw(%struct.mtk_i2c* %634)
  %636 = load i32, i32* @ETIMEDOUT, align 4
  %637 = sub nsw i32 0, %636
  store i32 %637, i32* %5, align 4
  br label %660

638:                                              ; preds = %623
  %639 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %640 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 8
  %642 = load i32, i32* @I2C_HS_NACKERR, align 4
  %643 = load i32, i32* @I2C_ACKERR, align 4
  %644 = or i32 %642, %643
  %645 = and i32 %641, %644
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %659

647:                                              ; preds = %638
  %648 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %649 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %648, i32 0, i32 3
  %650 = load i32, i32* %649, align 8
  %651 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %652 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 4
  %654 = call i32 @dev_dbg(i32 %650, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %653)
  %655 = load %struct.mtk_i2c*, %struct.mtk_i2c** %6, align 8
  %656 = call i32 @mtk_i2c_init_hw(%struct.mtk_i2c* %655)
  %657 = load i32, i32* @ENXIO, align 4
  %658 = sub nsw i32 0, %657
  store i32 %658, i32* %5, align 4
  br label %660

659:                                              ; preds = %638
  store i32 0, i32* %5, align 4
  br label %660

660:                                              ; preds = %659, %647, %626, %426, %394, %382, %363, %303, %284, %218, %199
  %661 = load i32, i32* %5, align 4
  ret i32 %661
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mtk_i2c_readw(%struct.mtk_i2c*, i32) #1

declare dso_local i32 @mtk_i2c_writew(%struct.mtk_i2c*, i32, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg*, i32) #1

declare dso_local i64 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @i2c_put_dma_safe_msg_buf(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @mtk_i2c_set_4g_mode(i64) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mtk_i2c_init_hw(%struct.mtk_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
