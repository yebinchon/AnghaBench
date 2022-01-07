; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_validate_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_validate_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dm_zone = type { i32 }
%struct.dmz_mblock = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"=> VALIDATE zone %u, block %llu, %u blocks\00", align 1
@DMZ_BLOCK_MASK_BITS = common dso_local global i32 0, align 4
@DMZ_BLOCK_SIZE_BITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Zone %u: weight %u should be <= %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmz_validate_blocks(%struct.dmz_metadata* %0, %struct.dm_zone* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmz_metadata*, align 8
  %7 = alloca %struct.dm_zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dmz_mblock*, align 8
  %15 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %6, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %17 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %22 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %25 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %26 = call i32 @dmz_id(%struct.dmz_metadata* %24, %struct.dm_zone* %25)
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @dmz_dev_debug(%struct.TYPE_3__* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %31, %32
  %34 = load i32, i32* %13, align 4
  %35 = icmp ugt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  br label %38

38:                                               ; preds = %78, %4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %38
  %42 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %43 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata* %42, %struct.dm_zone* %43, i32 %44)
  store %struct.dmz_mblock* %45, %struct.dmz_mblock** %14, align 8
  %46 = load %struct.dmz_mblock*, %struct.dmz_mblock** %14, align 8
  %47 = call i64 @IS_ERR(%struct.dmz_mblock* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.dmz_mblock*, %struct.dmz_mblock** %14, align 8
  %51 = call i32 @PTR_ERR(%struct.dmz_mblock* %50)
  store i32 %51, i32* %5, align 4
  br label %123

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @DMZ_BLOCK_MASK_BITS, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* @DMZ_BLOCK_SIZE_BITS, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = call i32 @min(i32 %56, i64 %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.dmz_mblock*, %struct.dmz_mblock** %14, align 8
  %63 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i64*
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @dmz_set_bits(i64* %65, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %52
  %72 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %73 = load %struct.dmz_mblock*, %struct.dmz_mblock** %14, align 8
  %74 = call i32 @dmz_dirty_mblock(%struct.dmz_metadata* %72, %struct.dmz_mblock* %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %71, %52
  %79 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %80 = load %struct.dmz_mblock*, %struct.dmz_mblock** %14, align 8
  %81 = call i32 @dmz_release_mblock(%struct.dmz_metadata* %79, %struct.dmz_mblock* %80)
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %38

88:                                               ; preds = %38
  %89 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %90 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = add i32 %91, %92
  %94 = load i32, i32* %13, align 4
  %95 = icmp ule i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @likely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %88
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %102 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %122

105:                                              ; preds = %88
  %106 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %107 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %110 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %111 = call i32 @dmz_id(%struct.dmz_metadata* %109, %struct.dm_zone* %110)
  %112 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %113 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %15, align 4
  %117 = sub i32 %115, %116
  %118 = call i32 @dmz_dev_warn(%struct.TYPE_3__* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114, i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %121 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %105, %99
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %49
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @dmz_dev_debug(%struct.TYPE_3__*, i8*, i32, i64, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata*, %struct.dm_zone*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @PTR_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @dmz_set_bits(i64*, i32, i32) #1

declare dso_local i32 @dmz_dirty_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

declare dso_local i32 @dmz_release_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dmz_dev_warn(%struct.TYPE_3__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
