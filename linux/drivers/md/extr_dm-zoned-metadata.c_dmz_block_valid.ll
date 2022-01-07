; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_block_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_block_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dm_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmz_block_valid(%struct.dmz_metadata* %0, %struct.dm_zone* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_metadata*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %5, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %10 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @dmz_test_block(%struct.dmz_metadata* %9, %struct.dm_zone* %10, i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %19 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %22 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %25, %26
  %28 = call i32 @dmz_to_next_set_block(%struct.dmz_metadata* %18, %struct.dm_zone* %19, i64 %20, i64 %27, i32 0)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @dmz_test_block(%struct.dmz_metadata*, %struct.dm_zone*, i64) #1

declare dso_local i32 @dmz_to_next_set_block(%struct.dmz_metadata*, %struct.dm_zone*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
