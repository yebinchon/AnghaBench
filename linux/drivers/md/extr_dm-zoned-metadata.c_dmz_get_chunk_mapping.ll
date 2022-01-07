; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_chunk_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_chunk_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_zone = type { i32, i32 }
%struct.dmz_metadata = type { i32, %struct.dmz_mblock** }
%struct.dmz_mblock = type { i64 }
%struct.dmz_map = type { i32 }

@DMZ_MAP_ENTRIES_SHIFT = common dso_local global i32 0, align 4
@DMZ_MAP_ENTRIES_MASK = common dso_local global i32 0, align 4
@DMZ_MAP_UNMAPPED = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@DMZ_ALLOC_RND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMZ_SEQ_WRITE_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_zone* @dmz_get_chunk_mapping(%struct.dmz_metadata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmz_mblock*, align 8
  %8 = alloca %struct.dmz_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_zone*, align 8
  %12 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %14 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %13, i32 0, i32 1
  %15 = load %struct.dmz_mblock**, %struct.dmz_mblock*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DMZ_MAP_ENTRIES_SHIFT, align 4
  %18 = lshr i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dmz_mblock*, %struct.dmz_mblock** %15, i64 %19
  %21 = load %struct.dmz_mblock*, %struct.dmz_mblock** %20, align 8
  store %struct.dmz_mblock* %21, %struct.dmz_mblock** %7, align 8
  %22 = load %struct.dmz_mblock*, %struct.dmz_mblock** %7, align 8
  %23 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.dmz_map*
  store %struct.dmz_map* %25, %struct.dmz_map** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DMZ_MAP_ENTRIES_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  store %struct.dm_zone* null, %struct.dm_zone** %11, align 8
  store i32 0, i32* %12, align 4
  %29 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %30 = call i32 @dmz_lock_map(%struct.dmz_metadata* %29)
  br label %31

31:                                               ; preds = %108, %63, %3
  %32 = load %struct.dmz_map*, %struct.dmz_map** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %32, i64 %34
  %36 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @REQ_OP_WRITE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %118

47:                                               ; preds = %42
  %48 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %49 = load i32, i32* @DMZ_ALLOC_RND, align 4
  %50 = call %struct.dm_zone* @dmz_alloc_zone(%struct.dmz_metadata* %48, i32 %49)
  store %struct.dm_zone* %50, %struct.dm_zone** %11, align 8
  %51 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %52 = icmp ne %struct.dm_zone* %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %47
  %54 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %55 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @dmz_bdev_is_dying(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.dm_zone* @ERR_PTR(i32 %61)
  store %struct.dm_zone* %62, %struct.dm_zone** %11, align 8
  br label %118

63:                                               ; preds = %53
  %64 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %65 = call i32 @dmz_wait_for_free_zones(%struct.dmz_metadata* %64)
  br label %31

66:                                               ; preds = %47
  %67 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %68 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @dmz_map_zone(%struct.dmz_metadata* %67, %struct.dm_zone* %68, i32 %69)
  br label %104

71:                                               ; preds = %31
  %72 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call %struct.dm_zone* @dmz_get(%struct.dmz_metadata* %72, i32 %73)
  store %struct.dm_zone* %74, %struct.dm_zone** %11, align 8
  %75 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %76 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.dm_zone* @ERR_PTR(i32 %82)
  store %struct.dm_zone* %83, %struct.dm_zone** %11, align 8
  br label %118

84:                                               ; preds = %71
  %85 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %86 = call i64 @dmz_seq_write_err(%struct.dm_zone* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %90 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %91 = call i32 @dmz_handle_seq_write_err(%struct.dmz_metadata* %89, %struct.dm_zone* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  %97 = call %struct.dm_zone* @ERR_PTR(i32 %96)
  store %struct.dm_zone* %97, %struct.dm_zone** %11, align 8
  br label %118

98:                                               ; preds = %88
  %99 = load i32, i32* @DMZ_SEQ_WRITE_ERR, align 4
  %100 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %101 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %100, i32 0, i32 1
  %102 = call i32 @clear_bit(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %98, %84
  br label %104

104:                                              ; preds = %103, %66
  %105 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %106 = call i64 @dmz_in_reclaim(%struct.dm_zone* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %110 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %111 = call i32 @dmz_wait_for_reclaim(%struct.dmz_metadata* %109, %struct.dm_zone* %110)
  br label %31

112:                                              ; preds = %104
  %113 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %114 = call i32 @dmz_activate_zone(%struct.dm_zone* %113)
  %115 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %116 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  %117 = call i32 @dmz_lru_zone(%struct.dmz_metadata* %115, %struct.dm_zone* %116)
  br label %118

118:                                              ; preds = %112, %94, %80, %59, %46
  %119 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %120 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %119)
  %121 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  ret %struct.dm_zone* %121
}

declare dso_local i32 @dmz_lock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.dm_zone* @dmz_alloc_zone(%struct.dmz_metadata*, i32) #1

declare dso_local i64 @dmz_bdev_is_dying(i32) #1

declare dso_local %struct.dm_zone* @ERR_PTR(i32) #1

declare dso_local i32 @dmz_wait_for_free_zones(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_map_zone(%struct.dmz_metadata*, %struct.dm_zone*, i32) #1

declare dso_local %struct.dm_zone* @dmz_get(%struct.dmz_metadata*, i32) #1

declare dso_local i64 @dmz_seq_write_err(%struct.dm_zone*) #1

declare dso_local i32 @dmz_handle_seq_write_err(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @dmz_in_reclaim(%struct.dm_zone*) #1

declare dso_local i32 @dmz_wait_for_reclaim(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_activate_zone(%struct.dm_zone*) #1

declare dso_local i32 @dmz_lru_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
