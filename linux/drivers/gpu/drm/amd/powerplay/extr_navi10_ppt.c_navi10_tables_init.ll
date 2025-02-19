; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_tables_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_tables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i64, i32 }
%struct.smu_table = type { i32 }

@SMU_TABLE_PPTABLE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@SMU_TABLE_WATERMARKS = common dso_local global i32 0, align 4
@SMU_TABLE_SMU_METRICS = common dso_local global i32 0, align 4
@SMU_TABLE_OVERDRIVE = common dso_local global i32 0, align 4
@SMU_TABLE_PMSTATUSLOG = common dso_local global i32 0, align 4
@SMU11_TOOL_SIZE = common dso_local global i32 0, align 4
@SMU_TABLE_ACTIVITY_MONITOR_COEFF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, %struct.smu_table*)* @navi10_tables_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_tables_init(%struct.smu_context* %0, %struct.smu_table* %1) #0 {
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
  %15 = load i32, i32* @SMU_TABLE_WATERMARKS, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %18 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %14, i32 %15, i32 4, i32 %16, i32 %17)
  %19 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %20 = load i32, i32* @SMU_TABLE_SMU_METRICS, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %23 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %19, i32 %20, i32 4, i32 %21, i32 %22)
  %24 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %25 = load i32, i32* @SMU_TABLE_OVERDRIVE, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %28 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %24, i32 %25, i32 4, i32 %26, i32 %27)
  %29 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %30 = load i32, i32* @SMU_TABLE_PMSTATUSLOG, align 4
  %31 = load i32, i32* @SMU11_TOOL_SIZE, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %34 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %36 = load i32, i32* @SMU_TABLE_ACTIVITY_MONITOR_COEFF, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %39 = call i32 @SMU_TABLE_INIT(%struct.smu_table* %35, i32 %36, i32 4, i32 %37, i32 %38)
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @kzalloc(i32 4, i32 %40)
  %42 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %43 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %45 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %2
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %53 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @SMU_TABLE_INIT(%struct.smu_table*, i32, i32, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
