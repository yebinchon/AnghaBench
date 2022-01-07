; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_writecache* }
%struct.dm_writecache = type { i32*, i32* }
%struct.bio = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i32*)* @writecache_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writecache_end_io(%struct.dm_target* %0, %struct.bio* %1, i32* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dm_writecache*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 0
  %11 = load %struct.dm_writecache*, %struct.dm_writecache** %10, align 8
  store %struct.dm_writecache* %11, %struct.dm_writecache** %7, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = call i32 @bio_data_dir(%struct.bio* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %20 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i64 @atomic_dec_and_test(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %16
  %28 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %29 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @waitqueue_active(i32* %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %39 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @wake_up(i32* %43)
  br label %45

45:                                               ; preds = %37, %27
  br label %46

46:                                               ; preds = %45, %16
  br label %47

47:                                               ; preds = %46, %3
  ret i32 0
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
