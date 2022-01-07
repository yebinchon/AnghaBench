; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_to_next_set_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_to_next_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_zone = type { i32 }
%struct.dmz_mblock = type { i64 }

@DMZ_BLOCK_MASK_BITS = common dso_local global i32 0, align 4
@DMZ_BLOCK_SIZE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, %struct.dm_zone*, i32, i32, i32)* @dmz_to_next_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_to_next_set_block(%struct.dmz_metadata* %0, %struct.dm_zone* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmz_metadata*, align 8
  %8 = alloca %struct.dm_zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dmz_mblock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %7, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add i32 %18, %19
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %7, align 8
  %22 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ugt i32 %20, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  br label %29

29:                                               ; preds = %81, %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %29
  %33 = load %struct.dmz_metadata*, %struct.dmz_metadata** %7, align 8
  %34 = load %struct.dm_zone*, %struct.dm_zone** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata* %33, %struct.dm_zone* %34, i32 %35)
  store %struct.dmz_mblock* %36, %struct.dmz_mblock** %12, align 8
  %37 = load %struct.dmz_mblock*, %struct.dmz_mblock** %12, align 8
  %38 = call i64 @IS_ERR(%struct.dmz_mblock* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.dmz_mblock*, %struct.dmz_mblock** %12, align 8
  %42 = call i32 @PTR_ERR(%struct.dmz_mblock* %41)
  store i32 %42, i32* %6, align 4
  br label %90

43:                                               ; preds = %32
  %44 = load %struct.dmz_mblock*, %struct.dmz_mblock** %12, align 8
  %45 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64* %47, i64** %16, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @DMZ_BLOCK_MASK_BITS, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @DMZ_BLOCK_SIZE_BITS, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub i32 %52, %53
  %55 = call i32 @min(i32 %51, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load i64*, i64** %16, align 8
  %60 = load i32, i32* @DMZ_BLOCK_SIZE_BITS, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @find_next_bit(i64* %59, i32 %60, i32 %61)
  store i32 %62, i32* %14, align 4
  br label %68

63:                                               ; preds = %43
  %64 = load i64*, i64** %16, align 8
  %65 = load i32, i32* @DMZ_BLOCK_SIZE_BITS, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @find_next_zero_bit(i64* %64, i32 %65, i32 %66)
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.dmz_metadata*, %struct.dmz_metadata** %7, align 8
  %70 = load %struct.dmz_mblock*, %struct.dmz_mblock** %12, align 8
  %71 = call i32 @dmz_release_mblock(%struct.dmz_metadata* %69, %struct.dmz_mblock* %70)
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub i32 %72, %73
  %75 = load i32, i32* %17, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @DMZ_BLOCK_SIZE_BITS, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %88

81:                                               ; preds = %68
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %29

88:                                               ; preds = %80, %29
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %40
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata*, %struct.dm_zone*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @PTR_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @find_next_zero_bit(i64*, i32, i32) #1

declare dso_local i32 @dmz_release_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
