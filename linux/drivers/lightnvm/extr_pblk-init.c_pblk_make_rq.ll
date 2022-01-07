; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_make_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_make_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.pblk* }
%struct.pblk = type { i32 }
%struct.bio = type { i32 }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@PBLK_IOTYPE_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @pblk_make_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_make_rq(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.pblk*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load %struct.pblk*, %struct.pblk** %8, align 8
  store %struct.pblk* %9, %struct.pblk** %6, align 8
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = call i64 @bio_op(%struct.bio* %10)
  %12 = load i64, i64* @REQ_OP_DISCARD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.pblk*, %struct.pblk** %6, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = call i32 @pblk_discard(%struct.pblk* %15, %struct.bio* %16)
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @REQ_PREFLUSH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @bio_endio(%struct.bio* %25)
  %27 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = call i64 @bio_data_dir(%struct.bio* %30)
  %32 = load i64, i64* @READ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %36 = call i32 @blk_queue_split(%struct.request_queue* %35, %struct.bio** %5)
  %37 = load %struct.pblk*, %struct.pblk** %6, align 8
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = call i32 @pblk_submit_read(%struct.pblk* %37, %struct.bio* %38)
  br label %55

40:                                               ; preds = %29
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = call i64 @pblk_get_secs(%struct.bio* %41)
  %43 = load %struct.pblk*, %struct.pblk** %6, align 8
  %44 = getelementptr inbounds %struct.pblk, %struct.pblk* %43, i32 0, i32 0
  %45 = call i64 @pblk_rl_max_io(i32* %44)
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %49 = call i32 @blk_queue_split(%struct.request_queue* %48, %struct.bio** %5)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.pblk*, %struct.pblk** %6, align 8
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = load i32, i32* @PBLK_IOTYPE_USER, align 4
  %54 = call i32 @pblk_write_to_cache(%struct.pblk* %51, %struct.bio* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %34
  %56 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %24
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @pblk_discard(%struct.pblk*, %struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @blk_queue_split(%struct.request_queue*, %struct.bio**) #1

declare dso_local i32 @pblk_submit_read(%struct.pblk*, %struct.bio*) #1

declare dso_local i64 @pblk_get_secs(%struct.bio*) #1

declare dso_local i64 @pblk_rl_max_io(i32*) #1

declare dso_local i32 @pblk_write_to_cache(%struct.pblk*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
