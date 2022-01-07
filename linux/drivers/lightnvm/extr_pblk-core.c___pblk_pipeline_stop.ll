; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_pipeline_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_pipeline_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32, i32*, i32* }

@PBLK_STATE_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__pblk_pipeline_stop(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  %3 = alloca %struct.pblk_line_mgmt*, align 8
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %4 = load %struct.pblk*, %struct.pblk** %2, align 8
  %5 = getelementptr inbounds %struct.pblk, %struct.pblk* %4, i32 0, i32 1
  store %struct.pblk_line_mgmt* %5, %struct.pblk_line_mgmt** %3, align 8
  %6 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %7 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load i32, i32* @PBLK_STATE_STOPPED, align 4
  %10 = load %struct.pblk*, %struct.pblk** %2, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.pblk*, %struct.pblk** %2, align 8
  %13 = call i32 @pblk_disk_name(%struct.pblk* %12)
  %14 = load %struct.pblk*, %struct.pblk** %2, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @trace_pblk_state(i32 %13, i32 %16)
  %18 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %19 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %21 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %23 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_pblk_state(i32, i32) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
