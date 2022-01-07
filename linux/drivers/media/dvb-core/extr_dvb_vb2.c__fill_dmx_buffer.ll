; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__fill_dmx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__fill_dmx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dvb_vb2_ctx = type { i32 }
%struct.dmx_buffer = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*, i8*)* @_fill_dmx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_fill_dmx_buffer(%struct.vb2_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dvb_vb2_ctx*, align 8
  %6 = alloca %struct.dmx_buffer*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.dvb_vb2_ctx* @vb2_get_drv_priv(i32 %9)
  store %struct.dvb_vb2_ctx* %10, %struct.dvb_vb2_ctx** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.dmx_buffer*
  store %struct.dmx_buffer* %12, %struct.dmx_buffer** %6, align 8
  %13 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dmx_buffer*, %struct.dmx_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.dmx_buffer, %struct.dmx_buffer* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dmx_buffer*, %struct.dmx_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.dmx_buffer, %struct.dmx_buffer* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dmx_buffer*, %struct.dmx_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.dmx_buffer, %struct.dmx_buffer* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %35 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dmx_buffer*, %struct.dmx_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.dmx_buffer, %struct.dmx_buffer* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %45)
  ret void
}

declare dso_local %struct.dvb_vb2_ctx* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
