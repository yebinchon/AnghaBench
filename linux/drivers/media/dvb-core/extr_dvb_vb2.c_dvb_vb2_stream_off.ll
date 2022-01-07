; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_stream_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_stream_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_vb2_ctx = type { i32, i32, i32 }
%struct.vb2_queue = type { i32 }

@DVB_VB2_STATE_STREAMON = common dso_local global i32 0, align 4
@DVB_VB2_STATE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"[%s] errno=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_vb2_stream_off(%struct.dvb_vb2_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_vb2_ctx*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_vb2_ctx* %0, %struct.dvb_vb2_ctx** %3, align 8
  %6 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %6, i32 0, i32 2
  %8 = bitcast i32* %7 to %struct.vb2_queue*
  store %struct.vb2_queue* %8, %struct.vb2_queue** %4, align 8
  %9 = load i32, i32* @DVB_VB2_STATE_STREAMON, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %17 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vb2_core_streamoff(%struct.vb2_queue* %15, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @DVB_VB2_STATE_NONE, align 4
  %24 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @dprintk(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %22
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @vb2_core_streamoff(%struct.vb2_queue*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
