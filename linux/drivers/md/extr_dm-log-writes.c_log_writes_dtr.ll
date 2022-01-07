; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.log_writes_c* }
%struct.log_writes_c = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"dm-log-writes-end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @log_writes_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_writes_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.log_writes_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.log_writes_c*, %struct.log_writes_c** %5, align 8
  store %struct.log_writes_c* %6, %struct.log_writes_c** %3, align 8
  %7 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %8 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %7, i32 0, i32 8
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %11 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %10, i32 0, i32 2
  %12 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %13 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %12, i32 0, i32 3
  %14 = call i32 @list_splice_init(i32* %11, i32* %13)
  %15 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %16 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %15, i32 0, i32 8
  %17 = call i32 @spin_unlock_irq(i32* %16)
  %18 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %19 = call i32 @log_mark(%struct.log_writes_c* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %21 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wake_up_process(i32 %22)
  %24 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %25 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %28 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %27, i32 0, i32 6
  %29 = call i32 @atomic_read(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  %32 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %33 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %32, i32 0, i32 5
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %1
  %38 = phi i1 [ false, %1 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event(i32 %26, i32 %39)
  %41 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %42 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kthread_stop(i32 %43)
  %45 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %46 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %45, i32 0, i32 3
  %47 = call i32 @list_empty(i32* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %53 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %52, i32 0, i32 2
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %60 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %61 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dm_put_device(%struct.dm_target* %59, i32 %62)
  %64 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %65 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %66 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dm_put_device(%struct.dm_target* %64, i32 %67)
  %69 = load %struct.log_writes_c*, %struct.log_writes_c** %3, align 8
  %70 = call i32 @kfree(%struct.log_writes_c* %69)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @log_mark(%struct.log_writes_c*, i8*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i32) #1

declare dso_local i32 @kfree(%struct.log_writes_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
