; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_test_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_test_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_zone = type { i32 }
%struct.dmz_mblock = type { i64 }

@DMZ_BLOCK_MASK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, %struct.dm_zone*, i32)* @dmz_test_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_test_block(%struct.dmz_metadata* %0, %struct.dm_zone* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_metadata*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmz_mblock*, align 8
  %9 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %5, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %12 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %10, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %20 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata* %19, %struct.dm_zone* %20, i32 %21)
  store %struct.dmz_mblock* %22, %struct.dmz_mblock** %8, align 8
  %23 = load %struct.dmz_mblock*, %struct.dmz_mblock** %8, align 8
  %24 = call i64 @IS_ERR(%struct.dmz_mblock* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.dmz_mblock*, %struct.dmz_mblock** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.dmz_mblock* %27)
  store i32 %28, i32* %4, align 4
  br label %44

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DMZ_BLOCK_MASK_BITS, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.dmz_mblock*, %struct.dmz_mblock** %8, align 8
  %34 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i64*
  %37 = call i64 @test_bit(i32 %32, i64* %36)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %41 = load %struct.dmz_mblock*, %struct.dmz_mblock** %8, align 8
  %42 = call i32 @dmz_release_mblock(%struct.dmz_metadata* %40, %struct.dmz_mblock* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %29, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata*, %struct.dm_zone*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @PTR_ERR(%struct.dmz_mblock*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @dmz_release_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
