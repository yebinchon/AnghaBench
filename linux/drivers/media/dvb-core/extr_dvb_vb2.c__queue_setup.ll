; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.dvb_vb2_ctx = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"[%s] count=%d, size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.dvb_vb2_ctx*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %13 = call %struct.dvb_vb2_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %12)
  store %struct.dvb_vb2_ctx* %13, %struct.dvb_vb2_ctx** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %11, align 8
  %17 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %8, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %11, align 8
  %20 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %11, align 8
  %25 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28, i32 %31)
  ret i32 0
}

declare dso_local %struct.dvb_vb2_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
