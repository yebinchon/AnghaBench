; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_write_mblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_write_mblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dmz_mblock = type { i32, i32, i64 }
%struct.bio = type { i32, %struct.dmz_mblock*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@DMZ_META_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMZ_META_WRITING = common dso_local global i32 0, align 4
@dmz_mblock_bio_end_io = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@DMZ_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, %struct.dmz_mblock*, i32)* @dmz_write_mblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_write_mblock(%struct.dmz_metadata* %0, %struct.dmz_mblock* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_metadata*, align 8
  %6 = alloca %struct.dmz_mblock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bio*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %5, align 8
  store %struct.dmz_mblock* %1, %struct.dmz_mblock** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %11 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %19 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %23 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i64 @dmz_bdev_is_dying(%struct.TYPE_6__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %79

30:                                               ; preds = %3
  %31 = load i32, i32* @GFP_NOIO, align 4
  %32 = call %struct.bio* @bio_alloc(i32 %31, i32 1)
  store %struct.bio* %32, %struct.bio** %9, align 8
  %33 = load %struct.bio*, %struct.bio** %9, align 8
  %34 = icmp ne %struct.bio* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @DMZ_META_ERROR, align 4
  %37 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %38 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %37, i32 0, i32 1
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %79

42:                                               ; preds = %30
  %43 = load i32, i32* @DMZ_META_WRITING, align 4
  %44 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %45 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %44, i32 0, i32 1
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @dmz_blk2sect(i64 %47)
  %49 = load %struct.bio*, %struct.bio** %9, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.bio*, %struct.bio** %9, align 8
  %53 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %54 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bio_set_dev(%struct.bio* %52, i32 %57)
  %59 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %60 = load %struct.bio*, %struct.bio** %9, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  store %struct.dmz_mblock* %59, %struct.dmz_mblock** %61, align 8
  %62 = load i32, i32* @dmz_mblock_bio_end_io, align 4
  %63 = load %struct.bio*, %struct.bio** %9, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.bio*, %struct.bio** %9, align 8
  %66 = load i32, i32* @REQ_OP_WRITE, align 4
  %67 = load i32, i32* @REQ_META, align 4
  %68 = load i32, i32* @REQ_PRIO, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @bio_set_op_attrs(%struct.bio* %65, i32 %66, i32 %69)
  %71 = load %struct.bio*, %struct.bio** %9, align 8
  %72 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %73 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DMZ_BLOCK_SIZE, align 4
  %76 = call i32 @bio_add_page(%struct.bio* %71, i32 %74, i32 %75, i32 0)
  %77 = load %struct.bio*, %struct.bio** %9, align 8
  %78 = call i32 @submit_bio(%struct.bio* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %42, %35, %27
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @dmz_bdev_is_dying(%struct.TYPE_6__*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

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
