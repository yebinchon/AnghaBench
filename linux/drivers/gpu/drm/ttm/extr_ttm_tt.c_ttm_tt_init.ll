; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32 }
%struct.ttm_buffer_object = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed allocating page table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_init(%struct.ttm_tt* %0, %struct.ttm_buffer_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_tt*, align 8
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %5, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @ttm_tt_init_fields(%struct.ttm_tt* %8, %struct.ttm_buffer_object* %9, i32 %10)
  %12 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %13 = call i64 @ttm_tt_alloc_page_directory(%struct.ttm_tt* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  %17 = call i32 @ttm_tt_destroy(%struct.ttm_tt* %16)
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @ttm_tt_init_fields(%struct.ttm_tt*, %struct.ttm_buffer_object*, i32) #1

declare dso_local i64 @ttm_tt_alloc_page_directory(%struct.ttm_tt*) #1

declare dso_local i32 @ttm_tt_destroy(%struct.ttm_tt*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
