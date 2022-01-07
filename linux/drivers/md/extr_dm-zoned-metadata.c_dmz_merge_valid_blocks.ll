; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_merge_valid_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_merge_valid_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dm_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmz_merge_valid_blocks(%struct.dmz_metadata* %0, %struct.dm_zone* %1, %struct.dm_zone* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmz_metadata*, align 8
  %7 = alloca %struct.dm_zone*, align 8
  %8 = alloca %struct.dm_zone*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %6, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %7, align 8
  store %struct.dm_zone* %2, %struct.dm_zone** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %12

12:                                               ; preds = %39, %4
  %13 = load i64, i64* %9, align 8
  %14 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %15 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %13, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %12
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %22 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %23 = call i32 @dmz_first_valid_block(%struct.dmz_metadata* %21, %struct.dm_zone* %22, i64* %9)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %45

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %31 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @dmz_validate_blocks(%struct.dmz_metadata* %30, %struct.dm_zone* %31, i64 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %9, align 8
  br label %12

44:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %37, %26
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @dmz_first_valid_block(%struct.dmz_metadata*, %struct.dm_zone*, i64*) #1

declare dso_local i32 @dmz_validate_blocks(%struct.dmz_metadata*, %struct.dm_zone*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
