; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_update_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_update_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.device_queue_manager = type { i64, i32, %struct.mqd_manager** }
%struct.mqd_manager = type { i32 (%struct.mqd_manager*, i32, i32, i32, i32, i32)*, i32 (%struct.mqd_manager*, i32, i32, i32, %struct.TYPE_5__*, i64)*, i32 (%struct.mqd_manager*, i32, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.queue = type { %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.kfd_process_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@KFD_SCHED_POLICY_NO_HWS = common dso_local global i64 0, align 8
@KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unmap queue failed\0A\00", align 1
@KFD_QUEUE_TYPE_COMPUTE = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA_XGMI = common dso_local global i64 0, align 8
@KFD_PREEMPT_TYPE_WAVEFRONT_DRAIN = common dso_local global i32 0, align 4
@KFD_UNMAP_LATENCY_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"destroy mqd failed\0A\00", align 1
@current = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"should only run in user thread\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.queue*)* @update_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_queue(%struct.device_queue_manager* %0, %struct.queue* %1) #0 {
  %3 = alloca %struct.device_queue_manager*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mqd_manager*, align 8
  %7 = alloca %struct.kfd_process_device*, align 8
  %8 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %3, align 8
  store %struct.queue* %1, %struct.queue** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %10 = call i32 @dqm_lock(%struct.device_queue_manager* %9)
  %11 = load %struct.queue*, %struct.queue** %4, align 8
  %12 = getelementptr inbounds %struct.queue, %struct.queue* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.queue*, %struct.queue** %4, align 8
  %15 = getelementptr inbounds %struct.queue, %struct.queue* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call %struct.kfd_process_device* @kfd_get_process_device_data(i32 %13, %struct.TYPE_6__* %16)
  store %struct.kfd_process_device* %17, %struct.kfd_process_device** %7, align 8
  %18 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %19 = icmp ne %struct.kfd_process_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %213

23:                                               ; preds = %2
  %24 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %25 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %24, i32 0, i32 2
  %26 = load %struct.mqd_manager**, %struct.mqd_manager*** %25, align 8
  %27 = load %struct.queue*, %struct.queue** %4, align 8
  %28 = getelementptr inbounds %struct.queue, %struct.queue* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @get_mqd_type_from_queue_type(i64 %30)
  %32 = getelementptr inbounds %struct.mqd_manager*, %struct.mqd_manager** %26, i64 %31
  %33 = load %struct.mqd_manager*, %struct.mqd_manager** %32, align 8
  store %struct.mqd_manager* %33, %struct.mqd_manager** %6, align 8
  %34 = load %struct.queue*, %struct.queue** %4, align 8
  %35 = getelementptr inbounds %struct.queue, %struct.queue* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %39 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KFD_SCHED_POLICY_NO_HWS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %23
  %44 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %45 = load i32, i32* @KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES, align 4
  %46 = call i32 @unmap_queues_cpsch(%struct.device_queue_manager* %44, i32 %45, i32 0)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %213

51:                                               ; preds = %43
  br label %99

52:                                               ; preds = %23
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %52
  %56 = load %struct.queue*, %struct.queue** %4, align 8
  %57 = getelementptr inbounds %struct.queue, %struct.queue* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @KFD_QUEUE_TYPE_COMPUTE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %76, label %62

62:                                               ; preds = %55
  %63 = load %struct.queue*, %struct.queue** %4, align 8
  %64 = getelementptr inbounds %struct.queue, %struct.queue* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.queue*, %struct.queue** %4, align 8
  %71 = getelementptr inbounds %struct.queue, %struct.queue* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %69, %62, %55
  %77 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %78 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %77, i32 0, i32 0
  %79 = load i32 (%struct.mqd_manager*, i32, i32, i32, i32, i32)*, i32 (%struct.mqd_manager*, i32, i32, i32, i32, i32)** %78, align 8
  %80 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %81 = load %struct.queue*, %struct.queue** %4, align 8
  %82 = getelementptr inbounds %struct.queue, %struct.queue* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @KFD_PREEMPT_TYPE_WAVEFRONT_DRAIN, align 4
  %85 = load i32, i32* @KFD_UNMAP_LATENCY_MS, align 4
  %86 = load %struct.queue*, %struct.queue** %4, align 8
  %87 = getelementptr inbounds %struct.queue, %struct.queue* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.queue*, %struct.queue** %4, align 8
  %90 = getelementptr inbounds %struct.queue, %struct.queue* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %79(%struct.mqd_manager* %80, i32 %83, i32 %84, i32 %85, i32 %88, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %76
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %213

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %97, %69, %52
  br label %99

99:                                               ; preds = %98, %51
  %100 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %101 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %100, i32 0, i32 2
  %102 = load i32 (%struct.mqd_manager*, i32, %struct.TYPE_5__*)*, i32 (%struct.mqd_manager*, i32, %struct.TYPE_5__*)** %101, align 8
  %103 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %104 = load %struct.queue*, %struct.queue** %4, align 8
  %105 = getelementptr inbounds %struct.queue, %struct.queue* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.queue*, %struct.queue** %4, align 8
  %108 = getelementptr inbounds %struct.queue, %struct.queue* %107, i32 0, i32 0
  %109 = call i32 %102(%struct.mqd_manager* %103, i32 %106, %struct.TYPE_5__* %108)
  %110 = load %struct.queue*, %struct.queue** %4, align 8
  %111 = getelementptr inbounds %struct.queue, %struct.queue* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %99
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %120 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %138

123:                                              ; preds = %115, %99
  %124 = load %struct.queue*, %struct.queue** %4, align 8
  %125 = getelementptr inbounds %struct.queue, %struct.queue* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %134 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %132, %129, %123
  br label %138

138:                                              ; preds = %137, %118
  %139 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %140 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @KFD_SCHED_POLICY_NO_HWS, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %146 = call i32 @map_queues_cpsch(%struct.device_queue_manager* %145)
  store i32 %146, i32* %5, align 4
  br label %212

147:                                              ; preds = %138
  %148 = load %struct.queue*, %struct.queue** %4, align 8
  %149 = getelementptr inbounds %struct.queue, %struct.queue* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %211

153:                                              ; preds = %147
  %154 = load %struct.queue*, %struct.queue** %4, align 8
  %155 = getelementptr inbounds %struct.queue, %struct.queue* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @KFD_QUEUE_TYPE_COMPUTE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %174, label %160

160:                                              ; preds = %153
  %161 = load %struct.queue*, %struct.queue** %4, align 8
  %162 = getelementptr inbounds %struct.queue, %struct.queue* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %174, label %167

167:                                              ; preds = %160
  %168 = load %struct.queue*, %struct.queue** %4, align 8
  %169 = getelementptr inbounds %struct.queue, %struct.queue* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %211

174:                                              ; preds = %167, %160, %153
  %175 = load %struct.queue*, %struct.queue** %4, align 8
  %176 = getelementptr inbounds %struct.queue, %struct.queue* %175, i32 0, i32 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  %184 = zext i1 %183 to i32
  %185 = call i64 @WARN(i32 %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %174
  %188 = load i32, i32* @EFAULT, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %210

190:                                              ; preds = %174
  %191 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %192 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %191, i32 0, i32 1
  %193 = load i32 (%struct.mqd_manager*, i32, i32, i32, %struct.TYPE_5__*, i64)*, i32 (%struct.mqd_manager*, i32, i32, i32, %struct.TYPE_5__*, i64)** %192, align 8
  %194 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %195 = load %struct.queue*, %struct.queue** %4, align 8
  %196 = getelementptr inbounds %struct.queue, %struct.queue* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.queue*, %struct.queue** %4, align 8
  %199 = getelementptr inbounds %struct.queue, %struct.queue* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.queue*, %struct.queue** %4, align 8
  %202 = getelementptr inbounds %struct.queue, %struct.queue* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.queue*, %struct.queue** %4, align 8
  %205 = getelementptr inbounds %struct.queue, %struct.queue* %204, i32 0, i32 0
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 %193(%struct.mqd_manager* %194, i32 %197, i32 %200, i32 %203, %struct.TYPE_5__* %205, i64 %208)
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %190, %187
  br label %211

211:                                              ; preds = %210, %167, %147
  br label %212

212:                                              ; preds = %211, %144
  br label %213

213:                                              ; preds = %212, %95, %49, %20
  %214 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %215 = call i32 @dqm_unlock(%struct.device_queue_manager* %214)
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @dqm_lock(%struct.device_queue_manager*) #1

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @get_mqd_type_from_queue_type(i64) #1

declare dso_local i32 @unmap_queues_cpsch(%struct.device_queue_manager*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @map_queues_cpsch(%struct.device_queue_manager*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @dqm_unlock(%struct.device_queue_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
