; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dmz_target* }
%struct.dmz_target = type { i32, i32, i32 }

@DMZ_FLUSH_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @dmz_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_resume(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dmz_target*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.dmz_target*, %struct.dmz_target** %5, align 8
  store %struct.dmz_target* %6, %struct.dmz_target** %3, align 8
  %7 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %8 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %11 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %10, i32 0, i32 1
  %12 = load i32, i32* @DMZ_FLUSH_PERIOD, align 4
  %13 = call i32 @queue_delayed_work(i32 %9, i32* %11, i32 %12)
  %14 = load %struct.dmz_target*, %struct.dmz_target** %3, align 8
  %15 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dmz_resume_reclaim(i32 %16)
  ret void
}

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @dmz_resume_reclaim(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
