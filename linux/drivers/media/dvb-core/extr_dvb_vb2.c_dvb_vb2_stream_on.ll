; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_stream_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_stream_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_vb2_ctx = type { i32, i32, %struct.vb2_queue }
%struct.vb2_queue = type { i32 }

@DVB_VB2_STATE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"[%s] errno=%d\0A\00", align 1
@DVB_VB2_STATE_STREAMON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_vb2_stream_on(%struct.dvb_vb2_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_vb2_ctx*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_vb2_ctx* %0, %struct.dvb_vb2_ctx** %3, align 8
  %6 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %6, i32 0, i32 2
  store %struct.vb2_queue* %7, %struct.vb2_queue** %4, align 8
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vb2_core_streamon(%struct.vb2_queue* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @DVB_VB2_STATE_NONE, align 4
  %17 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* @DVB_VB2_STATE_STREAMON, align 4
  %27 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, i32, ...) @dprintk(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %25, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @vb2_core_streamon(%struct.vb2_queue*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
