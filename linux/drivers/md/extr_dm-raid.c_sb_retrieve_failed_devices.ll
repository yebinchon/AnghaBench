; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_sb_retrieve_failed_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_sb_retrieve_failed_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_raid_superblock = type { i32*, i32, i32 }

@FEATURE_FLAG_SUPPORTS_V190 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_raid_superblock*, i32*)* @sb_retrieve_failed_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_retrieve_failed_devices(%struct.dm_raid_superblock* %0, i32* %1) #0 {
  %3 = alloca %struct.dm_raid_superblock*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_raid_superblock* %0, %struct.dm_raid_superblock** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %3, align 8
  %7 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le64_to_cpu(i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %9, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = call i32 @memset(i32* %13, i32 0, i32 8)
  %15 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %3, align 8
  %16 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load i32, i32* @FEATURE_FLAG_SUPPORTS_V190, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %3, align 8
  %24 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %31, %22
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %3, align 8
  %33 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le64_to_cpu(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  br label %27

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %2
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
