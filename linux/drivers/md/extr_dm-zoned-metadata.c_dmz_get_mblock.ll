; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_mblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_mblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_mblock = type { i32 }
%struct.dmz_metadata = type { i32 }

@DMZ_META_READING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@DMZ_META_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmz_mblock* (%struct.dmz_metadata*, i32)* @dmz_get_mblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmz_mblock* @dmz_get_mblock(%struct.dmz_metadata* %0, i32 %1) #0 {
  %3 = alloca %struct.dmz_mblock*, align 8
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmz_mblock*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %8 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.dmz_mblock* @dmz_get_mblock_fast(%struct.dmz_metadata* %10, i32 %11)
  store %struct.dmz_mblock* %12, %struct.dmz_mblock** %6, align 8
  %13 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %14 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock(i32* %14)
  %16 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %17 = icmp ne %struct.dmz_mblock* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.dmz_mblock* @dmz_get_mblock_slow(%struct.dmz_metadata* %19, i32 %20)
  store %struct.dmz_mblock* %21, %struct.dmz_mblock** %6, align 8
  %22 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %23 = call i64 @IS_ERR(%struct.dmz_mblock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  store %struct.dmz_mblock* %26, %struct.dmz_mblock** %3, align 8
  br label %48

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %30 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %29, i32 0, i32 0
  %31 = load i32, i32* @DMZ_META_READING, align 4
  %32 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %33 = call i32 @wait_on_bit_io(i32* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @DMZ_META_ERROR, align 4
  %35 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %36 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %41 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %42 = call i32 @dmz_release_mblock(%struct.dmz_metadata* %40, %struct.dmz_mblock* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.dmz_mblock* @ERR_PTR(i32 %44)
  store %struct.dmz_mblock* %45, %struct.dmz_mblock** %3, align 8
  br label %48

46:                                               ; preds = %28
  %47 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  store %struct.dmz_mblock* %47, %struct.dmz_mblock** %3, align 8
  br label %48

48:                                               ; preds = %46, %39, %25
  %49 = load %struct.dmz_mblock*, %struct.dmz_mblock** %3, align 8
  ret %struct.dmz_mblock* %49
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dmz_mblock* @dmz_get_mblock_fast(%struct.dmz_metadata*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dmz_mblock* @dmz_get_mblock_slow(%struct.dmz_metadata*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @wait_on_bit_io(i32*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dmz_release_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

declare dso_local %struct.dmz_mblock* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
