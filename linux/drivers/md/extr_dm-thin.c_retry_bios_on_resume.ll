; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_retry_bios_on_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_retry_bios_on_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio = type { i32 }
%struct.bio_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*, %struct.dm_bio_prison_cell*)* @retry_bios_on_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry_bios_on_resume(%struct.pool* %0, %struct.dm_bio_prison_cell* %1) #0 {
  %3 = alloca %struct.pool*, align 8
  %4 = alloca %struct.dm_bio_prison_cell*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio_list, align 4
  %7 = alloca i64, align 8
  store %struct.pool* %0, %struct.pool** %3, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %4, align 8
  %8 = load %struct.pool*, %struct.pool** %3, align 8
  %9 = call i64 @should_error_unserviceable_bio(%struct.pool* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.pool*, %struct.pool** %3, align 8
  %14 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @cell_error_with_code(%struct.pool* %13, %struct.dm_bio_prison_cell* %14, i64 %15)
  br label %28

17:                                               ; preds = %2
  %18 = call i32 @bio_list_init(%struct.bio_list* %6)
  %19 = load %struct.pool*, %struct.pool** %3, align 8
  %20 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %21 = call i32 @cell_release(%struct.pool* %19, %struct.dm_bio_prison_cell* %20, %struct.bio_list* %6)
  br label %22

22:                                               ; preds = %25, %17
  %23 = call %struct.bio* @bio_list_pop(%struct.bio_list* %6)
  store %struct.bio* %23, %struct.bio** %5, align 8
  %24 = icmp ne %struct.bio* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = call i32 @retry_on_resume(%struct.bio* %26)
  br label %22

28:                                               ; preds = %12, %22
  ret void
}

declare dso_local i64 @should_error_unserviceable_bio(%struct.pool*) #1

declare dso_local i32 @cell_error_with_code(%struct.pool*, %struct.dm_bio_prison_cell*, i64) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @cell_release(%struct.pool*, %struct.dm_bio_prison_cell*, %struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @retry_on_resume(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
