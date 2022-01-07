; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_manager.c_ttm_bo_man_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_manager.c_ttm_bo_man_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { %struct.ttm_range_manager* }
%struct.ttm_range_manager = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, i64)* @ttm_bo_man_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_man_init(%struct.ttm_mem_type_manager* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ttm_range_manager*, align 8
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ttm_range_manager* @kzalloc(i32 8, i32 %7)
  store %struct.ttm_range_manager* %8, %struct.ttm_range_manager** %6, align 8
  %9 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %6, align 8
  %10 = icmp ne %struct.ttm_range_manager* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %6, align 8
  %16 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @drm_mm_init(i32* %16, i32 0, i64 %17)
  %19 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %6, align 8
  %23 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %23, i32 0, i32 0
  store %struct.ttm_range_manager* %22, %struct.ttm_range_manager** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.ttm_range_manager* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
