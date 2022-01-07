; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_vb2_ctx = type { i64, i32, i32, i32, i32 }
%struct.dmx_requestbuffers = type { i64, i32 }

@DVB_V2_MAX_SIZE = common dso_local global i64 0, align 8
@VB2_MEMORY_MMAP = common dso_local global i32 0, align 4
@DVB_VB2_STATE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[%s] count=%d size=%d errno=%d\0A\00", align 1
@DVB_VB2_STATE_REQBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"[%s] count=%d size=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_vb2_reqbufs(%struct.dvb_vb2_ctx* %0, %struct.dmx_requestbuffers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_vb2_ctx*, align 8
  %5 = alloca %struct.dmx_requestbuffers*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_vb2_ctx* %0, %struct.dvb_vb2_ctx** %4, align 8
  store %struct.dmx_requestbuffers* %1, %struct.dmx_requestbuffers** %5, align 8
  %7 = load %struct.dmx_requestbuffers*, %struct.dmx_requestbuffers** %5, align 8
  %8 = getelementptr inbounds %struct.dmx_requestbuffers, %struct.dmx_requestbuffers* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DVB_V2_MAX_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* @DVB_V2_MAX_SIZE, align 8
  %14 = load %struct.dmx_requestbuffers*, %struct.dmx_requestbuffers** %5, align 8
  %15 = getelementptr inbounds %struct.dmx_requestbuffers, %struct.dmx_requestbuffers* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.dmx_requestbuffers*, %struct.dmx_requestbuffers** %5, align 8
  %18 = getelementptr inbounds %struct.dmx_requestbuffers, %struct.dmx_requestbuffers* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.dmx_requestbuffers*, %struct.dmx_requestbuffers** %5, align 8
  %23 = getelementptr inbounds %struct.dmx_requestbuffers, %struct.dmx_requestbuffers* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %27, i32 0, i32 4
  %29 = load i32, i32* @VB2_MEMORY_MMAP, align 4
  %30 = load %struct.dmx_requestbuffers*, %struct.dmx_requestbuffers** %5, align 8
  %31 = getelementptr inbounds %struct.dmx_requestbuffers, %struct.dmx_requestbuffers* %30, i32 0, i32 1
  %32 = call i32 @vb2_core_reqbufs(i32* %28, i32 %29, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %16
  %36 = load i32, i32* @DVB_VB2_STATE_NONE, align 4
  %37 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i8*, i32, i32, i64, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i64 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %67

51:                                               ; preds = %16
  %52 = load i32, i32* @DVB_VB2_STATE_REQBUFS, align 4
  %53 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, i32, i32, i64, ...) @dprintk(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62, i64 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %51, %35
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @vb2_core_reqbufs(i32*, i32, i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
