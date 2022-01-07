; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_channel_hw.c_channel_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_channel_hw.c_channel_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { i32, i64, i32, i64, i32, i32, i32, %struct.host1x_channel* }
%struct.host1x_channel = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.host1x_syncpt = type { i64 }
%struct.host1x_waitlist = type { i32 }
%struct.host1x = type { %struct.host1x_syncpt* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HOST1X_CLASS_HOST1X = common dso_local global i64 0, align 8
@HOST1X_OPCODE_NOP = common dso_local global i32 0, align 4
@HOST1X_INTR_ACTION_SUBMIT_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to set submit complete interrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_job*)* @channel_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_submit(%struct.host1x_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_job*, align 8
  %4 = alloca %struct.host1x_channel*, align 8
  %5 = alloca %struct.host1x_syncpt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.host1x_waitlist*, align 8
  %11 = alloca %struct.host1x*, align 8
  store %struct.host1x_job* %0, %struct.host1x_job** %3, align 8
  %12 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %13 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %12, i32 0, i32 7
  %14 = load %struct.host1x_channel*, %struct.host1x_channel** %13, align 8
  store %struct.host1x_channel* %14, %struct.host1x_channel** %4, align 8
  %15 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %16 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.host1x_waitlist* null, %struct.host1x_waitlist** %10, align 8
  %18 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %19 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.host1x* @dev_get_drvdata(i32 %22)
  store %struct.host1x* %23, %struct.host1x** %11, align 8
  %24 = load %struct.host1x*, %struct.host1x** %11, align 8
  %25 = getelementptr inbounds %struct.host1x, %struct.host1x* %24, i32 0, i32 0
  %26 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %25, align 8
  %27 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %28 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %26, i64 %30
  store %struct.host1x_syncpt* %31, %struct.host1x_syncpt** %5, align 8
  %32 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %33 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @dev_name(%struct.TYPE_2__* %34)
  %36 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %37 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %40 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %43 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %46 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @trace_host1x_channel_submit(i32 %35, i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %50 = call i32 @host1x_syncpt_read_max(%struct.host1x_syncpt* %49)
  %51 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %52 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  store i32 %50, i32* %7, align 4
  %53 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %54 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock_interruptible(i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %1
  br label %159

59:                                               ; preds = %1
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.host1x_waitlist* @kzalloc(i32 4, i32 %60)
  store %struct.host1x_waitlist* %61, %struct.host1x_waitlist** %10, align 8
  %62 = load %struct.host1x_waitlist*, %struct.host1x_waitlist** %10, align 8
  %63 = icmp ne %struct.host1x_waitlist* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %66 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %159

70:                                               ; preds = %59
  %71 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %72 = call i32 @host1x_channel_set_streamid(%struct.host1x_channel* %71)
  %73 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %74 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %73, i32 0, i32 2
  %75 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %76 = call i32 @host1x_cdma_begin(i32* %74, %struct.host1x_job* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %81 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %159

83:                                               ; preds = %70
  %84 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %85 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %90 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %89, i32 0, i32 2
  %91 = load i64, i64* @HOST1X_CLASS_HOST1X, align 8
  %92 = call i32 (...) @host1x_uclass_wait_syncpt_r()
  %93 = call i32 @host1x_opcode_setclass(i64 %91, i32 %92, i32 1)
  %94 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %95 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %98 = call i32 @host1x_syncpt_read_max(%struct.host1x_syncpt* %97)
  %99 = call i32 @host1x_class_host_wait_syncpt(i32 %96, i32 %98)
  %100 = call i32 @host1x_cdma_push(i32* %90, i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %88, %83
  %102 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %103 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %108 = call i32 @synchronize_syncpt_base(%struct.host1x_job* %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @host1x_syncpt_incr_max(%struct.host1x_syncpt* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.host1x*, %struct.host1x** %11, align 8
  %114 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %115 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %116 = call i32 @host1x_hw_syncpt_assign_to_channel(%struct.host1x* %113, %struct.host1x_syncpt* %114, %struct.host1x_channel* %115)
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %119 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %121 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %109
  %125 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %126 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %125, i32 0, i32 2
  %127 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %128 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @host1x_opcode_setclass(i64 %129, i32 0, i32 0)
  %131 = load i32, i32* @HOST1X_OPCODE_NOP, align 4
  %132 = call i32 @host1x_cdma_push(i32* %126, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %124, %109
  %134 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %135 = call i32 @submit_gathers(%struct.host1x_job* %134)
  %136 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %137 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %136, i32 0, i32 2
  %138 = load %struct.host1x_job*, %struct.host1x_job** %3, align 8
  %139 = call i32 @host1x_cdma_end(i32* %137, %struct.host1x_job* %138)
  %140 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %141 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = call i32 @dev_name(%struct.TYPE_2__* %142)
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @trace_host1x_channel_submitted(i32 %143, i32 %144, i32 %145)
  %147 = load %struct.host1x*, %struct.host1x** %11, align 8
  %148 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %5, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @HOST1X_INTR_ACTION_SUBMIT_COMPLETE, align 4
  %151 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %152 = load %struct.host1x_waitlist*, %struct.host1x_waitlist** %10, align 8
  %153 = call i32 @host1x_intr_add_action(%struct.host1x* %147, %struct.host1x_syncpt* %148, i32 %149, i32 %150, %struct.host1x_channel* %151, %struct.host1x_waitlist* %152, i32* null)
  store i32 %153, i32* %9, align 4
  store %struct.host1x_waitlist* null, %struct.host1x_waitlist** %10, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @WARN(i32 %154, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %156 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %157 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %156, i32 0, i32 0
  %158 = call i32 @mutex_unlock(i32* %157)
  store i32 0, i32* %2, align 4
  br label %163

159:                                              ; preds = %79, %64, %58
  %160 = load %struct.host1x_waitlist*, %struct.host1x_waitlist** %10, align 8
  %161 = call i32 @kfree(%struct.host1x_waitlist* %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %133
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.host1x* @dev_get_drvdata(i32) #1

declare dso_local i32 @trace_host1x_channel_submit(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_2__*) #1

declare dso_local i32 @host1x_syncpt_read_max(%struct.host1x_syncpt*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.host1x_waitlist* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @host1x_channel_set_streamid(%struct.host1x_channel*) #1

declare dso_local i32 @host1x_cdma_begin(i32*, %struct.host1x_job*) #1

declare dso_local i32 @host1x_cdma_push(i32*, i32, i32) #1

declare dso_local i32 @host1x_opcode_setclass(i64, i32, i32) #1

declare dso_local i32 @host1x_uclass_wait_syncpt_r(...) #1

declare dso_local i32 @host1x_class_host_wait_syncpt(i32, i32) #1

declare dso_local i32 @synchronize_syncpt_base(%struct.host1x_job*) #1

declare dso_local i32 @host1x_syncpt_incr_max(%struct.host1x_syncpt*, i32) #1

declare dso_local i32 @host1x_hw_syncpt_assign_to_channel(%struct.host1x*, %struct.host1x_syncpt*, %struct.host1x_channel*) #1

declare dso_local i32 @submit_gathers(%struct.host1x_job*) #1

declare dso_local i32 @host1x_cdma_end(i32*, %struct.host1x_job*) #1

declare dso_local i32 @trace_host1x_channel_submitted(i32, i32, i32) #1

declare dso_local i32 @host1x_intr_add_action(%struct.host1x*, %struct.host1x_syncpt*, i32, i32, %struct.host1x_channel*, %struct.host1x_waitlist*, i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @kfree(%struct.host1x_waitlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
