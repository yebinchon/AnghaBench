; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_submit_prefetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_submit_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32 }
%struct.dm_verity_io = type { i32, i32 }
%struct.dm_verity_prefetch_work = type { i32, i32, i32, %struct.dm_verity* }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@verity_prefetch_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_verity*, %struct.dm_verity_io*)* @verity_submit_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verity_submit_prefetch(%struct.dm_verity* %0, %struct.dm_verity_io* %1) #0 {
  %3 = alloca %struct.dm_verity*, align 8
  %4 = alloca %struct.dm_verity_io*, align 8
  %5 = alloca %struct.dm_verity_prefetch_work*, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %3, align 8
  store %struct.dm_verity_io* %1, %struct.dm_verity_io** %4, align 8
  %6 = load i32, i32* @GFP_NOIO, align 4
  %7 = load i32, i32* @__GFP_NORETRY, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @__GFP_NOWARN, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.dm_verity_prefetch_work* @kmalloc(i32 24, i32 %12)
  store %struct.dm_verity_prefetch_work* %13, %struct.dm_verity_prefetch_work** %5, align 8
  %14 = load %struct.dm_verity_prefetch_work*, %struct.dm_verity_prefetch_work** %5, align 8
  %15 = icmp ne %struct.dm_verity_prefetch_work* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.dm_verity_prefetch_work*, %struct.dm_verity_prefetch_work** %5, align 8
  %19 = getelementptr inbounds %struct.dm_verity_prefetch_work, %struct.dm_verity_prefetch_work* %18, i32 0, i32 0
  %20 = load i32, i32* @verity_prefetch_io, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %23 = load %struct.dm_verity_prefetch_work*, %struct.dm_verity_prefetch_work** %5, align 8
  %24 = getelementptr inbounds %struct.dm_verity_prefetch_work, %struct.dm_verity_prefetch_work* %23, i32 0, i32 3
  store %struct.dm_verity* %22, %struct.dm_verity** %24, align 8
  %25 = load %struct.dm_verity_io*, %struct.dm_verity_io** %4, align 8
  %26 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dm_verity_prefetch_work*, %struct.dm_verity_prefetch_work** %5, align 8
  %29 = getelementptr inbounds %struct.dm_verity_prefetch_work, %struct.dm_verity_prefetch_work* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.dm_verity_io*, %struct.dm_verity_io** %4, align 8
  %31 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dm_verity_prefetch_work*, %struct.dm_verity_prefetch_work** %5, align 8
  %34 = getelementptr inbounds %struct.dm_verity_prefetch_work, %struct.dm_verity_prefetch_work* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %36 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dm_verity_prefetch_work*, %struct.dm_verity_prefetch_work** %5, align 8
  %39 = getelementptr inbounds %struct.dm_verity_prefetch_work, %struct.dm_verity_prefetch_work* %38, i32 0, i32 0
  %40 = call i32 @queue_work(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.dm_verity_prefetch_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
