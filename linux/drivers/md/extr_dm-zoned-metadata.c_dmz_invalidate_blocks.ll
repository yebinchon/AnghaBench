; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_invalidate_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_invalidate_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dm_zone = type { i32 }
%struct.dmz_mblock = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"=> INVALIDATE zone %u, block %llu, %u blocks\00", align 1
@DMZ_BLOCK_MASK_BITS = common dso_local global i32 0, align 4
@DMZ_BLOCK_SIZE_BITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Zone %u: weight %u should be >= %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmz_invalidate_blocks(%struct.dmz_metadata* %0, %struct.dm_zone* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmz_metadata*, align 8
  %7 = alloca %struct.dm_zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dmz_mblock*, align 8
  %14 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %6, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %16 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %19 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %20 = call i32 @dmz_id(%struct.dmz_metadata* %18, %struct.dm_zone* %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dmz_dev_debug(%struct.TYPE_3__* %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %24, %25
  %27 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %28 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ugt i32 %26, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  br label %35

35:                                               ; preds = %75, %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %35
  %39 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %40 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata* %39, %struct.dm_zone* %40, i32 %41)
  store %struct.dmz_mblock* %42, %struct.dmz_mblock** %13, align 8
  %43 = load %struct.dmz_mblock*, %struct.dmz_mblock** %13, align 8
  %44 = call i64 @IS_ERR(%struct.dmz_mblock* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.dmz_mblock*, %struct.dmz_mblock** %13, align 8
  %48 = call i32 @PTR_ERR(%struct.dmz_mblock* %47)
  store i32 %48, i32* %5, align 4
  br label %112

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @DMZ_BLOCK_MASK_BITS, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* @DMZ_BLOCK_SIZE_BITS, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = call i32 @min(i32 %53, i64 %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.dmz_mblock*, %struct.dmz_mblock** %13, align 8
  %60 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i64*
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @dmz_clear_bits(i64* %62, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %49
  %69 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %70 = load %struct.dmz_mblock*, %struct.dmz_mblock** %13, align 8
  %71 = call i32 @dmz_dirty_mblock(%struct.dmz_metadata* %69, %struct.dmz_mblock* %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %14, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %68, %49
  %76 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %77 = load %struct.dmz_mblock*, %struct.dmz_mblock** %13, align 8
  %78 = call i32 @dmz_release_mblock(%struct.dmz_metadata* %76, %struct.dmz_mblock* %77)
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %35

85:                                               ; preds = %35
  %86 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %87 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp uge i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %94 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sub i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %111

97:                                               ; preds = %85
  %98 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %99 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %102 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %103 = call i32 @dmz_id(%struct.dmz_metadata* %101, %struct.dm_zone* %102)
  %104 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %105 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @dmz_dev_warn(%struct.TYPE_3__* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106, i32 %107)
  %109 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %110 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %97, %91
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %46
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @dmz_dev_debug(%struct.TYPE_3__*, i8*, i32, i32, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata*, %struct.dm_zone*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @PTR_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @dmz_clear_bits(i64*, i32, i32) #1

declare dso_local i32 @dmz_dirty_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

declare dso_local i32 @dmz_release_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

declare dso_local i32 @dmz_dev_warn(%struct.TYPE_3__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
