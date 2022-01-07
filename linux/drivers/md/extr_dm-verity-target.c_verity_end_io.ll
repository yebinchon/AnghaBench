; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.dm_verity_io* }
%struct.dm_verity_io = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@verity_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @verity_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verity_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dm_verity_io*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.dm_verity_io*, %struct.dm_verity_io** %5, align 8
  store %struct.dm_verity_io* %6, %struct.dm_verity_io** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %13 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @verity_fec_is_enabled(%struct.TYPE_2__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @verity_finish_io(%struct.dm_verity_io* %18, i32 %21)
  br label %36

23:                                               ; preds = %11, %1
  %24 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %25 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %24, i32 0, i32 0
  %26 = load i32, i32* @verity_work, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %29 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %34 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %33, i32 0, i32 0
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @verity_fec_is_enabled(%struct.TYPE_2__*) #1

declare dso_local i32 @verity_finish_io(%struct.dm_verity_io*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
