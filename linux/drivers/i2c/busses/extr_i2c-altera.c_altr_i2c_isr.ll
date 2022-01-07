; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-altera.c_altr_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-altera.c_altr_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altr_i2c_dev = type { i32, i64, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"unexpected interrupt\0A\00", align 1
@ALTR_I2C_ALL_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ALTR_I2C_ISR_ARB = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ALTR_I2C_ISR_NACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Could not get ACK\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ALTR_I2C_ISR_RXOF = common dso_local global i32 0, align 4
@ALTR_I2C_ISR_RXRDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"RX FIFO Overflow\0A\00", align 1
@ALTR_I2C_ISR_TXRDY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unexpected interrupt: 0x%x\0A\00", align 1
@ALTR_I2C_STATUS = common dso_local global i64 0, align 8
@ALTR_I2C_STAT_CORE = common dso_local global i32 0, align 4
@ALTR_I2C_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"message timeout\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Message Complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @altr_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altr_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.altr_i2c_dev*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.altr_i2c_dev*
  store %struct.altr_i2c_dev* %12, %struct.altr_i2c_dev** %9, align 8
  %13 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %14 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %17 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %16, i32 0, i32 6
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %22 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_warn(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %26 = load i32, i32* @ALTR_I2C_ALL_IRQ, align 4
  %27 = call i32 @altr_i2c_int_clear(%struct.altr_i2c_dev* %25, i32 %26)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %188

29:                                               ; preds = %2
  %30 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %31 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %30, i32 0, i32 6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I2C_M_RD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ALTR_I2C_ISR_ARB, align 4
  %41 = and i32 %39, %40
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %46 = load i32, i32* @ALTR_I2C_ISR_ARB, align 4
  %47 = call i32 @altr_i2c_int_clear(%struct.altr_i2c_dev* %45, i32 %46)
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %51 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  store i32 1, i32* %8, align 4
  br label %147

52:                                               ; preds = %29
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @ALTR_I2C_ISR_NACK, align 4
  %55 = and i32 %53, %54
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %60 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  %65 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %66 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %68 = load i32, i32* @ALTR_I2C_ISR_NACK, align 4
  %69 = call i32 @altr_i2c_int_clear(%struct.altr_i2c_dev* %67, i32 %68)
  %70 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %71 = call i32 @altr_i2c_stop(%struct.altr_i2c_dev* %70)
  store i32 1, i32* %8, align 4
  br label %146

72:                                               ; preds = %52
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @ALTR_I2C_ISR_RXOF, align 4
  %78 = and i32 %76, %77
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %83 = call i32 @altr_i2c_empty_rx_fifo(%struct.altr_i2c_dev* %82)
  %84 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %85 = load i32, i32* @ALTR_I2C_ISR_RXRDY, align 4
  %86 = call i32 @altr_i2c_int_clear(%struct.altr_i2c_dev* %84, i32 %85)
  %87 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %88 = call i32 @altr_i2c_stop(%struct.altr_i2c_dev* %87)
  %89 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %90 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %145

93:                                               ; preds = %75, %72
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @ALTR_I2C_ISR_RXRDY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %103 = call i32 @altr_i2c_empty_rx_fifo(%struct.altr_i2c_dev* %102)
  %104 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %105 = load i32, i32* @ALTR_I2C_ISR_RXRDY, align 4
  %106 = call i32 @altr_i2c_int_clear(%struct.altr_i2c_dev* %104, i32 %105)
  %107 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %108 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %101
  store i32 1, i32* %8, align 4
  br label %112

112:                                              ; preds = %111, %101
  br label %144

113:                                              ; preds = %96, %93
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @ALTR_I2C_ISR_TXRDY, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %123 = load i32, i32* @ALTR_I2C_ISR_TXRDY, align 4
  %124 = call i32 @altr_i2c_int_clear(%struct.altr_i2c_dev* %122, i32 %123)
  %125 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %126 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %131 = call i32 @altr_i2c_fill_tx_fifo(%struct.altr_i2c_dev* %130)
  br label %133

132:                                              ; preds = %121
  store i32 1, i32* %8, align 4
  br label %133

133:                                              ; preds = %132, %129
  br label %143

134:                                              ; preds = %116, %113
  %135 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %136 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 (i32, i8*, ...) @dev_warn(i32 %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %141 = load i32, i32* @ALTR_I2C_ALL_IRQ, align 4
  %142 = call i32 @altr_i2c_int_clear(%struct.altr_i2c_dev* %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %133
  br label %144

144:                                              ; preds = %143, %112
  br label %145

145:                                              ; preds = %144, %81
  br label %146

146:                                              ; preds = %145, %58
  br label %147

147:                                              ; preds = %146, %44
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %186

150:                                              ; preds = %147
  %151 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %152 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @ALTR_I2C_STATUS, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @ALTR_I2C_STAT_CORE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* @ALTR_I2C_TIMEOUT, align 4
  %164 = call i32 @readl_poll_timeout_atomic(i64 %155, i32 %156, i32 %162, i32 1, i32 %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %150
  %168 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %169 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %172

172:                                              ; preds = %167, %150
  %173 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %174 = load i32, i32* @ALTR_I2C_ALL_IRQ, align 4
  %175 = call i32 @altr_i2c_int_enable(%struct.altr_i2c_dev* %173, i32 %174, i32 0)
  %176 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %177 = load i32, i32* @ALTR_I2C_ALL_IRQ, align 4
  %178 = call i32 @altr_i2c_int_clear(%struct.altr_i2c_dev* %176, i32 %177)
  %179 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %180 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %179, i32 0, i32 3
  %181 = call i32 @complete(i32* %180)
  %182 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %9, align 8
  %183 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @dev_dbg(i32 %184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %186

186:                                              ; preds = %172, %147
  %187 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %20
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @altr_i2c_int_clear(%struct.altr_i2c_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @altr_i2c_stop(%struct.altr_i2c_dev*) #1

declare dso_local i32 @altr_i2c_empty_rx_fifo(%struct.altr_i2c_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @altr_i2c_fill_tx_fifo(%struct.altr_i2c_dev*) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @altr_i2c_int_enable(%struct.altr_i2c_dev*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
