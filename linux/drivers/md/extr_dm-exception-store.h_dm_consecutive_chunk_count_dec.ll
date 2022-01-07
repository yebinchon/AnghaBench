; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-exception-store.h_dm_consecutive_chunk_count_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-exception-store.h_dm_consecutive_chunk_count_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception = type { i64 }

@DM_CHUNK_NUMBER_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_exception*)* @dm_consecutive_chunk_count_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_consecutive_chunk_count_dec(%struct.dm_exception* %0) #0 {
  %2 = alloca %struct.dm_exception*, align 8
  store %struct.dm_exception* %0, %struct.dm_exception** %2, align 8
  %3 = load %struct.dm_exception*, %struct.dm_exception** %2, align 8
  %4 = call i32 @dm_consecutive_chunk_count(%struct.dm_exception* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load i64, i64* @DM_CHUNK_NUMBER_BITS, align 8
  %10 = shl i64 1, %9
  %11 = load %struct.dm_exception*, %struct.dm_exception** %2, align 8
  %12 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %13, %10
  store i64 %14, i64* %12, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_consecutive_chunk_count(%struct.dm_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
