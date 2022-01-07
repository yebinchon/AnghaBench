; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_mblock_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_mblock_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_mblock = type { i32, i32, i32 }
%struct.dmz_metadata = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.bio = type { i32, %struct.dmz_mblock*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@DMZ_META_READING = common dso_local global i32 0, align 4
@dmz_mblock_bio_end_io = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@DMZ_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmz_mblock* (%struct.dmz_metadata*, i64)* @dmz_get_mblock_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmz_mblock* @dmz_get_mblock_slow(%struct.dmz_metadata* %0, i64 %1) #0 {
  %3 = alloca %struct.dmz_mblock*, align 8
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dmz_mblock*, align 8
  %7 = alloca %struct.dmz_mblock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bio*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %11 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %14 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %22 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i64 @dmz_bdev_is_dying(%struct.TYPE_6__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.dmz_mblock* @ERR_PTR(i32 %28)
  store %struct.dmz_mblock* %29, %struct.dmz_mblock** %3, align 8
  br label %119

30:                                               ; preds = %2
  %31 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call %struct.dmz_mblock* @dmz_alloc_mblock(%struct.dmz_metadata* %31, i64 %32)
  store %struct.dmz_mblock* %33, %struct.dmz_mblock** %6, align 8
  %34 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %35 = icmp ne %struct.dmz_mblock* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.dmz_mblock* @ERR_PTR(i32 %38)
  store %struct.dmz_mblock* %39, %struct.dmz_mblock** %3, align 8
  br label %119

40:                                               ; preds = %30
  %41 = load i32, i32* @GFP_NOIO, align 4
  %42 = call %struct.bio* @bio_alloc(i32 %41, i32 1)
  store %struct.bio* %42, %struct.bio** %9, align 8
  %43 = load %struct.bio*, %struct.bio** %9, align 8
  %44 = icmp ne %struct.bio* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %47 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %48 = call i32 @dmz_free_mblock(%struct.dmz_metadata* %46, %struct.dmz_mblock* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.dmz_mblock* @ERR_PTR(i32 %50)
  store %struct.dmz_mblock* %51, %struct.dmz_mblock** %3, align 8
  br label %119

52:                                               ; preds = %40
  %53 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %54 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %53, i32 0, i32 2
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call %struct.dmz_mblock* @dmz_get_mblock_fast(%struct.dmz_metadata* %56, i64 %57)
  store %struct.dmz_mblock* %58, %struct.dmz_mblock** %7, align 8
  %59 = load %struct.dmz_mblock*, %struct.dmz_mblock** %7, align 8
  %60 = icmp ne %struct.dmz_mblock* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %63 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %62, i32 0, i32 2
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %66 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %67 = call i32 @dmz_free_mblock(%struct.dmz_metadata* %65, %struct.dmz_mblock* %66)
  %68 = load %struct.bio*, %struct.bio** %9, align 8
  %69 = call i32 @bio_put(%struct.bio* %68)
  %70 = load %struct.dmz_mblock*, %struct.dmz_mblock** %7, align 8
  store %struct.dmz_mblock* %70, %struct.dmz_mblock** %3, align 8
  br label %119

71:                                               ; preds = %52
  %72 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %73 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @DMZ_META_READING, align 4
  %77 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %78 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %77, i32 0, i32 1
  %79 = call i32 @set_bit(i32 %76, i32* %78)
  %80 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %81 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %82 = call i32 @dmz_insert_mblock(%struct.dmz_metadata* %80, %struct.dmz_mblock* %81)
  %83 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %84 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %83, i32 0, i32 2
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @dmz_blk2sect(i64 %86)
  %88 = load %struct.bio*, %struct.bio** %9, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.bio*, %struct.bio** %9, align 8
  %92 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %93 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bio_set_dev(%struct.bio* %91, i32 %96)
  %98 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %99 = load %struct.bio*, %struct.bio** %9, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 1
  store %struct.dmz_mblock* %98, %struct.dmz_mblock** %100, align 8
  %101 = load i32, i32* @dmz_mblock_bio_end_io, align 4
  %102 = load %struct.bio*, %struct.bio** %9, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.bio*, %struct.bio** %9, align 8
  %105 = load i32, i32* @REQ_OP_READ, align 4
  %106 = load i32, i32* @REQ_META, align 4
  %107 = load i32, i32* @REQ_PRIO, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @bio_set_op_attrs(%struct.bio* %104, i32 %105, i32 %108)
  %110 = load %struct.bio*, %struct.bio** %9, align 8
  %111 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %112 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DMZ_BLOCK_SIZE, align 4
  %115 = call i32 @bio_add_page(%struct.bio* %110, i32 %113, i32 %114, i32 0)
  %116 = load %struct.bio*, %struct.bio** %9, align 8
  %117 = call i32 @submit_bio(%struct.bio* %116)
  %118 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  store %struct.dmz_mblock* %118, %struct.dmz_mblock** %3, align 8
  br label %119

119:                                              ; preds = %71, %61, %45, %36, %26
  %120 = load %struct.dmz_mblock*, %struct.dmz_mblock** %3, align 8
  ret %struct.dmz_mblock* %120
}

declare dso_local i64 @dmz_bdev_is_dying(%struct.TYPE_6__*) #1

declare dso_local %struct.dmz_mblock* @ERR_PTR(i32) #1

declare dso_local %struct.dmz_mblock* @dmz_alloc_mblock(%struct.dmz_metadata*, i64) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @dmz_free_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dmz_mblock* @dmz_get_mblock_fast(%struct.dmz_metadata*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dmz_insert_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

declare dso_local i32 @dmz_blk2sect(i64) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
