; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_space_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_space_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ttm_placement = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_printer = type { i32 }

@TTM_PFX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"No space for %p (%lu pages, %luK, %luM)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"  placement[%d]=0x%08X (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*, %struct.ttm_placement*)* @ttm_bo_mem_space_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_mem_space_debug(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_placement*, align 8
  %5 = alloca %struct.drm_printer, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %4, align 8
  %9 = load i32, i32* @TTM_PFX, align 4
  %10 = call i32 @drm_debug_printer(i32 %9)
  %11 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 10
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %23 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 20
  %27 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.ttm_buffer_object* %12, i32 %16, i32 %21, i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %62, %2
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %31 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %28
  %35 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %36 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = call i32 @ttm_mem_type_from_place(%struct.TYPE_4__* %40, i32* %8)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %65

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %48 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %54, i32 %55)
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %58 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ttm_mem_type_debug(i32 %59, %struct.drm_printer* %5, i32 %60)
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %28

65:                                               ; preds = %44, %28
  ret void
}

declare dso_local i32 @drm_debug_printer(i32) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, ...) #1

declare dso_local i32 @ttm_mem_type_from_place(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ttm_mem_type_debug(i32, %struct.drm_printer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
