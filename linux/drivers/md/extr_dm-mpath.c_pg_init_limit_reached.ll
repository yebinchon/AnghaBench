; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_pg_init_limit_reached.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_pg_init_limit_reached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i64, i32, i32, i32 }
%struct.pgpath = type { i32 }

@MPATHF_PG_INIT_DISABLED = common dso_local global i32 0, align 4
@MPATHF_PG_INIT_REQUIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.multipath*, %struct.pgpath*)* @pg_init_limit_reached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_init_limit_reached(%struct.multipath* %0, %struct.pgpath* %1) #0 {
  %3 = alloca %struct.multipath*, align 8
  %4 = alloca %struct.pgpath*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.multipath* %0, %struct.multipath** %3, align 8
  store %struct.pgpath* %1, %struct.pgpath** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.multipath*, %struct.multipath** %3, align 8
  %8 = getelementptr inbounds %struct.multipath, %struct.multipath* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.multipath*, %struct.multipath** %3, align 8
  %12 = getelementptr inbounds %struct.multipath, %struct.multipath* %11, i32 0, i32 3
  %13 = call i64 @atomic_read(i32* %12)
  %14 = load %struct.multipath*, %struct.multipath** %3, align 8
  %15 = getelementptr inbounds %struct.multipath, %struct.multipath* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i32, i32* @MPATHF_PG_INIT_DISABLED, align 4
  %20 = load %struct.multipath*, %struct.multipath** %3, align 8
  %21 = getelementptr inbounds %struct.multipath, %struct.multipath* %20, i32 0, i32 2
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @MPATHF_PG_INIT_REQUIRED, align 4
  %26 = load %struct.multipath*, %struct.multipath** %3, align 8
  %27 = getelementptr inbounds %struct.multipath, %struct.multipath* %26, i32 0, i32 2
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  br label %30

29:                                               ; preds = %18, %2
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct.multipath*, %struct.multipath** %3, align 8
  %32 = getelementptr inbounds %struct.multipath, %struct.multipath* %31, i32 0, i32 1
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
