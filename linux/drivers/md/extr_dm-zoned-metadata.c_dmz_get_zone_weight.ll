; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_zone_weight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_zone_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_zone = type { i32 }
%struct.dmz_mblock = type { i8* }

@DMZ_BLOCK_MASK_BITS = common dso_local global i32 0, align 4
@DMZ_BLOCK_SIZE_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_metadata*, %struct.dm_zone*)* @dmz_get_zone_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_get_zone_weight(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  %5 = alloca %struct.dmz_mblock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %13 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %29, %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %22 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata* %21, %struct.dm_zone* %22, i32 %23)
  store %struct.dmz_mblock* %24, %struct.dmz_mblock** %5, align 8
  %25 = load %struct.dmz_mblock*, %struct.dmz_mblock** %5, align 8
  %26 = call i64 @IS_ERR(%struct.dmz_mblock* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %59

29:                                               ; preds = %20
  %30 = load %struct.dmz_mblock*, %struct.dmz_mblock** %5, align 8
  %31 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DMZ_BLOCK_MASK_BITS, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* @DMZ_BLOCK_SIZE_BITS, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = call i32 @min(i32 %36, i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @dmz_count_bits(i8* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %51 = load %struct.dmz_mblock*, %struct.dmz_mblock** %5, align 8
  %52 = call i32 @dmz_release_mblock(%struct.dmz_metadata* %50, %struct.dmz_mblock* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %17

59:                                               ; preds = %28, %17
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %62 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata*, %struct.dm_zone*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @dmz_count_bits(i8*, i32, i32) #1

declare dso_local i32 @dmz_release_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
