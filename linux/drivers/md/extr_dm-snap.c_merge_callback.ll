; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_merge_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_merge_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_4__*, i32)* }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Read error: shutting down merge.\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Write error: shutting down merge.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Write error in exception store: shutting down merge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @merge_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_callback(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dm_snapshot*, align 8
  %8 = alloca %struct.bio*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.dm_snapshot*
  store %struct.dm_snapshot* %10, %struct.dm_snapshot** %7, align 8
  store %struct.bio* null, %struct.bio** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13, %3
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @DMERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %23

21:                                               ; preds = %16
  %22 = call i32 @DMERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %19
  br label %50

24:                                               ; preds = %13
  %25 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %26 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64 (%struct.TYPE_4__*, i32)*, i64 (%struct.TYPE_4__*, i32)** %30, align 8
  %32 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %33 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %36 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 %31(%struct.TYPE_4__* %34, i32 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = call i32 @DMERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %50

42:                                               ; preds = %24
  %43 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %44 = call i64 @remove_single_exception_chunk(%struct.dm_snapshot* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %50

47:                                               ; preds = %42
  %48 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %49 = call i32 @snapshot_merge_next_chunks(%struct.dm_snapshot* %48)
  br label %65

50:                                               ; preds = %46, %40, %23
  %51 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %52 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %51, i32 0, i32 1
  %53 = call i32 @down_write(i32* %52)
  %54 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %55 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %57 = call %struct.bio* @__release_queued_bios_after_merge(%struct.dm_snapshot* %56)
  store %struct.bio* %57, %struct.bio** %8, align 8
  %58 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %59 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %58, i32 0, i32 1
  %60 = call i32 @up_write(i32* %59)
  %61 = load %struct.bio*, %struct.bio** %8, align 8
  %62 = call i32 @error_bios(%struct.bio* %61)
  %63 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %64 = call i32 @merge_shutdown(%struct.dm_snapshot* %63)
  br label %65

65:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i64 @remove_single_exception_chunk(%struct.dm_snapshot*) #1

declare dso_local i32 @snapshot_merge_next_chunks(%struct.dm_snapshot*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.bio* @__release_queued_bios_after_merge(%struct.dm_snapshot*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @error_bios(%struct.bio*) #1

declare dso_local i32 @merge_shutdown(%struct.dm_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
