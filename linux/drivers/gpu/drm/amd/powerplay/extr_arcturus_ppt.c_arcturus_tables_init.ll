; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_tables_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_tables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i64, i32 }
%struct.smu_table = type { i32 }

@SMU_TABLE_PPTABLE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@SMU_TABLE_PMSTATUSLOG = common dso_local global i32 0, align 4
@SMU11_TOOL_SIZE = common dso_local global i32 0, align 4
@SMU_TABLE_SMU_METRICS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, %struct.smu_table*)* @arcturus_tables_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_tables_init(%struct.smu_context* %0, %struct.smu_table* %1) #0 {
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
  %10 = load i32, i32* @SMU_TABLE_PPTABLE, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %13 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %9, i32 %10, i32 4, i32 %11, i32 %12)
  %14 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %15 = load i32, i32* @SMU_TABLE_PMSTATUSLOG, align 4
  %16 = load i32, i32* @SMU11_TOOL_SIZE, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %19 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %21 = load i32, i32* @SMU_TABLE_SMU_METRICS, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %24 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %20, i32 %21, i32 4, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @kzalloc(i32 4, i32 %25)
  %27 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %28 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %30 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %38 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @SMU_TABLE_INIT(%struct.smu_table*, i32, i32, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
