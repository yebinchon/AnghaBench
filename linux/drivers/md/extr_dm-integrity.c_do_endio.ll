; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_do_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_do_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i64 }

@REQ_OP_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, %struct.bio*)* @do_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_endio(%struct.dm_integrity_c* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_integrity_c*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %8 = call i32 @dm_integrity_failed(%struct.dm_integrity_c* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @errno_to_blk_status(i32 %18)
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %17, %12, %2
  %23 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %24 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = call i64 @bio_op(%struct.bio* %29)
  %31 = load i64, i64* @REQ_OP_WRITE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %35 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %40 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %39, i32 0, i32 4
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = call i32 @bio_list_add(i32* %40, %struct.bio* %41)
  %43 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %44 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %47 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %46, i32 0, i32 2
  %48 = call i32 @queue_delayed_work(i32 %45, i32* %47, i32 0)
  %49 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %50 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %57

54:                                               ; preds = %28, %22
  %55 = load %struct.bio*, %struct.bio** %4, align 8
  %56 = call i32 @bio_endio(%struct.bio* %55)
  br label %57

57:                                               ; preds = %54, %33
  ret void
}

declare dso_local i32 @dm_integrity_failed(%struct.dm_integrity_c*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @errno_to_blk_status(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
