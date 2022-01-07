; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_rdwr_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_rdwr_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@DMZ_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, i32, i32, %struct.page*)* @dmz_rdwr_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_rdwr_block(%struct.dmz_metadata* %0, i32 %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmz_metadata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.page* %3, %struct.page** %9, align 8
  %12 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %13 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i64 @dmz_bdev_is_dying(%struct.TYPE_4__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %58

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_NOIO, align 4
  %22 = call %struct.bio* @bio_alloc(i32 %21, i32 1)
  store %struct.bio* %22, %struct.bio** %10, align 8
  %23 = load %struct.bio*, %struct.bio** %10, align 8
  %24 = icmp ne %struct.bio* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dmz_blk2sect(i32 %29)
  %31 = load %struct.bio*, %struct.bio** %10, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.bio*, %struct.bio** %10, align 8
  %35 = load %struct.dmz_metadata*, %struct.dmz_metadata** %6, align 8
  %36 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bio_set_dev(%struct.bio* %34, i32 %39)
  %41 = load %struct.bio*, %struct.bio** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @REQ_SYNC, align 4
  %44 = load i32, i32* @REQ_META, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @REQ_PRIO, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @bio_set_op_attrs(%struct.bio* %41, i32 %42, i32 %47)
  %49 = load %struct.bio*, %struct.bio** %10, align 8
  %50 = load %struct.page*, %struct.page** %9, align 8
  %51 = load i32, i32* @DMZ_BLOCK_SIZE, align 4
  %52 = call i32 @bio_add_page(%struct.bio* %49, %struct.page* %50, i32 %51, i32 0)
  %53 = load %struct.bio*, %struct.bio** %10, align 8
  %54 = call i32 @submit_bio_wait(%struct.bio* %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.bio*, %struct.bio** %10, align 8
  %56 = call i32 @bio_put(%struct.bio* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %28, %25, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @dmz_bdev_is_dying(%struct.TYPE_4__*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @dmz_blk2sect(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
