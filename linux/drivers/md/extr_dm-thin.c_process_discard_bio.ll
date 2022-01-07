; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_discard_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_discard_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.thin_c*, %struct.dm_bio_prison_cell*)* }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio = type { i32 }
%struct.dm_cell_key = type { i32 }

@VIRTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.bio*)* @process_discard_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_discard_bio(%struct.thin_c* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dm_cell_key, align 4
  %8 = alloca %struct.dm_bio_prison_cell*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %9 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = call i32 @get_bio_block_range(%struct.thin_c* %9, %struct.bio* %10, i64* %5, i64* %6)
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = call i32 @bio_endio(%struct.bio* %16)
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %20 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VIRTUAL, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @build_key(i32 %21, i32 %22, i64 %23, i64 %24, %struct.dm_cell_key* %7)
  %26 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %27 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = call i64 @bio_detain(%struct.TYPE_2__* %28, %struct.dm_cell_key* %7, %struct.bio* %29, %struct.dm_bio_prison_cell** %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %42

33:                                               ; preds = %18
  %34 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %35 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.thin_c*, %struct.dm_bio_prison_cell*)*, i32 (%struct.thin_c*, %struct.dm_bio_prison_cell*)** %37, align 8
  %39 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %40 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %8, align 8
  %41 = call i32 %38(%struct.thin_c* %39, %struct.dm_bio_prison_cell* %40)
  br label %42

42:                                               ; preds = %33, %32, %15
  ret void
}

declare dso_local i32 @get_bio_block_range(%struct.thin_c*, %struct.bio*, i64*, i64*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @build_key(i32, i32, i64, i64, %struct.dm_cell_key*) #1

declare dso_local i64 @bio_detain(%struct.TYPE_2__*, %struct.dm_cell_key*, %struct.bio*, %struct.dm_bio_prison_cell**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
