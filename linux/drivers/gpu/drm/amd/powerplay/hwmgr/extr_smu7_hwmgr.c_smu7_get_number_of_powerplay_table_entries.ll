; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_number_of_powerplay_table_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_number_of_powerplay_table_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }

@PP_TABLE_V0 = common dso_local global i64 0, align 8
@PP_TABLE_V1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_get_number_of_powerplay_table_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_number_of_powerplay_table_entries(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PP_TABLE_V0, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %13 = call i32 @pp_tables_get_num_of_entries(%struct.pp_hwmgr* %12, i64* %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %19

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i64 [ 0, %16 ], [ %18, %17 ]
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PP_TABLE_V1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %30 = call i32 @get_number_of_powerplay_table_entries_v1_0(%struct.pp_hwmgr* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @pp_tables_get_num_of_entries(%struct.pp_hwmgr*, i64*) #1

declare dso_local i32 @get_number_of_powerplay_table_entries_v1_0(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
