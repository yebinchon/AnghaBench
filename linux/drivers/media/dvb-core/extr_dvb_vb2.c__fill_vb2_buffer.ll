; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__fill_vb2_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__fill_vb2_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_plane = type { i64 }
%struct.dvb_vb2_ctx = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*, %struct.vb2_plane*)* @_fill_vb2_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fill_vb2_buffer(%struct.vb2_buffer* %0, %struct.vb2_plane* %1) #0 {
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_plane*, align 8
  %5 = alloca %struct.dvb_vb2_ctx*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  store %struct.vb2_plane* %1, %struct.vb2_plane** %4, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.dvb_vb2_ctx* @vb2_get_drv_priv(i32 %8)
  store %struct.dvb_vb2_ctx* %9, %struct.dvb_vb2_ctx** %5, align 8
  %10 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %11 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %10, i64 0
  %12 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15)
  ret i32 0
}

declare dso_local %struct.dvb_vb2_ctx* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
