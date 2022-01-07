; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_renoir_ppt.c_renoir_tables_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_renoir_ppt.c_renoir_tables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i32 }
%struct.smu_table = type { i32 }

@SMU_TABLE_WATERMARKS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@SMU_TABLE_DPMCLOCKS = common dso_local global i32 0, align 4
@SMU_TABLE_SMU_METRICS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, %struct.smu_table*)* @renoir_tables_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renoir_tables_init(%struct.smu_context* %0, %struct.smu_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca %struct.smu_table*, align 8
  %6 = alloca %struct.smu_table_context*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store %struct.smu_table* %1, %struct.smu_table** %5, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 0
  store %struct.smu_table_context* %8, %struct.smu_table_context** %6, align 8
  %9 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %10 = load i32, i32* @SMU_TABLE_WATERMARKS, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %13 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %9, i32 %10, i32 4, i32 %11, i32 %12)
  %14 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %15 = load i32, i32* @SMU_TABLE_DPMCLOCKS, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %18 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %14, i32 %15, i32 4, i32 %16, i32 %17)
  %19 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %20 = load i32, i32* @SMU_TABLE_SMU_METRICS, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %23 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %19, i32 %20, i32 4, i32 %21, i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @kzalloc(i32 4, i32 %24)
  %26 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %27 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %29 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @SMU_TABLE_INIT(%struct.smu_table*, i32, i32, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
