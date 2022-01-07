; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_first_valid_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_first_valid_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dm_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmz_first_valid_block(%struct.dmz_metadata* %0, %struct.dm_zone* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_metadata*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %5, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %13 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %16 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub nsw i64 %19, %20
  %22 = call i32 @dmz_to_next_set_block(%struct.dmz_metadata* %12, %struct.dm_zone* %13, i64 %14, i64 %21, i32 1)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %35 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %38 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub nsw i64 %41, %42
  %44 = call i32 @dmz_to_next_set_block(%struct.dmz_metadata* %34, %struct.dm_zone* %35, i64 %36, i64 %43, i32 0)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @dmz_to_next_set_block(%struct.dmz_metadata*, %struct.dm_zone*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
