; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_flush_multipath_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_flush_multipath_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i64, i32, i32, i32, i32, i64 }

@MPATHF_PG_INIT_DISABLED = common dso_local global i32 0, align 4
@kmpath_handlerd = common dso_local global i32 0, align 4
@DM_TYPE_BIO_BASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.multipath*)* @flush_multipath_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_multipath_work(%struct.multipath* %0) #0 {
  %2 = alloca %struct.multipath*, align 8
  store %struct.multipath* %0, %struct.multipath** %2, align 8
  %3 = load %struct.multipath*, %struct.multipath** %2, align 8
  %4 = getelementptr inbounds %struct.multipath, %struct.multipath* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load i32, i32* @MPATHF_PG_INIT_DISABLED, align 4
  %9 = load %struct.multipath*, %struct.multipath** %2, align 8
  %10 = getelementptr inbounds %struct.multipath, %struct.multipath* %9, i32 0, i32 3
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = call i32 (...) @smp_mb__after_atomic()
  %13 = load %struct.multipath*, %struct.multipath** %2, align 8
  %14 = getelementptr inbounds %struct.multipath, %struct.multipath* %13, i32 0, i32 4
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = load i32, i32* @kmpath_handlerd, align 4
  %19 = call i32 @flush_workqueue(i32 %18)
  br label %20

20:                                               ; preds = %17, %7
  %21 = load %struct.multipath*, %struct.multipath** %2, align 8
  %22 = call i32 @multipath_wait_for_pg_init_completion(%struct.multipath* %21)
  %23 = load i32, i32* @MPATHF_PG_INIT_DISABLED, align 4
  %24 = load %struct.multipath*, %struct.multipath** %2, align 8
  %25 = getelementptr inbounds %struct.multipath, %struct.multipath* %24, i32 0, i32 3
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = call i32 (...) @smp_mb__after_atomic()
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.multipath*, %struct.multipath** %2, align 8
  %30 = getelementptr inbounds %struct.multipath, %struct.multipath* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DM_TYPE_BIO_BASED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.multipath*, %struct.multipath** %2, align 8
  %36 = getelementptr inbounds %struct.multipath, %struct.multipath* %35, i32 0, i32 2
  %37 = call i32 @flush_work(i32* %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.multipath*, %struct.multipath** %2, align 8
  %40 = getelementptr inbounds %struct.multipath, %struct.multipath* %39, i32 0, i32 1
  %41 = call i32 @flush_work(i32* %40)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @multipath_wait_for_pg_init_completion(%struct.multipath*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
