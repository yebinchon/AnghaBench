; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_qbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_vb2_ctx = type { i32, i32 }
%struct.dmx_buffer = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"[%s] index=%d errno=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"[%s] index=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_vb2_qbuf(%struct.dvb_vb2_ctx* %0, %struct.dmx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_vb2_ctx*, align 8
  %5 = alloca %struct.dmx_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_vb2_ctx* %0, %struct.dvb_vb2_ctx** %4, align 8
  store %struct.dmx_buffer* %1, %struct.dmx_buffer** %5, align 8
  %7 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %7, i32 0, i32 1
  %9 = load %struct.dmx_buffer*, %struct.dmx_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.dmx_buffer, %struct.dmx_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dmx_buffer*, %struct.dmx_buffer** %5, align 8
  %13 = call i32 @vb2_core_qbuf(i32* %8, i32 %11, %struct.dmx_buffer* %12, i32* null)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dmx_buffer*, %struct.dmx_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.dmx_buffer, %struct.dmx_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dmx_buffer*, %struct.dmx_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.dmx_buffer, %struct.dmx_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @vb2_core_qbuf(i32*, i32, %struct.dmx_buffer*, i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
