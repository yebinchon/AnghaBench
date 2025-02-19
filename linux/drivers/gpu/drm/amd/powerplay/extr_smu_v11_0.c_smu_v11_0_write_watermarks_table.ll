; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_write_watermarks_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_write_watermarks_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { %struct.smu_table* }
%struct.smu_table = type { i32 }

@SMU_TABLE_WATERMARKS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_write_watermarks_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_write_watermarks_table(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_table_context*, align 8
  %6 = alloca %struct.smu_table*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 0
  store %struct.smu_table_context* %8, %struct.smu_table_context** %5, align 8
  store %struct.smu_table* null, %struct.smu_table** %6, align 8
  %9 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %10 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %9, i32 0, i32 0
  %11 = load %struct.smu_table*, %struct.smu_table** %10, align 8
  %12 = load i64, i64* @SMU_TABLE_WATERMARKS, align 8
  %13 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %11, i64 %12
  store %struct.smu_table* %13, %struct.smu_table** %6, align 8
  %14 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %15 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %23 = load i64, i64* @SMU_TABLE_WATERMARKS, align 8
  %24 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %25 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @smu_update_table(%struct.smu_context* %22, i64 %23, i32 0, i32 %26, i32 1)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @smu_update_table(%struct.smu_context*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
