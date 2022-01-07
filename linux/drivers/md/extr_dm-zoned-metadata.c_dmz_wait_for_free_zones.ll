; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_wait_for_free_zones.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_wait_for_free_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_metadata*)* @dmz_wait_for_free_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_wait_for_free_zones(%struct.dmz_metadata* %0) #0 {
  %2 = alloca %struct.dmz_metadata*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %2, align 8
  %3 = load i32, i32* @wait, align 4
  %4 = call i32 @DEFINE_WAIT(i32 %3)
  %5 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %6 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %5, i32 0, i32 0
  %7 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %8 = call i32 @prepare_to_wait(i32* %6, i32* @wait, i32 %7)
  %9 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %10 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %9)
  %11 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %12 = call i32 @dmz_unlock_metadata(%struct.dmz_metadata* %11)
  %13 = load i32, i32* @HZ, align 4
  %14 = call i32 @io_schedule_timeout(i32 %13)
  %15 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %16 = call i32 @dmz_lock_metadata(%struct.dmz_metadata* %15)
  %17 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %18 = call i32 @dmz_lock_map(%struct.dmz_metadata* %17)
  %19 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %20 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %19, i32 0, i32 0
  %21 = call i32 @finish_wait(i32* %20, i32* @wait)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_unlock_metadata(%struct.dmz_metadata*) #1

declare dso_local i32 @io_schedule_timeout(i32) #1

declare dso_local i32 @dmz_lock_metadata(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_lock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
