; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32, i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SCB_INT_STATUS_REG = common dso_local global i32 0, align 4
@SCB_INT_CLEAR_REG = common dso_local global i32 0, align 4
@SCB_STATUS_REG = common dso_local global i32 0, align 4
@LINESTAT_LATCHED = common dso_local global i32 0, align 4
@SCB_CLEAR_REG = common dso_local global i32 0, align 4
@LINESTAT_CLEAR_SHIFT = common dso_local global i32 0, align 4
@LINESTAT_INPUT_DATA = common dso_local global i32 0, align 4
@INT_SCLK_LOW_TIMEOUT = common dso_local global i32 0, align 4
@INT_SLAVE_EVENT = common dso_local global i32 0, align 4
@INT_FIFO_EMPTY = common dso_local global i32 0, align 4
@INT_FIFO_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fatal: clock low timeout occurred %s addr 0x%02x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@EIO = common dso_local global i32 0, align 4
@MODE_ATOMIC = common dso_local global i64 0, align 8
@MODE_AUTOMATIC = common dso_local global i64 0, align 8
@MODE_SEQUENCE = common dso_local global i64 0, align 8
@MODE_WAITSTOP = common dso_local global i64 0, align 8
@LINESTAT_STOP_BIT_DET = common dso_local global i32 0, align 4
@MODE_RAW = common dso_local global i64 0, align 8
@INT_LEVEL = common dso_local global i32 0, align 4
@ISR_WAITSTOP = common dso_local global i32 0, align 4
@ISR_COMPLETE_M = common dso_local global i32 0, align 4
@ISR_STATUS_M = common dso_local global i32 0, align 4
@ISR_FATAL_M = common dso_local global i32 0, align 4
@MODE_FATAL = common dso_local global i64 0, align 8
@SCB_INT_MASK_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @img_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.img_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.img_i2c*
  store %struct.img_i2c* %11, %struct.img_i2c** %5, align 8
  %12 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %13 = load i32, i32* @SCB_INT_STATUS_REG, align 4
  %14 = call i32 @img_i2c_readl(%struct.img_i2c* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %16 = load i32, i32* @SCB_INT_CLEAR_REG, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @img_i2c_writel(%struct.img_i2c* %15, i32 %16, i32 %17)
  %19 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %20 = load i32, i32* @SCB_STATUS_REG, align 4
  %21 = call i32 @img_i2c_readl(%struct.img_i2c* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @LINESTAT_LATCHED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %28 = load i32, i32* @SCB_CLEAR_REG, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LINESTAT_LATCHED, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @LINESTAT_CLEAR_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = call i32 @img_i2c_writel(%struct.img_i2c* %27, i32 %28, i32 %33)
  %35 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %36 = call i32 @img_i2c_wr_rd_fence(%struct.img_i2c* %35)
  br label %37

37:                                               ; preds = %26, %2
  %38 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %39 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %38, i32 0, i32 3
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load i32, i32* @LINESTAT_INPUT_DATA, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %44 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %49 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @INT_SCLK_LOW_TIMEOUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %37
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @INT_SLAVE_EVENT, align 4
  %59 = load i32, i32* @INT_FIFO_EMPTY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @INT_FIFO_FULL, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %56
  %66 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %67 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %72 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I2C_M_RD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %80 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %81 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_crit(i32 %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %83)
  %85 = load i32, i32* @EIO, align 4
  %86 = call i32 @ISR_FATAL(i32 %85)
  store i32 %86, i32* %8, align 4
  br label %160

87:                                               ; preds = %56, %37
  %88 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %89 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MODE_ATOMIC, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @img_i2c_atomic(%struct.img_i2c* %94, i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  br label %153

98:                                               ; preds = %87
  %99 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %100 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MODE_AUTOMATIC, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @img_i2c_auto(%struct.img_i2c* %105, i32 %106, i32 %107)
  store i32 %108, i32* %8, align 4
  br label %152

109:                                              ; preds = %98
  %110 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %111 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MODE_SEQUENCE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @img_i2c_sequence(%struct.img_i2c* %116, i32 %117)
  store i32 %118, i32* %8, align 4
  br label %151

119:                                              ; preds = %109
  %120 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %121 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MODE_WAITSTOP, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @INT_SLAVE_EVENT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @LINESTAT_STOP_BIT_DET, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 @ISR_COMPLETE(i32 0)
  store i32 %136, i32* %8, align 4
  br label %150

137:                                              ; preds = %130, %125, %119
  %138 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %139 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @MODE_RAW, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @img_i2c_raw(%struct.img_i2c* %144, i32 %145, i32 %146)
  store i32 %147, i32* %8, align 4
  br label %149

148:                                              ; preds = %137
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %148, %143
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150, %115
  br label %152

152:                                              ; preds = %151, %104
  br label %153

153:                                              ; preds = %152, %93
  %154 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %155 = load i32, i32* @SCB_INT_CLEAR_REG, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @INT_LEVEL, align 4
  %158 = and i32 %156, %157
  %159 = call i32 @img_i2c_writel(%struct.img_i2c* %154, i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %153, %65
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @ISR_WAITSTOP, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %160
  %166 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %167 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %172 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @LINESTAT_STOP_BIT_DET, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170, %165
  %178 = call i32 @ISR_COMPLETE(i32 0)
  store i32 %178, i32* %8, align 4
  br label %183

179:                                              ; preds = %170
  %180 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %181 = load i64, i64* @MODE_WAITSTOP, align 8
  %182 = call i32 @img_i2c_switch_mode(%struct.img_i2c* %180, i64 %181)
  br label %183

183:                                              ; preds = %179, %177
  br label %184

184:                                              ; preds = %183, %160
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @ISR_COMPLETE_M, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %184
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @ISR_STATUS_M, align 4
  %192 = and i32 %190, %191
  %193 = sub i32 0, %192
  store i32 %193, i32* %9, align 4
  %194 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @img_i2c_complete_transaction(%struct.img_i2c* %194, i32 %195)
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @ISR_FATAL_M, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %189
  %202 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %203 = load i64, i64* @MODE_FATAL, align 8
  %204 = call i32 @img_i2c_switch_mode(%struct.img_i2c* %202, i64 %203)
  br label %205

205:                                              ; preds = %201, %189
  br label %206

206:                                              ; preds = %205, %184
  %207 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %208 = load i32, i32* @SCB_INT_MASK_REG, align 4
  %209 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %210 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @img_i2c_writel(%struct.img_i2c* %207, i32 %208, i32 %211)
  %213 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %214 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %213, i32 0, i32 3
  %215 = call i32 @spin_unlock(i32* %214)
  %216 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %216
}

declare dso_local i32 @img_i2c_readl(%struct.img_i2c*, i32) #1

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

declare dso_local i32 @img_i2c_wr_rd_fence(%struct.img_i2c*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_crit(i32, i8*, i8*, i32) #1

declare dso_local i32 @ISR_FATAL(i32) #1

declare dso_local i32 @img_i2c_atomic(%struct.img_i2c*, i32, i32) #1

declare dso_local i32 @img_i2c_auto(%struct.img_i2c*, i32, i32) #1

declare dso_local i32 @img_i2c_sequence(%struct.img_i2c*, i32) #1

declare dso_local i32 @ISR_COMPLETE(i32) #1

declare dso_local i32 @img_i2c_raw(%struct.img_i2c*, i32, i32) #1

declare dso_local i32 @img_i2c_switch_mode(%struct.img_i2c*, i64) #1

declare dso_local i32 @img_i2c_complete_transaction(%struct.img_i2c*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
