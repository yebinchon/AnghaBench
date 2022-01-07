; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_thread_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.cec_pin* }
%struct.cec_pin = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__*, i32, i32, i32*, i32, %struct.cec_msg, i32 }
%struct.TYPE_2__ = type { i32 (%struct.cec_adapter*)*, i32 (%struct.cec_adapter*)* }
%struct.cec_msg = type { i32, i32*, i32 }

@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@CEC_PIN_EVENT_FL_IS_HIGH = common dso_local global i32 0, align 4
@CEC_PIN_EVENT_FL_DROPPED = common dso_local global i32 0, align 4
@CEC_NUM_PIN_EVENTS = common dso_local global i32 0, align 4
@CEC_PIN_IRQ_UNCHANGED = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cec_pin_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_pin_thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca %struct.cec_pin*, align 8
  %5 = alloca %struct.cec_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.cec_adapter*
  store %struct.cec_adapter* %10, %struct.cec_adapter** %3, align 8
  %11 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %11, i32 0, i32 0
  %13 = load %struct.cec_pin*, %struct.cec_pin** %12, align 8
  store %struct.cec_pin* %13, %struct.cec_pin** %4, align 8
  br label %14

14:                                               ; preds = %223, %1
  %15 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %16 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 8
  %18 = call i64 (...) @kthread_should_stop()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %14
  %21 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %22 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %20
  %27 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %28 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %33 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %32, i32 0, i32 6
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %38 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %37, i32 0, i32 7
  %39 = call i64 @atomic_read(i32* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %31, %26, %20, %14
  %42 = phi i1 [ true, %31 ], [ true, %26 ], [ true, %20 ], [ true, %14 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @wait_event_interruptible(i32 %17, i32 %43)
  %45 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %46 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %112

50:                                               ; preds = %41
  %51 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %52 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %51, i32 0, i32 10
  store %struct.cec_msg* %52, %struct.cec_msg** %5, align 8
  %53 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %54 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %77

57:                                               ; preds = %50
  %58 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %59 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %65 = call i64 @rx_add_byte(%struct.cec_pin* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %69 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %72 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 85, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %63, %57, %50
  %78 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %79 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 2
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %84 = call i64 @rx_remove_byte(%struct.cec_pin* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %88 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %86, %82, %77
  %92 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %93 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %99 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %100 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %103 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %104 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %105 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %104, i32 0, i32 10
  %106 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ns_to_ktime(i32 %107)
  %109 = call i32 @cec_received_msg_ts(%struct.cec_adapter* %102, %struct.cec_msg* %103, i32 %108)
  %110 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %111 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %101, %41
  %113 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %114 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %119 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %6, align 4
  %121 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %122 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %126 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @cec_transmit_attempt_done_ts(%struct.cec_adapter* %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %117, %112
  br label %130

130:                                              ; preds = %135, %129
  %131 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %132 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %131, i32 0, i32 7
  %133 = call i64 @atomic_read(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %170

135:                                              ; preds = %130
  %136 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %137 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %7, align 4
  %139 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %140 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %8, align 4
  %146 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @CEC_PIN_EVENT_FL_IS_HIGH, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @CEC_PIN_EVENT_FL_DROPPED, align 4
  %152 = and i32 %150, %151
  %153 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %154 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %153, i32 0, i32 8
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @cec_queue_pin_cec_event(%struct.cec_adapter* %146, i32 %149, i32 %152, i32 %159)
  %161 = load i32, i32* %7, align 4
  %162 = add i32 %161, 1
  %163 = load i32, i32* @CEC_NUM_PIN_EVENTS, align 4
  %164 = urem i32 %162, %163
  %165 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %166 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %168 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %167, i32 0, i32 7
  %169 = call i32 @atomic_dec(i32* %168)
  br label %130

170:                                              ; preds = %130
  %171 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %172 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %171, i32 0, i32 6
  %173 = load i32, i32* @CEC_PIN_IRQ_UNCHANGED, align 4
  %174 = call i32 @atomic_xchg(i32* %172, i32 %173)
  switch i32 %174, label %218 [
    i32 129, label %175
    i32 128, label %192
  ]

175:                                              ; preds = %170
  %176 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %177 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %176, i32 0, i32 5
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32 (%struct.cec_adapter*)*, i32 (%struct.cec_adapter*)** %179, align 8
  %181 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %182 = call i32 %180(%struct.cec_adapter* %181)
  %183 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %184 = call i32 @cec_pin_high(%struct.cec_pin* %183)
  %185 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %186 = call i32 @cec_pin_to_idle(%struct.cec_pin* %185)
  %187 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %188 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %187, i32 0, i32 4
  %189 = call i32 @ns_to_ktime(i32 0)
  %190 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %191 = call i32 @hrtimer_start(i32* %188, i32 %189, i32 %190)
  br label %219

192:                                              ; preds = %170
  %193 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %194 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %193, i32 0, i32 5
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32 (%struct.cec_adapter*)*, i32 (%struct.cec_adapter*)** %196, align 8
  %198 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %199 = call i32 %197(%struct.cec_adapter* %198)
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %204 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %206 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %192
  %210 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %211 = call i32 @cec_pin_to_idle(%struct.cec_pin* %210)
  %212 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %213 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %212, i32 0, i32 4
  %214 = call i32 @ns_to_ktime(i32 0)
  %215 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %216 = call i32 @hrtimer_start(i32* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %209, %192
  br label %219

218:                                              ; preds = %170
  br label %219

219:                                              ; preds = %218, %217, %175
  %220 = call i64 (...) @kthread_should_stop()
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %224

223:                                              ; preds = %219
  br label %14

224:                                              ; preds = %222
  ret i32 0
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @rx_add_byte(%struct.cec_pin*) #1

declare dso_local i64 @rx_remove_byte(%struct.cec_pin*) #1

declare dso_local i32 @cec_received_msg_ts(%struct.cec_adapter*, %struct.cec_msg*, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @cec_transmit_attempt_done_ts(%struct.cec_adapter*, i32, i32) #1

declare dso_local i32 @cec_queue_pin_cec_event(%struct.cec_adapter*, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @cec_pin_high(%struct.cec_pin*) #1

declare dso_local i32 @cec_pin_to_idle(%struct.cec_pin*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
