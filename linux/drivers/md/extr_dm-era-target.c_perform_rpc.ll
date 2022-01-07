; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_perform_rpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_perform_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.era = type { i32, i32 }
%struct.rpc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.era*, %struct.rpc*)* @perform_rpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_rpc(%struct.era* %0, %struct.rpc* %1) #0 {
  %3 = alloca %struct.era*, align 8
  %4 = alloca %struct.rpc*, align 8
  store %struct.era* %0, %struct.era** %3, align 8
  store %struct.rpc* %1, %struct.rpc** %4, align 8
  %5 = load %struct.rpc*, %struct.rpc** %4, align 8
  %6 = getelementptr inbounds %struct.rpc, %struct.rpc* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.rpc*, %struct.rpc** %4, align 8
  %8 = getelementptr inbounds %struct.rpc, %struct.rpc* %7, i32 0, i32 1
  %9 = call i32 @init_completion(i32* %8)
  %10 = load %struct.era*, %struct.era** %3, align 8
  %11 = getelementptr inbounds %struct.era, %struct.era* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.rpc*, %struct.rpc** %4, align 8
  %14 = getelementptr inbounds %struct.rpc, %struct.rpc* %13, i32 0, i32 2
  %15 = load %struct.era*, %struct.era** %3, align 8
  %16 = getelementptr inbounds %struct.era, %struct.era* %15, i32 0, i32 1
  %17 = call i32 @list_add(i32* %14, i32* %16)
  %18 = load %struct.era*, %struct.era** %3, align 8
  %19 = getelementptr inbounds %struct.era, %struct.era* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.era*, %struct.era** %3, align 8
  %22 = call i32 @wake_worker(%struct.era* %21)
  %23 = load %struct.rpc*, %struct.rpc** %4, align 8
  %24 = getelementptr inbounds %struct.rpc, %struct.rpc* %23, i32 0, i32 1
  %25 = call i32 @wait_for_completion(i32* %24)
  %26 = load %struct.rpc*, %struct.rpc** %4, align 8
  %27 = getelementptr inbounds %struct.rpc, %struct.rpc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  ret i32 %28
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_worker(%struct.era*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
