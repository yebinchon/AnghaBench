; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_init_smc_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_init_smc_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i64, %struct.smu_table* }
%struct.smu_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_TABLE_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_init_smc_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_init_smc_tables(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_table_context*, align 8
  %5 = alloca %struct.smu_table*, align 8
  %6 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 0
  store %struct.smu_table_context* %8, %struct.smu_table_context** %4, align 8
  store %struct.smu_table* null, %struct.smu_table** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %10 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %9, i32 0, i32 1
  %11 = load %struct.smu_table*, %struct.smu_table** %10, align 8
  %12 = icmp ne %struct.smu_table* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %15 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %13
  %22 = load i32, i32* @SMU_TABLE_COUNT, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.smu_table* @kcalloc(i32 %22, i32 4, i32 %23)
  store %struct.smu_table* %24, %struct.smu_table** %5, align 8
  %25 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %26 = icmp ne %struct.smu_table* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %21
  %31 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %32 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %33 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %32, i32 0, i32 1
  store %struct.smu_table* %31, %struct.smu_table** %33, align 8
  %34 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %35 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %36 = call i32 @smu_tables_init(%struct.smu_context* %34, %struct.smu_table* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %49

41:                                               ; preds = %30
  %42 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %43 = call i32 @smu_v11_0_init_dpm_context(%struct.smu_context* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %46, %39, %27, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.smu_table* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @smu_tables_init(%struct.smu_context*, %struct.smu_table*) #1

declare dso_local i32 @smu_v11_0_init_dpm_context(%struct.smu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
