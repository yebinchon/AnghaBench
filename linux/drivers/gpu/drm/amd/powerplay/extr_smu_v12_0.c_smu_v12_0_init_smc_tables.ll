; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_init_smc_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_init_smc_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i64, %struct.smu_table* }
%struct.smu_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_TABLE_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v12_0_init_smc_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v12_0_init_smc_tables(%struct.smu_context* %0) #0 {
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
  %11 = icmp ne %struct.smu_table* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %14 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load i32, i32* @SMU_TABLE_COUNT, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.smu_table* @kcalloc(i32 %21, i32 4, i32 %22)
  store %struct.smu_table* %23, %struct.smu_table** %5, align 8
  %24 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %25 = icmp ne %struct.smu_table* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %20
  %30 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %31 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %32 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %31, i32 0, i32 1
  store %struct.smu_table* %30, %struct.smu_table** %32, align 8
  %33 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %34 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %35 = call i32 @smu_tables_init(%struct.smu_context* %33, %struct.smu_table* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %26, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.smu_table* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @smu_tables_init(%struct.smu_context*, %struct.smu_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
