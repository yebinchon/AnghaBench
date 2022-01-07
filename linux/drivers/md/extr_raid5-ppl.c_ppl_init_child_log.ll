; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_init_child_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_init_child_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppl_log = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.md_rdev = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.request_queue = type { i32 }

@PPL_SPACE_SIZE = common dso_local global i32 0, align 4
@PPL_HEADER_SIZE = common dso_local global i32 0, align 4
@MD_HAS_MULTIPLE_PPLS = common dso_local global i32 0, align 4
@QUEUE_FLAG_WC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppl_log*, %struct.md_rdev*)* @ppl_init_child_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppl_init_child_log(%struct.ppl_log* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.ppl_log*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.request_queue*, align 8
  store %struct.ppl_log* %0, %struct.ppl_log** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %6 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %7 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 9
  %11 = load i32, i32* @PPL_SPACE_SIZE, align 4
  %12 = load i32, i32* @PPL_HEADER_SIZE, align 4
  %13 = add nsw i32 %11, %12
  %14 = mul nsw i32 %13, 2
  %15 = icmp sge i32 %10, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.ppl_log*, %struct.ppl_log** %3, align 8
  %18 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @MD_HAS_MULTIPLE_PPLS, align 4
  %20 = load %struct.ppl_log*, %struct.ppl_log** %3, align 8
  %21 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %20, i32 0, i32 5
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %19, i32* %25)
  %27 = load i32, i32* @PPL_SPACE_SIZE, align 4
  %28 = load %struct.ppl_log*, %struct.ppl_log** %3, align 8
  %29 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %44

30:                                               ; preds = %2
  %31 = load %struct.ppl_log*, %struct.ppl_log** %3, align 8
  %32 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.ppl_log*, %struct.ppl_log** %3, align 8
  %34 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %33, i32 0, i32 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 9
  %40 = load i32, i32* @PPL_HEADER_SIZE, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load %struct.ppl_log*, %struct.ppl_log** %3, align 8
  %43 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %16
  %45 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %46 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ppl_log*, %struct.ppl_log** %3, align 8
  %50 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.request_queue* @bdev_get_queue(i32 %53)
  store %struct.request_queue* %54, %struct.request_queue** %5, align 8
  %55 = load i32, i32* @QUEUE_FLAG_WC, align 4
  %56 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %57 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %56, i32 0, i32 0
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load %struct.ppl_log*, %struct.ppl_log** %3, align 8
  %62 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %44
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
