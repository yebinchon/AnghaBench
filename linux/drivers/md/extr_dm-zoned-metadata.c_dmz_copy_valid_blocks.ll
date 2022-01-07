; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_copy_valid_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_copy_valid_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dm_zone = type { i32 }
%struct.dmz_mblock = type { i32 }

@DMZ_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMZ_BLOCK_SIZE_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmz_copy_valid_blocks(%struct.dmz_metadata* %0, %struct.dm_zone* %1, %struct.dm_zone* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_metadata*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca %struct.dm_zone*, align 8
  %8 = alloca %struct.dmz_mblock*, align 8
  %9 = alloca %struct.dmz_mblock*, align 8
  %10 = alloca i64, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %5, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %6, align 8
  store %struct.dm_zone* %2, %struct.dm_zone** %7, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %44, %3
  %12 = load i64, i64* %10, align 8
  %13 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %14 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %12, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %11
  %20 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %21 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata* %20, %struct.dm_zone* %21, i64 %22)
  store %struct.dmz_mblock* %23, %struct.dmz_mblock** %8, align 8
  %24 = load %struct.dmz_mblock*, %struct.dmz_mblock** %8, align 8
  %25 = call i64 @IS_ERR(%struct.dmz_mblock* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.dmz_mblock*, %struct.dmz_mblock** %8, align 8
  %29 = call i32 @PTR_ERR(%struct.dmz_mblock* %28)
  store i32 %29, i32* %4, align 4
  br label %71

30:                                               ; preds = %19
  %31 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %32 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata* %31, %struct.dm_zone* %32, i64 %33)
  store %struct.dmz_mblock* %34, %struct.dmz_mblock** %9, align 8
  %35 = load %struct.dmz_mblock*, %struct.dmz_mblock** %9, align 8
  %36 = call i64 @IS_ERR(%struct.dmz_mblock* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %40 = load %struct.dmz_mblock*, %struct.dmz_mblock** %8, align 8
  %41 = call i32 @dmz_release_mblock(%struct.dmz_metadata* %39, %struct.dmz_mblock* %40)
  %42 = load %struct.dmz_mblock*, %struct.dmz_mblock** %9, align 8
  %43 = call i32 @PTR_ERR(%struct.dmz_mblock* %42)
  store i32 %43, i32* %4, align 4
  br label %71

44:                                               ; preds = %30
  %45 = load %struct.dmz_mblock*, %struct.dmz_mblock** %9, align 8
  %46 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dmz_mblock*, %struct.dmz_mblock** %8, align 8
  %49 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DMZ_BLOCK_SIZE, align 4
  %52 = call i32 @memcpy(i32 %47, i32 %50, i32 %51)
  %53 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %54 = load %struct.dmz_mblock*, %struct.dmz_mblock** %9, align 8
  %55 = call i32 @dmz_dirty_mblock(%struct.dmz_metadata* %53, %struct.dmz_mblock* %54)
  %56 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %57 = load %struct.dmz_mblock*, %struct.dmz_mblock** %9, align 8
  %58 = call i32 @dmz_release_mblock(%struct.dmz_metadata* %56, %struct.dmz_mblock* %57)
  %59 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %60 = load %struct.dmz_mblock*, %struct.dmz_mblock** %8, align 8
  %61 = call i32 @dmz_release_mblock(%struct.dmz_metadata* %59, %struct.dmz_mblock* %60)
  %62 = load i64, i64* @DMZ_BLOCK_SIZE_BITS, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %10, align 8
  br label %11

65:                                               ; preds = %11
  %66 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %67 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %70 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %65, %38, %27
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata*, %struct.dm_zone*, i64) #1

declare dso_local i64 @IS_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @PTR_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @dmz_release_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dmz_dirty_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
