; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axxia_i2c_dev = type { i64, i64, i32, i32, %struct.TYPE_2__*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@INTERRUPT_STATUS = common dso_local global i64 0, align 8
@INT_SLV = common dso_local global i32 0, align 4
@INT_MST = common dso_local global i32 0, align 4
@MST_INT_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unexpected interrupt\0A\00", align 1
@MST_STATUS_RFL = common dso_local global i32 0, align 4
@MST_STATUS_TFL = common dso_local global i32 0, align 4
@MST_STATUS_ERR = common dso_local global i32 0, align 4
@MST_STATUS_AL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MST_STATUS_NAK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"error %#x, addr=%#x rx=%u/%u tx=%u/%u\0A\00", align 1
@MST_RX_BYTES_XFRD = common dso_local global i64 0, align 8
@MST_RX_XFER = common dso_local global i64 0, align 8
@MST_TX_BYTES_XFRD = common dso_local global i64 0, align 8
@MST_TX_XFER = common dso_local global i64 0, align 8
@MST_STATUS_SCC = common dso_local global i32 0, align 4
@MST_STATUS_TSS = common dso_local global i32 0, align 4
@MST_STATUS_SNS = common dso_local global i32 0, align 4
@MST_STATUS_SS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @axxia_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.axxia_i2c_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.axxia_i2c_dev*
  store %struct.axxia_i2c_dev* %11, %struct.axxia_i2c_dev** %6, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %14 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INTERRUPT_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @INT_SLV, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %25 = call i32 @axxia_i2c_slv_isr(%struct.axxia_i2c_dev* %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @INT_MST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %241

33:                                               ; preds = %26
  %34 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %35 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MST_INT_STATUS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %41 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %40, i32 0, i32 6
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %33
  %45 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %46 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %232

49:                                               ; preds = %33
  %50 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %51 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i64 @i2c_m_rd(%struct.TYPE_2__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MST_STATUS_RFL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %62 = call i32 @axxia_i2c_empty_rx_fifo(%struct.axxia_i2c_dev* %61)
  br label %63

63:                                               ; preds = %60, %55, %49
  %64 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %65 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %64, i32 0, i32 6
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = call i64 @i2c_m_rd(%struct.TYPE_2__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @MST_STATUS_TFL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %76 = call i64 @axxia_i2c_fill_tx_fifo(%struct.axxia_i2c_dev* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %80 = load i32, i32* @MST_STATUS_TFL, align 4
  %81 = call i32 @i2c_int_disable(%struct.axxia_i2c_dev* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %69, %63
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @MST_STATUS_ERR, align 4
  %86 = and i32 %84, %85
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %155

89:                                               ; preds = %83
  %90 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %91 = call i32 @i2c_int_disable(%struct.axxia_i2c_dev* %90, i32 -1)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MST_STATUS_AL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  %99 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %100 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  br label %117

101:                                              ; preds = %89
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @MST_STATUS_NAK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @ENXIO, align 4
  %108 = sub nsw i32 0, %107
  %109 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %110 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  br label %116

111:                                              ; preds = %101
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  %114 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %115 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %106
  br label %117

117:                                              ; preds = %116, %96
  %118 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %119 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %123 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %122, i32 0, i32 6
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %128 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MST_RX_BYTES_XFRD, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @readl(i64 %131)
  %133 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %134 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MST_RX_XFER, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @readl(i64 %137)
  %139 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %140 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MST_TX_BYTES_XFRD, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @readl(i64 %143)
  %145 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %146 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @MST_TX_XFER, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @readl(i64 %149)
  %151 = call i32 @dev_dbg(i32 %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %126, i32 %132, i32 %138, i32 %144, i32 %150)
  %152 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %153 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %152, i32 0, i32 2
  %154 = call i32 @complete(i32* %153)
  br label %231

155:                                              ; preds = %83
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @MST_STATUS_SCC, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %162 = load i32, i32* @MST_STATUS_TSS, align 4
  %163 = xor i32 %162, -1
  %164 = call i32 @i2c_int_disable(%struct.axxia_i2c_dev* %161, i32 %163)
  %165 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %166 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %165, i32 0, i32 2
  %167 = call i32 @complete(i32* %166)
  br label %230

168:                                              ; preds = %155
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @MST_STATUS_SNS, align 4
  %171 = load i32, i32* @MST_STATUS_SS, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %211

175:                                              ; preds = %168
  %176 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %177 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %184

181:                                              ; preds = %175
  %182 = load i32, i32* @MST_STATUS_TSS, align 4
  %183 = xor i32 %182, -1
  br label %184

184:                                              ; preds = %181, %180
  %185 = phi i32 [ -1, %180 ], [ %183, %181 ]
  store i32 %185, i32* %9, align 4
  %186 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @i2c_int_disable(%struct.axxia_i2c_dev* %186, i32 %187)
  %189 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %190 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %189, i32 0, i32 4
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = call i64 @i2c_m_rd(%struct.TYPE_2__* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %184
  %195 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %196 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %199 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %198, i32 0, i32 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp slt i64 %197, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %194
  %205 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %206 = call i32 @axxia_i2c_empty_rx_fifo(%struct.axxia_i2c_dev* %205)
  br label %207

207:                                              ; preds = %204, %194, %184
  %208 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %209 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %208, i32 0, i32 2
  %210 = call i32 @complete(i32* %209)
  br label %229

211:                                              ; preds = %168
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @MST_STATUS_TSS, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %211
  %217 = load i32, i32* @ETIMEDOUT, align 4
  %218 = sub nsw i32 0, %217
  %219 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %220 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 4
  %221 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %222 = load i32, i32* @MST_STATUS_TSS, align 4
  %223 = xor i32 %222, -1
  %224 = call i32 @i2c_int_disable(%struct.axxia_i2c_dev* %221, i32 %223)
  %225 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %226 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %225, i32 0, i32 2
  %227 = call i32 @complete(i32* %226)
  br label %228

228:                                              ; preds = %216, %211
  br label %229

229:                                              ; preds = %228, %207
  br label %230

230:                                              ; preds = %229, %160
  br label %231

231:                                              ; preds = %230, %117
  br label %232

232:                                              ; preds = %231, %44
  %233 = load i32, i32* @INT_MST, align 4
  %234 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %6, align 8
  %235 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @INTERRUPT_STATUS, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @writel(i32 %233, i64 %238)
  %240 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %232, %31
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @axxia_i2c_slv_isr(%struct.axxia_i2c_dev*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @i2c_m_rd(%struct.TYPE_2__*) #1

declare dso_local i32 @axxia_i2c_empty_rx_fifo(%struct.axxia_i2c_dev*) #1

declare dso_local i64 @axxia_i2c_fill_tx_fifo(%struct.axxia_i2c_dev*) #1

declare dso_local i32 @i2c_int_disable(%struct.axxia_i2c_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
