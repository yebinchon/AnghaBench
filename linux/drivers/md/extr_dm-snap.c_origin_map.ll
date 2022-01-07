; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_origin_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_origin_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_origin* }
%struct.dm_origin = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @origin_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @origin_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dm_origin*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.dm_origin*, %struct.dm_origin** %9, align 8
  store %struct.dm_origin* %10, %struct.dm_origin** %6, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = load %struct.dm_origin*, %struct.dm_origin** %6, align 8
  %13 = getelementptr inbounds %struct.dm_origin, %struct.dm_origin* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bio_set_dev(%struct.bio* %11, i32 %16)
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @REQ_PREFLUSH, align 4
  %22 = and i32 %20, %21
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %26, i32* %3, align 4
  br label %63

27:                                               ; preds = %2
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = call i64 @bio_data_dir(%struct.bio* %28)
  %30 = load i64, i64* @WRITE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %27
  %35 = load %struct.dm_origin*, %struct.dm_origin** %6, align 8
  %36 = getelementptr inbounds %struct.dm_origin, %struct.dm_origin* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.dm_origin*, %struct.dm_origin** %6, align 8
  %44 = getelementptr inbounds %struct.dm_origin, %struct.dm_origin* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub i32 %45, 1
  %47 = and i32 %42, %46
  %48 = sub i32 %37, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = call i32 @bio_sectors(%struct.bio* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %34
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dm_accept_partial_bio(%struct.bio* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %34
  %58 = load %struct.dm_origin*, %struct.dm_origin** %6, align 8
  %59 = getelementptr inbounds %struct.dm_origin, %struct.dm_origin* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = call i32 @do_origin(%struct.TYPE_4__* %60, %struct.bio* %61, i32 1)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %32, %25
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @dm_accept_partial_bio(%struct.bio*, i32) #1

declare dso_local i32 @do_origin(%struct.TYPE_4__*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
