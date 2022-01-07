; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_zero_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_zero_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dm_exception = type { i32 }
%struct.bio = type { %struct.dm_snapshot*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dm_io_region = type { i32, i32, i32 }

@zero_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*, %struct.dm_exception*, %struct.bio*, i32)* @zero_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zero_exception(%struct.dm_snapshot* %0, %struct.dm_exception* %1, %struct.bio* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_snapshot*, align 8
  %6 = alloca %struct.dm_exception*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_io_region, align 4
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %5, align 8
  store %struct.dm_exception* %1, %struct.dm_exception** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %11 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %9, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load %struct.bio*, %struct.bio** %7, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %22 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %28 = call i32 @account_start_copy(%struct.dm_snapshot* %27)
  %29 = load %struct.bio*, %struct.bio** %7, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 0
  %31 = load %struct.dm_snapshot*, %struct.dm_snapshot** %30, align 8
  %32 = call i32 @WARN_ON_ONCE(%struct.dm_snapshot* %31)
  %33 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %34 = load %struct.bio*, %struct.bio** %7, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  store %struct.dm_snapshot* %33, %struct.dm_snapshot** %35, align 8
  %36 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %37 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @zero_callback, align 4
  %40 = load %struct.bio*, %struct.bio** %7, align 8
  %41 = call i32 @dm_kcopyd_zero(i32 %38, i32 1, %struct.dm_io_region* %9, i32 0, i32 %39, %struct.bio* %40)
  ret void
}

declare dso_local i32 @account_start_copy(%struct.dm_snapshot*) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.dm_snapshot*) #1

declare dso_local i32 @dm_kcopyd_zero(i32, i32, %struct.dm_io_region*, i32, i32, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
