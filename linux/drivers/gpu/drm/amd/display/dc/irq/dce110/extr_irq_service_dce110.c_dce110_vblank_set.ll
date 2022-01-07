; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/dce110/extr_irq_service_dce110.c_dce110_vblank_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/dce110/extr_irq_service_dce110.c_dce110_vblank_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_service = type { %struct.dc_context* }
%struct.dc_context = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.timing_generator*, i32)* }
%struct.irq_source_info = type { i32, i32 }

@IRQ_TYPE_VBLANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to get VBLANK!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_vblank_set(%struct.irq_service* %0, %struct.irq_source_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_service*, align 8
  %6 = alloca %struct.irq_source_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca %struct.dc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.timing_generator*, align 8
  store %struct.irq_service* %0, %struct.irq_service** %5, align 8
  store %struct.irq_source_info* %1, %struct.irq_source_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.irq_service*, %struct.irq_service** %5, align 8
  %14 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %13, i32 0, i32 0
  %15 = load %struct.dc_context*, %struct.dc_context** %14, align 8
  store %struct.dc_context* %15, %struct.dc_context** %8, align 8
  %16 = load %struct.irq_service*, %struct.irq_service** %5, align 8
  %17 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %16, i32 0, i32 0
  %18 = load %struct.dc_context*, %struct.dc_context** %17, align 8
  %19 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %18, i32 0, i32 0
  %20 = load %struct.dc*, %struct.dc** %19, align 8
  store %struct.dc* %20, %struct.dc** %9, align 8
  %21 = load %struct.irq_service*, %struct.irq_service** %5, align 8
  %22 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %21, i32 0, i32 0
  %23 = load %struct.dc_context*, %struct.dc_context** %22, align 8
  %24 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %23, i32 0, i32 0
  %25 = load %struct.dc*, %struct.dc** %24, align 8
  %26 = load %struct.irq_source_info*, %struct.irq_source_info** %6, align 8
  %27 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.irq_source_info*, %struct.irq_source_info** %6, align 8
  %30 = getelementptr inbounds %struct.irq_source_info, %struct.irq_source_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dc_interrupt_to_irq_source(%struct.dc* %25, i32 %28, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @IRQ_TYPE_VBLANK, align 4
  %35 = sub i32 %33, %34
  %36 = zext i32 %35 to i64
  store i64 %36, i64* %11, align 8
  %37 = load %struct.dc*, %struct.dc** %9, align 8
  %38 = getelementptr inbounds %struct.dc, %struct.dc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.timing_generator*, %struct.timing_generator** %46, align 8
  store %struct.timing_generator* %47, %struct.timing_generator** %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %3
  %51 = load %struct.timing_generator*, %struct.timing_generator** %12, align 8
  %52 = icmp ne %struct.timing_generator* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.timing_generator*, %struct.timing_generator** %12, align 8
  %55 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %57, align 8
  %59 = load %struct.timing_generator*, %struct.timing_generator** %12, align 8
  %60 = call i32 %58(%struct.timing_generator* %59, i32 2)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %53, %50
  %63 = call i32 @DC_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %70

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.irq_service*, %struct.irq_service** %5, align 8
  %67 = load %struct.irq_source_info*, %struct.irq_source_info** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dal_irq_service_set_generic(%struct.irq_service* %66, %struct.irq_source_info* %67, i32 %68)
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @dc_interrupt_to_irq_source(%struct.dc*, i32, i32) #1

declare dso_local i32 @DC_ERROR(i8*) #1

declare dso_local i32 @dal_irq_service_set_generic(%struct.irq_service*, %struct.irq_source_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
