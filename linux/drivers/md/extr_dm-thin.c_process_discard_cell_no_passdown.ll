; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_discard_cell_no_passdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_discard_cell_no_passdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i32 (%struct.dm_thin_new_mapping*)*, i32 }
%struct.dm_thin_new_mapping = type opaque
%struct.dm_bio_prison_cell = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dm_thin_new_mapping.0 = type { i32, i32, %struct.dm_bio_prison_cell*, i32, i32, %struct.thin_c* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.dm_bio_prison_cell*)* @process_discard_cell_no_passdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_discard_cell_no_passdown(%struct.thin_c* %0, %struct.dm_bio_prison_cell* %1) #0 {
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca %struct.dm_bio_prison_cell*, align 8
  %5 = alloca %struct.pool*, align 8
  %6 = alloca %struct.dm_thin_new_mapping.0*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %3, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %4, align 8
  %7 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %8 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %7, i32 0, i32 0
  %9 = load %struct.pool*, %struct.pool** %8, align 8
  store %struct.pool* %9, %struct.pool** %5, align 8
  %10 = load %struct.pool*, %struct.pool** %5, align 8
  %11 = call %struct.dm_thin_new_mapping.0* @get_next_mapping(%struct.pool* %10)
  store %struct.dm_thin_new_mapping.0* %11, %struct.dm_thin_new_mapping.0** %6, align 8
  %12 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %13 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %6, align 8
  %14 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %13, i32 0, i32 5
  store %struct.thin_c* %12, %struct.thin_c** %14, align 8
  %15 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %16 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %6, align 8
  %20 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %22 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %6, align 8
  %26 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %28 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %6, align 8
  %29 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %28, i32 0, i32 2
  store %struct.dm_bio_prison_cell* %27, %struct.dm_bio_prison_cell** %29, align 8
  %30 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %31 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %6, align 8
  %34 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pool*, %struct.pool** %5, align 8
  %36 = getelementptr inbounds %struct.pool, %struct.pool* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %6, align 8
  %39 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %38, i32 0, i32 0
  %40 = call i32 @dm_deferred_set_add_work(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %2
  %43 = load %struct.pool*, %struct.pool** %5, align 8
  %44 = getelementptr inbounds %struct.pool, %struct.pool* %43, i32 0, i32 0
  %45 = load i32 (%struct.dm_thin_new_mapping*)*, i32 (%struct.dm_thin_new_mapping*)** %44, align 8
  %46 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %6, align 8
  %47 = bitcast %struct.dm_thin_new_mapping.0* %46 to %struct.dm_thin_new_mapping*
  %48 = call i32 %45(%struct.dm_thin_new_mapping* %47)
  br label %49

49:                                               ; preds = %42, %2
  ret void
}

declare dso_local %struct.dm_thin_new_mapping.0* @get_next_mapping(%struct.pool*) #1

declare dso_local i32 @dm_deferred_set_add_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
