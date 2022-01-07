; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_ranges_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_ranges_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_integrity_range*, %struct.dm_integrity_range*)* @ranges_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ranges_overlap(%struct.dm_integrity_range* %0, %struct.dm_integrity_range* %1) #0 {
  %3 = alloca %struct.dm_integrity_range*, align 8
  %4 = alloca %struct.dm_integrity_range*, align 8
  store %struct.dm_integrity_range* %0, %struct.dm_integrity_range** %3, align 8
  store %struct.dm_integrity_range* %1, %struct.dm_integrity_range** %4, align 8
  %5 = load %struct.dm_integrity_range*, %struct.dm_integrity_range** %3, align 8
  %6 = getelementptr inbounds %struct.dm_integrity_range, %struct.dm_integrity_range* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.dm_integrity_range*, %struct.dm_integrity_range** %4, align 8
  %9 = getelementptr inbounds %struct.dm_integrity_range, %struct.dm_integrity_range* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dm_integrity_range*, %struct.dm_integrity_range** %4, align 8
  %12 = getelementptr inbounds %struct.dm_integrity_range, %struct.dm_integrity_range* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = icmp slt i64 %7, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.dm_integrity_range*, %struct.dm_integrity_range** %3, align 8
  %18 = getelementptr inbounds %struct.dm_integrity_range, %struct.dm_integrity_range* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dm_integrity_range*, %struct.dm_integrity_range** %3, align 8
  %21 = getelementptr inbounds %struct.dm_integrity_range, %struct.dm_integrity_range* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.dm_integrity_range*, %struct.dm_integrity_range** %4, align 8
  %25 = getelementptr inbounds %struct.dm_integrity_range, %struct.dm_integrity_range* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br label %28

28:                                               ; preds = %16, %2
  %29 = phi i1 [ false, %2 ], [ %27, %16 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
