; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c__buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.dvb_vb2_ctx = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"[%s] data will not fit into plane (%lu < %lu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.dvb_vb2_ctx*, align 8
  %5 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.dvb_vb2_ctx* @vb2_get_drv_priv(i32 %8)
  store %struct.dvb_vb2_ctx* %9, %struct.dvb_vb2_ctx** %4, align 8
  %10 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %14 = call i64 @vb2_plane_size(%struct.vb2_buffer* %13, i32 0)
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %22 = call i64 @vb2_plane_size(%struct.vb2_buffer* %21, i32 0)
  %23 = load i64, i64* %5, align 8
  %24 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %22, i64 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %28, i32 0, i64 %29)
  %31 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, i32, ...) @dprintk(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %27, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.dvb_vb2_ctx* @vb2_get_drv_priv(i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
