; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-round-robin.c_rr_fail_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-round-robin.c_rr_fail_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector = type { %struct.selector* }
%struct.selector = type { i32, i32 }
%struct.dm_path = type { %struct.path_info* }
%struct.path_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path_selector*, %struct.dm_path*)* @rr_fail_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rr_fail_path(%struct.path_selector* %0, %struct.dm_path* %1) #0 {
  %3 = alloca %struct.path_selector*, align 8
  %4 = alloca %struct.dm_path*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.selector*, align 8
  %7 = alloca %struct.path_info*, align 8
  store %struct.path_selector* %0, %struct.path_selector** %3, align 8
  store %struct.dm_path* %1, %struct.dm_path** %4, align 8
  %8 = load %struct.path_selector*, %struct.path_selector** %3, align 8
  %9 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %8, i32 0, i32 0
  %10 = load %struct.selector*, %struct.selector** %9, align 8
  store %struct.selector* %10, %struct.selector** %6, align 8
  %11 = load %struct.dm_path*, %struct.dm_path** %4, align 8
  %12 = getelementptr inbounds %struct.dm_path, %struct.dm_path* %11, i32 0, i32 0
  %13 = load %struct.path_info*, %struct.path_info** %12, align 8
  store %struct.path_info* %13, %struct.path_info** %7, align 8
  %14 = load %struct.selector*, %struct.selector** %6, align 8
  %15 = getelementptr inbounds %struct.selector, %struct.selector* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.path_info*, %struct.path_info** %7, align 8
  %19 = getelementptr inbounds %struct.path_info, %struct.path_info* %18, i32 0, i32 0
  %20 = load %struct.selector*, %struct.selector** %6, align 8
  %21 = getelementptr inbounds %struct.selector, %struct.selector* %20, i32 0, i32 1
  %22 = call i32 @list_move(i32* %19, i32* %21)
  %23 = load %struct.selector*, %struct.selector** %6, align 8
  %24 = getelementptr inbounds %struct.selector, %struct.selector* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
