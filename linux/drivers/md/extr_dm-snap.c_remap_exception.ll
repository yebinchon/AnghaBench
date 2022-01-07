; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_remap_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_remap_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_exception = type { i64, i32 }
%struct.bio = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*, %struct.dm_exception*, %struct.bio*, i64)* @remap_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap_exception(%struct.dm_snapshot* %0, %struct.dm_exception* %1, %struct.bio* %2, i64 %3) #0 {
  %5 = alloca %struct.dm_snapshot*, align 8
  %6 = alloca %struct.dm_exception*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i64, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %5, align 8
  store %struct.dm_exception* %1, %struct.dm_exception** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.bio*, %struct.bio** %7, align 8
  %10 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %11 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bio_set_dev(%struct.bio* %9, i32 %14)
  %16 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %17 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %20 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @dm_chunk_number(i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %25 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = add nsw i64 %22, %27
  %29 = call i32 @chunk_to_sector(%struct.TYPE_6__* %18, i64 %28)
  %30 = load %struct.bio*, %struct.bio** %7, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %35 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %33, %38
  %40 = add nsw i32 %29, %39
  %41 = load %struct.bio*, %struct.bio** %7, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  ret void
}

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @chunk_to_sector(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @dm_chunk_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
