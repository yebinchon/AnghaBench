; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_get_pipeline_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_get_pipeline_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d71_pipeline = type { i32 }

@GLB_IRQ_STATUS_LPU0 = common dso_local global i32 0, align 4
@GLB_IRQ_STATUS_LPU1 = common dso_local global i32 0, align 4
@GLB_IRQ_STATUS_CU0 = common dso_local global i32 0, align 4
@GLB_IRQ_STATUS_CU1 = common dso_local global i32 0, align 4
@GLB_IRQ_STATUS_DOU0 = common dso_local global i32 0, align 4
@GLB_IRQ_STATUS_DOU1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d71_pipeline*, i32)* @get_pipeline_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pipeline_event(%struct.d71_pipeline* %0, i32 %1) #0 {
  %3 = alloca %struct.d71_pipeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.d71_pipeline* %0, %struct.d71_pipeline** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @GLB_IRQ_STATUS_LPU0, align 4
  %8 = load i32, i32* @GLB_IRQ_STATUS_LPU1, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.d71_pipeline*, %struct.d71_pipeline** %3, align 8
  %14 = call i32 @get_lpu_event(%struct.d71_pipeline* %13)
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GLB_IRQ_STATUS_CU0, align 4
  %20 = load i32, i32* @GLB_IRQ_STATUS_CU1, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.d71_pipeline*, %struct.d71_pipeline** %3, align 8
  %26 = call i32 @get_cu_event(%struct.d71_pipeline* %25)
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @GLB_IRQ_STATUS_DOU0, align 4
  %32 = load i32, i32* @GLB_IRQ_STATUS_DOU1, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.d71_pipeline*, %struct.d71_pipeline** %3, align 8
  %38 = call i32 @get_dou_event(%struct.d71_pipeline* %37)
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @get_lpu_event(%struct.d71_pipeline*) #1

declare dso_local i32 @get_cu_event(%struct.d71_pipeline*) #1

declare dso_local i32 @get_dou_event(%struct.d71_pipeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
