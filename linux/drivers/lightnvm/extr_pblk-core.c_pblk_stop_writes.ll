; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_stop_writes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_stop_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pblk_line = type { i32 }

@PBLK_STATE_STOPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.pblk_line*)* @pblk_stop_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_stop_writes(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %5 = load %struct.pblk*, %struct.pblk** %3, align 8
  %6 = getelementptr inbounds %struct.pblk, %struct.pblk* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.pblk*, %struct.pblk** %3, align 8
  %10 = call i32 @pblk_set_space_limit(%struct.pblk* %9)
  %11 = load i32, i32* @PBLK_STATE_STOPPING, align 4
  %12 = load %struct.pblk*, %struct.pblk** %3, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.pblk*, %struct.pblk** %3, align 8
  %15 = call i32 @pblk_disk_name(%struct.pblk* %14)
  %16 = load %struct.pblk*, %struct.pblk** %3, align 8
  %17 = getelementptr inbounds %struct.pblk, %struct.pblk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace_pblk_state(i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @pblk_set_space_limit(%struct.pblk*) #1

declare dso_local i32 @trace_pblk_state(i32, i32) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
