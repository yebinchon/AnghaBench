; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_flush_pending_writes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_flush_pending_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.blk_plug = type { i32 }
%struct.bio = type { %struct.TYPE_5__*, %struct.bio* }
%struct.TYPE_5__ = type { i32 }
%struct.md_rdev = type { i32, i32 }

@TASK_RUNNING = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*)* @flush_pending_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_pending_writes(%struct.r10conf* %0) #0 {
  %2 = alloca %struct.r10conf*, align 8
  %3 = alloca %struct.blk_plug, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.md_rdev*, align 8
  store %struct.r10conf* %0, %struct.r10conf** %2, align 8
  %7 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %8 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %11 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %93

15:                                               ; preds = %1
  %16 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %17 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %16, i32 0, i32 4
  %18 = call %struct.bio* @bio_list_get(%struct.TYPE_6__* %17)
  store %struct.bio* %18, %struct.bio** %4, align 8
  %19 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %20 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %22 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load i32, i32* @TASK_RUNNING, align 4
  %25 = call i32 @__set_current_state(i32 %24)
  %26 = call i32 @blk_start_plug(%struct.blk_plug* %3)
  %27 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %28 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @md_bitmap_unplug(i32 %31)
  %33 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %34 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %33, i32 0, i32 1
  %35 = call i32 @wake_up(i32* %34)
  br label %36

36:                                               ; preds = %89, %15
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  %38 = icmp ne %struct.bio* %37, null
  br i1 %38, label %39, label %91

39:                                               ; preds = %36
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 1
  %42 = load %struct.bio*, %struct.bio** %41, align 8
  store %struct.bio* %42, %struct.bio** %5, align 8
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = bitcast %struct.TYPE_5__* %45 to i8*
  %47 = bitcast i8* %46 to %struct.md_rdev*
  store %struct.md_rdev* %47, %struct.md_rdev** %6, align 8
  %48 = load %struct.bio*, %struct.bio** %4, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %49, align 8
  %50 = load %struct.bio*, %struct.bio** %4, align 8
  %51 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bio_set_dev(%struct.bio* %50, i32 %53)
  %55 = load i32, i32* @Faulty, align 4
  %56 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %57 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %56, i32 0, i32 0
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %39
  %61 = load %struct.bio*, %struct.bio** %4, align 8
  %62 = call i32 @bio_io_error(%struct.bio* %61)
  br label %89

63:                                               ; preds = %39
  %64 = load %struct.bio*, %struct.bio** %4, align 8
  %65 = call i64 @bio_op(%struct.bio* %64)
  %66 = load i64, i64* @REQ_OP_DISCARD, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.bio*, %struct.bio** %4, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @blk_queue_discard(i32 %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %68, %63
  %78 = phi i1 [ false, %63 ], [ %76, %68 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.bio*, %struct.bio** %4, align 8
  %84 = call i32 @bio_endio(%struct.bio* %83)
  br label %88

85:                                               ; preds = %77
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = call i32 @generic_make_request(%struct.bio* %86)
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %60
  %90 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %90, %struct.bio** %4, align 8
  br label %36

91:                                               ; preds = %36
  %92 = call i32 @blk_finish_plug(%struct.blk_plug* %3)
  br label %97

93:                                               ; preds = %1
  %94 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %95 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_irq(i32* %95)
  br label %97

97:                                               ; preds = %93, %91
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.bio* @bio_list_get(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @md_bitmap_unplug(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @blk_queue_discard(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
