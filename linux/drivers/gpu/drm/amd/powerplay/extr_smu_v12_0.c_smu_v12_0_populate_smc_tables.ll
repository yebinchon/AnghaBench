; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_populate_smc_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_populate_smc_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i32, %struct.smu_table* }
%struct.smu_table = type { i32 }

@SMU_TABLE_DPMCLOCKS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v12_0_populate_smc_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v12_0_populate_smc_tables(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_table_context*, align 8
  %5 = alloca %struct.smu_table*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %6 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %7 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %6, i32 0, i32 0
  store %struct.smu_table_context* %7, %struct.smu_table_context** %4, align 8
  store %struct.smu_table* null, %struct.smu_table** %5, align 8
  %8 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %9 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %8, i32 0, i32 1
  %10 = load %struct.smu_table*, %struct.smu_table** %9, align 8
  %11 = load i64, i64* @SMU_TABLE_DPMCLOCKS, align 8
  %12 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %10, i64 %11
  store %struct.smu_table* %12, %struct.smu_table** %5, align 8
  %13 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %14 = icmp ne %struct.smu_table* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %20 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %18
  %27 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %28 = load i64, i64* @SMU_TABLE_DPMCLOCKS, align 8
  %29 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %30 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @smu_update_table(%struct.smu_context* %27, i64 %28, i32 0, i32 %31, i32 0)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %23, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @smu_update_table(%struct.smu_context*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
