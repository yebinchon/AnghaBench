; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_write_super_and_discard_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_write_super_and_discard_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.mddev*, %struct.block_device* }
%struct.mddev = type { i32 }
%struct.block_device = type { i32 }

@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*, i64)* @r5l_write_super_and_discard_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_write_super_and_discard_space(%struct.r5l_log* %0, i64 %1) #0 {
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.mddev*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %8 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.block_device*, %struct.block_device** %10, align 8
  store %struct.block_device* %11, %struct.block_device** %5, align 8
  %12 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @r5l_write_super(%struct.r5l_log* %12, i64 %13)
  %15 = load %struct.block_device*, %struct.block_device** %5, align 8
  %16 = call i32 @bdev_get_queue(%struct.block_device* %15)
  %17 = call i32 @blk_queue_discard(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %95

20:                                               ; preds = %2
  %21 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %22 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.mddev*, %struct.mddev** %24, align 8
  store %struct.mddev* %25, %struct.mddev** %6, align 8
  %26 = load %struct.mddev*, %struct.mddev** %6, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = or i32 %29, %31
  %33 = call i32 @set_mask_bits(i32* %27, i32 0, i32 %32)
  %34 = load %struct.mddev*, %struct.mddev** %6, align 8
  %35 = call i32 @mddev_trylock(%struct.mddev* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %20
  br label %95

38:                                               ; preds = %20
  %39 = load %struct.mddev*, %struct.mddev** %6, align 8
  %40 = call i32 @md_update_sb(%struct.mddev* %39, i32 1)
  %41 = load %struct.mddev*, %struct.mddev** %6, align 8
  %42 = call i32 @mddev_unlock(%struct.mddev* %41)
  %43 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %44 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %38
  %49 = load %struct.block_device*, %struct.block_device** %5, align 8
  %50 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %51 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %54 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %52, %57
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %61 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load i32, i32* @GFP_NOIO, align 4
  %65 = call i32 @blkdev_issue_discard(%struct.block_device* %49, i64 %58, i64 %63, i32 %64, i32 0)
  br label %95

66:                                               ; preds = %38
  %67 = load %struct.block_device*, %struct.block_device** %5, align 8
  %68 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %69 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %72 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %70, %75
  %77 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %78 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %81 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = load i32, i32* @GFP_NOIO, align 4
  %85 = call i32 @blkdev_issue_discard(%struct.block_device* %67, i64 %76, i64 %83, i32 %84, i32 0)
  %86 = load %struct.block_device*, %struct.block_device** %5, align 8
  %87 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %88 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %4, align 8
  %93 = load i32, i32* @GFP_NOIO, align 4
  %94 = call i32 @blkdev_issue_discard(%struct.block_device* %86, i64 %91, i64 %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %19, %37, %66, %48
  ret void
}

declare dso_local i32 @r5l_write_super(%struct.r5l_log*, i64) #1

declare dso_local i32 @blk_queue_discard(i32) #1

declare dso_local i32 @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @set_mask_bits(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mddev_trylock(%struct.mddev*) #1

declare dso_local i32 @md_update_sb(%struct.mddev*, i32) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

declare dso_local i32 @blkdev_issue_discard(%struct.block_device*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
