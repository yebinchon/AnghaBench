; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_mem_type_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_mem_type_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ttm_mem_type_manager*, %struct.drm_printer*)* }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"    has_type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"    use_type: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"    flags: 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"    gpu_offset: 0x%08llX\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"    size: %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"    available_caching: 0x%08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"    default_caching: 0x%08X\0A\00", align 1
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_bo_device*, %struct.drm_printer*, i32)* @ttm_mem_type_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_mem_type_debug(%struct.ttm_bo_device* %0, %struct.drm_printer* %1, i32 %2) #0 {
  %4 = alloca %struct.ttm_bo_device*, align 8
  %5 = alloca %struct.drm_printer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %4, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %9 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %8, i32 0, i32 0
  %10 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %10, i64 %12
  store %struct.ttm_mem_type_manager* %13, %struct.ttm_mem_type_manager** %7, align 8
  %14 = load %struct.drm_printer*, %struct.drm_printer** %5, align 8
  %15 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %16 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @drm_printf(%struct.drm_printer* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.drm_printer*, %struct.drm_printer** %5, align 8
  %20 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @drm_printf(%struct.drm_printer* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.drm_printer*, %struct.drm_printer** %5, align 8
  %25 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @drm_printf(%struct.drm_printer* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.drm_printer*, %struct.drm_printer** %5, align 8
  %30 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @drm_printf(%struct.drm_printer* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load %struct.drm_printer*, %struct.drm_printer** %5, align 8
  %35 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %36 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @drm_printf(%struct.drm_printer* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.drm_printer*, %struct.drm_printer** %5, align 8
  %40 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %41 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @drm_printf(%struct.drm_printer* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load %struct.drm_printer*, %struct.drm_printer** %5, align 8
  %45 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %46 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @drm_printf(%struct.drm_printer* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %3
  %53 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %54 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.ttm_mem_type_manager*, %struct.drm_printer*)*, i32 (%struct.ttm_mem_type_manager*, %struct.drm_printer*)** %56, align 8
  %58 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %59 = load %struct.drm_printer*, %struct.drm_printer** %5, align 8
  %60 = call i32 %57(%struct.ttm_mem_type_manager* %58, %struct.drm_printer* %59)
  br label %61

61:                                               ; preds = %52, %3
  ret void
}

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
