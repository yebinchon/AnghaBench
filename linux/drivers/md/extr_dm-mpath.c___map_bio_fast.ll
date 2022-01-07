; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c___map_bio_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c___map_bio_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { i32 }
%struct.multipath = type { i32, i32, i32, i32, i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MPATHF_QUEUE_IF_NO_PATH = common dso_local global i32 0, align 4
@kmultipathd = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pgpath* (%struct.multipath*, %struct.bio*)* @__map_bio_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pgpath* @__map_bio_fast(%struct.multipath* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.pgpath*, align 8
  %4 = alloca %struct.multipath*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.pgpath*, align 8
  %7 = alloca i64, align 8
  store %struct.multipath* %0, %struct.multipath** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %8 = load %struct.multipath*, %struct.multipath** %4, align 8
  %9 = getelementptr inbounds %struct.multipath, %struct.multipath* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pgpath* @READ_ONCE(i32 %10)
  store %struct.pgpath* %11, %struct.pgpath** %6, align 8
  %12 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %13 = icmp ne %struct.pgpath* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.multipath*, %struct.multipath** %4, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.pgpath* @choose_pgpath(%struct.multipath* %15, i32 %19)
  store %struct.pgpath* %20, %struct.pgpath** %6, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  %23 = icmp ne %struct.pgpath* %22, null
  br i1 %23, label %51, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @MPATHF_QUEUE_IF_NO_PATH, align 4
  %26 = load %struct.multipath*, %struct.multipath** %4, align 8
  %27 = getelementptr inbounds %struct.multipath, %struct.multipath* %26, i32 0, i32 3
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.multipath*, %struct.multipath** %4, align 8
  %32 = getelementptr inbounds %struct.multipath, %struct.multipath* %31, i32 0, i32 1
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.multipath*, %struct.multipath** %4, align 8
  %36 = getelementptr inbounds %struct.multipath, %struct.multipath* %35, i32 0, i32 2
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = call i32 @bio_list_add(i32* %36, %struct.bio* %37)
  %39 = load %struct.multipath*, %struct.multipath** %4, align 8
  %40 = getelementptr inbounds %struct.multipath, %struct.multipath* %39, i32 0, i32 1
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* @kmultipathd, align 4
  %44 = load %struct.multipath*, %struct.multipath** %4, align 8
  %45 = getelementptr inbounds %struct.multipath, %struct.multipath* %44, i32 0, i32 0
  %46 = call i32 @queue_work(i32 %43, i32* %45)
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.pgpath* @ERR_PTR(i32 %48)
  store %struct.pgpath* %49, %struct.pgpath** %3, align 8
  br label %53

50:                                               ; preds = %24
  store %struct.pgpath* null, %struct.pgpath** %3, align 8
  br label %53

51:                                               ; preds = %21
  %52 = load %struct.pgpath*, %struct.pgpath** %6, align 8
  store %struct.pgpath* %52, %struct.pgpath** %3, align 8
  br label %53

53:                                               ; preds = %51, %50, %30
  %54 = load %struct.pgpath*, %struct.pgpath** %3, align 8
  ret %struct.pgpath* %54
}

declare dso_local %struct.pgpath* @READ_ONCE(i32) #1

declare dso_local %struct.pgpath* @choose_pgpath(%struct.multipath*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local %struct.pgpath* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
