; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_set_discard_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_set_discard_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.queue_limits }

@DM_CLONE_DISCARD_PASSDOWN = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*, %struct.queue_limits*)* @set_discard_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_discard_limits(%struct.clone* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.clone*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.queue_limits*, align 8
  store %struct.clone* %0, %struct.clone** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %7 = load %struct.clone*, %struct.clone** %3, align 8
  %8 = getelementptr inbounds %struct.clone, %struct.clone* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.block_device*, %struct.block_device** %10, align 8
  store %struct.block_device* %11, %struct.block_device** %5, align 8
  %12 = load %struct.block_device*, %struct.block_device** %5, align 8
  %13 = call %struct.TYPE_4__* @bdev_get_queue(%struct.block_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.queue_limits* %14, %struct.queue_limits** %6, align 8
  %15 = load i32, i32* @DM_CLONE_DISCARD_PASSDOWN, align 4
  %16 = load %struct.clone*, %struct.clone** %3, align 8
  %17 = getelementptr inbounds %struct.clone, %struct.clone* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %2
  %21 = load %struct.clone*, %struct.clone** %3, align 8
  %22 = getelementptr inbounds %struct.clone, %struct.clone* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SECTOR_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %27 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @UINT_MAX, align 4
  %29 = load i32, i32* @SECTOR_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load %struct.clone*, %struct.clone** %3, align 8
  %32 = getelementptr inbounds %struct.clone, %struct.clone* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @round_down(i32 %30, i32 %33)
  %35 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %36 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %68

37:                                               ; preds = %2
  %38 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %39 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %42 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %44 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %47 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %49 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %52 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %54 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %57 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %59 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %62 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %64 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %67 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %37, %20
  ret void
}

declare dso_local %struct.TYPE_4__* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @round_down(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
