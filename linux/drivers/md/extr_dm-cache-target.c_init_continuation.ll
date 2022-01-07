; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_init_continuation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_init_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.continuation = type { i64, i32 }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.continuation*, void (%struct.work_struct*)*)* @init_continuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_continuation(%struct.continuation* %0, void (%struct.work_struct*)* %1) #0 {
  %3 = alloca %struct.continuation*, align 8
  %4 = alloca void (%struct.work_struct*)*, align 8
  store %struct.continuation* %0, %struct.continuation** %3, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %4, align 8
  %5 = load %struct.continuation*, %struct.continuation** %3, align 8
  %6 = getelementptr inbounds %struct.continuation, %struct.continuation* %5, i32 0, i32 1
  %7 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %4, align 8
  %8 = bitcast void (%struct.work_struct*)* %7 to void (%struct.work_struct.0*)*
  %9 = call i32 @INIT_WORK(i32* %6, void (%struct.work_struct.0*)* %8)
  %10 = load %struct.continuation*, %struct.continuation** %3, align 8
  %11 = getelementptr inbounds %struct.continuation, %struct.continuation* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
