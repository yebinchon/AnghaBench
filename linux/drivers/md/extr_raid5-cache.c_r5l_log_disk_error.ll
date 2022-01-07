; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_log_disk_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_log_disk_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.r5l_log = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MD_HAS_JOURNAL = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r5l_log_disk_error(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.r5conf*, align 8
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %7 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.r5l_log* @rcu_dereference(i32 %8)
  store %struct.r5l_log* %9, %struct.r5l_log** %3, align 8
  %10 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %11 = icmp ne %struct.r5l_log* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @MD_HAS_JOURNAL, align 4
  %14 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %15 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %13, i32* %17)
  store i32 %18, i32* %4, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @Faulty, align 4
  %21 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %22 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %20, i32* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %19, %12
  %27 = call i32 (...) @rcu_read_unlock()
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.r5l_log* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
