; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@OHCI1394_IntEventClear = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@OHCI1394_busReset = common dso_local global i32 0, align 4
@OHCI1394_postedWriteErr = common dso_local global i32 0, align 4
@OHCI1394_selfIDComplete = common dso_local global i32 0, align 4
@selfid_workqueue = common dso_local global i32 0, align 4
@OHCI1394_RQPkt = common dso_local global i32 0, align 4
@OHCI1394_RSPkt = common dso_local global i32 0, align 4
@OHCI1394_reqTxComplete = common dso_local global i32 0, align 4
@OHCI1394_respTxComplete = common dso_local global i32 0, align 4
@OHCI1394_isochRx = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntEventClear = common dso_local global i32 0, align 4
@OHCI1394_isochTx = common dso_local global i32 0, align 4
@OHCI1394_IsoXmitIntEventClear = common dso_local global i32 0, align 4
@OHCI1394_regAccessFail = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"register access failure\0A\00", align 1
@OHCI1394_PostedWriteAddressHi = common dso_local global i32 0, align 4
@OHCI1394_PostedWriteAddressLo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PCI posted write error\0A\00", align 1
@OHCI1394_cycleTooLong = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"isochronous cycle too long\0A\00", align 1
@OHCI1394_LinkControlSet = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_cycleMaster = common dso_local global i32 0, align 4
@OHCI1394_cycleInconsistent = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"isochronous cycle inconsistent\0A\00", align 1
@OHCI1394_unrecoverableError = common dso_local global i32 0, align 4
@OHCI1394_cycle64Seconds = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fw_ohci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.fw_ohci*
  store %struct.fw_ohci* %11, %struct.fw_ohci** %6, align 8
  %12 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %13 = load i32, i32* @OHCI1394_IntEventClear, align 4
  %14 = call i32 @reg_read(%struct.fw_ohci* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = xor i32 %18, -1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %245

23:                                               ; preds = %17
  %24 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %25 = load i32, i32* @OHCI1394_IntEventClear, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @OHCI1394_busReset, align 4
  %28 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = call i32 @reg_write(%struct.fw_ohci* %24, i32 %25, i32 %31)
  %33 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @log_irqs(%struct.fw_ohci* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @OHCI1394_selfIDComplete, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load i32, i32* @selfid_workqueue, align 4
  %42 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %43 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %42, i32 0, i32 7
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %23
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @OHCI1394_RQPkt, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %52 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call i32 @tasklet_schedule(i32* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @OHCI1394_RSPkt, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %62 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = call i32 @tasklet_schedule(i32* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @OHCI1394_reqTxComplete, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %72 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = call i32 @tasklet_schedule(i32* %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @OHCI1394_respTxComplete, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %82 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = call i32 @tasklet_schedule(i32* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @OHCI1394_isochRx, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %85
  %91 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %92 = load i32, i32* @OHCI1394_IsoRecvIntEventClear, align 4
  %93 = call i32 @reg_read(%struct.fw_ohci* %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %95 = load i32, i32* @OHCI1394_IsoRecvIntEventClear, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @reg_write(%struct.fw_ohci* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %101, %90
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ffs(i32 %102)
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  %105 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %106 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %105, i32 0, i32 2
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = call i32 @tasklet_schedule(i32* %112)
  %114 = load i32, i32* %9, align 4
  %115 = shl i32 1, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %98

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %85
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @OHCI1394_isochTx, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %120
  %126 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %127 = load i32, i32* @OHCI1394_IsoXmitIntEventClear, align 4
  %128 = call i32 @reg_read(%struct.fw_ohci* %126, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %130 = load i32, i32* @OHCI1394_IsoXmitIntEventClear, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @reg_write(%struct.fw_ohci* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %136, %125
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @ffs(i32 %137)
  %139 = sub nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  %140 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %141 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %140, i32 0, i32 1
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = call i32 @tasklet_schedule(i32* %147)
  %149 = load i32, i32* %9, align 4
  %150 = shl i32 1, %149
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %8, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %8, align 4
  br label %133

154:                                              ; preds = %133
  br label %155

155:                                              ; preds = %154, %120
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @OHCI1394_regAccessFail, align 4
  %158 = and i32 %156, %157
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %163 = call i32 @ohci_err(%struct.fw_ohci* %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %155
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %167 = and i32 %165, %166
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %164
  %171 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %172 = load i32, i32* @OHCI1394_PostedWriteAddressHi, align 4
  %173 = call i32 @reg_read(%struct.fw_ohci* %171, i32 %172)
  %174 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %175 = load i32, i32* @OHCI1394_PostedWriteAddressLo, align 4
  %176 = call i32 @reg_read(%struct.fw_ohci* %174, i32 %175)
  %177 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %178 = load i32, i32* @OHCI1394_IntEventClear, align 4
  %179 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %180 = call i32 @reg_write(%struct.fw_ohci* %177, i32 %178, i32 %179)
  %181 = call i64 (...) @printk_ratelimit()
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %170
  %184 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %185 = call i32 @ohci_err(%struct.fw_ohci* %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %170
  br label %187

187:                                              ; preds = %186, %164
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @OHCI1394_cycleTooLong, align 4
  %190 = and i32 %188, %189
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %187
  %194 = call i64 (...) @printk_ratelimit()
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %198 = call i32 @ohci_notice(%struct.fw_ohci* %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %193
  %200 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %201 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %202 = load i32, i32* @OHCI1394_LinkControl_cycleMaster, align 4
  %203 = call i32 @reg_write(%struct.fw_ohci* %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %199, %187
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %207 = and i32 %205, %206
  %208 = call i64 @unlikely(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %204
  %211 = call i64 (...) @printk_ratelimit()
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %215 = call i32 @ohci_notice(%struct.fw_ohci* %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %210
  br label %217

217:                                              ; preds = %216, %204
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @OHCI1394_unrecoverableError, align 4
  %220 = and i32 %218, %219
  %221 = call i64 @unlikely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  %224 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %225 = call i32 @handle_dead_contexts(%struct.fw_ohci* %224)
  br label %226

226:                                              ; preds = %223, %217
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @OHCI1394_cycle64Seconds, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %226
  %232 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %233 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %232, i32 0, i32 0
  %234 = call i32 @spin_lock(i32* %233)
  %235 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %236 = call i32 @update_bus_time(%struct.fw_ohci* %235)
  %237 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %238 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %237, i32 0, i32 0
  %239 = call i32 @spin_unlock(i32* %238)
  br label %243

240:                                              ; preds = %226
  %241 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %242 = call i32 @flush_writes(%struct.fw_ohci* %241)
  br label %243

243:                                              ; preds = %240, %231
  %244 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %243, %21
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @log_irqs(%struct.fw_ohci*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ohci_err(%struct.fw_ohci*, i8*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @ohci_notice(%struct.fw_ohci*, i8*) #1

declare dso_local i32 @handle_dead_contexts(%struct.fw_ohci*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_bus_time(%struct.fw_ohci*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @flush_writes(%struct.fw_ohci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
