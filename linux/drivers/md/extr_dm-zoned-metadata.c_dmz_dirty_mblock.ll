; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_dirty_mblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_dirty_mblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i32 }
%struct.dmz_mblock = type { i32, i32 }

@DMZ_META_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_metadata*, %struct.dmz_mblock*)* @dmz_dirty_mblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_dirty_mblock(%struct.dmz_metadata* %0, %struct.dmz_mblock* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dmz_mblock*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dmz_mblock* %1, %struct.dmz_mblock** %4, align 8
  %5 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %6 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load i32, i32* @DMZ_META_DIRTY, align 4
  %9 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %10 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %9, i32 0, i32 1
  %11 = call i32 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.dmz_mblock*, %struct.dmz_mblock** %4, align 8
  %15 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %14, i32 0, i32 0
  %16 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %17 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %16, i32 0, i32 1
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %21 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
