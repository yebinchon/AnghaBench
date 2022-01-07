; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_init_tio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_init_tio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_rq_target_io = type { i32, i64, i64, %struct.request*, i32*, i32*, %struct.mapped_device* }
%struct.request = type { i32 }
%struct.mapped_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_rq_target_io*, %struct.request*, %struct.mapped_device*)* @init_tio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tio(%struct.dm_rq_target_io* %0, %struct.request* %1, %struct.mapped_device* %2) #0 {
  %4 = alloca %struct.dm_rq_target_io*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.mapped_device*, align 8
  store %struct.dm_rq_target_io* %0, %struct.dm_rq_target_io** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.mapped_device* %2, %struct.mapped_device** %6, align 8
  %7 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %8 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %9 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %8, i32 0, i32 6
  store %struct.mapped_device* %7, %struct.mapped_device** %9, align 8
  %10 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %11 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %10, i32 0, i32 5
  store i32* null, i32** %11, align 8
  %12 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %13 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = load %struct.request*, %struct.request** %5, align 8
  %15 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %16 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %15, i32 0, i32 3
  store %struct.request* %14, %struct.request** %16, align 8
  %17 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %18 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %20 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %22 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %27 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %26, i32 0, i32 0
  %28 = call i32 @memset(i32* %27, i32 0, i32 4)
  br label %29

29:                                               ; preds = %25, %3
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
