; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_put_io_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_put_io_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_writes_c = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.log_writes_c*)* @put_io_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_io_block(%struct.log_writes_c* %0) #0 {
  %2 = alloca %struct.log_writes_c*, align 8
  store %struct.log_writes_c* %0, %struct.log_writes_c** %2, align 8
  %3 = load %struct.log_writes_c*, %struct.log_writes_c** %2, align 8
  %4 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %3, i32 0, i32 1
  %5 = call i64 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = call i32 (...) @smp_mb__after_atomic()
  %9 = load %struct.log_writes_c*, %struct.log_writes_c** %2, align 8
  %10 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %9, i32 0, i32 0
  %11 = call i64 @waitqueue_active(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load %struct.log_writes_c*, %struct.log_writes_c** %2, align 8
  %15 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %14, i32 0, i32 0
  %16 = call i32 @wake_up(i32* %15)
  br label %17

17:                                               ; preds = %13, %7
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
