; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_queue_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_queue_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dm_target = type { i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@sector_t = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, %struct.dm_target*, %struct.bio**)* @dm_queue_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_queue_split(%struct.mapped_device* %0, %struct.dm_target* %1, %struct.bio** %2) #0 {
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %4, align 8
  store %struct.dm_target* %1, %struct.dm_target** %5, align 8
  store %struct.bio** %2, %struct.bio*** %6, align 8
  %10 = load %struct.bio**, %struct.bio*** %6, align 8
  %11 = load %struct.bio*, %struct.bio** %10, align 8
  %12 = call i32 @bio_sectors(%struct.bio* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @sector_t, align 4
  %14 = load %struct.bio**, %struct.bio*** %6, align 8
  %15 = load %struct.bio*, %struct.bio** %14, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %20 = call i32 @max_io_len(i32 %18, %struct.dm_target* %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @min_t(i32 %13, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %3
  %27 = load %struct.bio**, %struct.bio*** %6, align 8
  %28 = load %struct.bio*, %struct.bio** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GFP_NOIO, align 4
  %31 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %32 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call %struct.bio* @bio_split(%struct.bio* %28, i32 %29, i32 %30, i32* %34)
  store %struct.bio* %35, %struct.bio** %9, align 8
  %36 = load %struct.bio*, %struct.bio** %9, align 8
  %37 = load %struct.bio**, %struct.bio*** %6, align 8
  %38 = load %struct.bio*, %struct.bio** %37, align 8
  %39 = call i32 @bio_chain(%struct.bio* %36, %struct.bio* %38)
  %40 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %41 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.bio*, %struct.bio** %9, align 8
  %44 = load %struct.bio**, %struct.bio*** %6, align 8
  %45 = load %struct.bio*, %struct.bio** %44, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @trace_block_split(%struct.TYPE_4__* %42, %struct.bio* %43, i32 %48)
  %50 = load %struct.bio**, %struct.bio*** %6, align 8
  %51 = load %struct.bio*, %struct.bio** %50, align 8
  %52 = call i32 @generic_make_request(%struct.bio* %51)
  %53 = load %struct.bio*, %struct.bio** %9, align 8
  %54 = load %struct.bio**, %struct.bio*** %6, align 8
  store %struct.bio* %53, %struct.bio** %54, align 8
  br label %55

55:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @max_io_len(i32, %struct.dm_target*) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i32, i32, i32*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @trace_block_split(%struct.TYPE_4__*, %struct.bio*, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
