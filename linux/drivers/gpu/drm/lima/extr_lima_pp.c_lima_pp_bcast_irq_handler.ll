; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_bcast_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_bcast_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.lima_device* }
%struct.lima_device = type { %struct.lima_sched_pipe* }
%struct.lima_sched_pipe = type { i32, i32, %struct.lima_ip**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_lima_m450_pp_frame* }
%struct.drm_lima_m450_pp_frame = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@lima_pipe_pp = common dso_local global i32 0, align 4
@LIMA_PP_STATUS = common dso_local global i32 0, align 4
@LIMA_PP_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@LIMA_PP_STATUS_RENDERING_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lima_pp_bcast_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_pp_bcast_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lima_ip*, align 8
  %9 = alloca %struct.lima_device*, align 8
  %10 = alloca %struct.lima_sched_pipe*, align 8
  %11 = alloca %struct.drm_lima_m450_pp_frame*, align 8
  %12 = alloca %struct.lima_ip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.lima_ip*
  store %struct.lima_ip* %17, %struct.lima_ip** %8, align 8
  %18 = load %struct.lima_ip*, %struct.lima_ip** %8, align 8
  %19 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %18, i32 0, i32 0
  %20 = load %struct.lima_device*, %struct.lima_device** %19, align 8
  store %struct.lima_device* %20, %struct.lima_device** %9, align 8
  %21 = load %struct.lima_device*, %struct.lima_device** %9, align 8
  %22 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %21, i32 0, i32 0
  %23 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %22, align 8
  %24 = load i32, i32* @lima_pipe_pp, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %23, i64 %25
  store %struct.lima_sched_pipe* %26, %struct.lima_sched_pipe** %10, align 8
  %27 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %10, align 8
  %28 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %100

33:                                               ; preds = %2
  %34 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %10, align 8
  %35 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %37, align 8
  store %struct.drm_lima_m450_pp_frame* %38, %struct.drm_lima_m450_pp_frame** %11, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %95, %33
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %11, align 8
  %42 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %39
  %46 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %10, align 8
  %47 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %46, i32 0, i32 2
  %48 = load %struct.lima_ip**, %struct.lima_ip*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %48, i64 %50
  %52 = load %struct.lima_ip*, %struct.lima_ip** %51, align 8
  store %struct.lima_ip* %52, %struct.lima_ip** %12, align 8
  %53 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %10, align 8
  %54 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %95

61:                                               ; preds = %45
  %62 = load i32, i32* @LIMA_PP_STATUS, align 4
  %63 = call i32 @pp_read(i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* @LIMA_PP_INT_STATUS, align 4
  %65 = call i32 @pp_read(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.lima_ip*, %struct.lima_ip** %12, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @lima_pp_handle_irq(%struct.lima_ip* %69, i32 %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %7, align 4
  br label %80

73:                                               ; preds = %61
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @LIMA_PP_STATUS_RENDERING_ACTIVE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %95

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %68
  %81 = load i32, i32* %6, align 4
  %82 = shl i32 1, %81
  %83 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %10, align 8
  %84 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %10, align 8
  %88 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %87, i32 0, i32 1
  %89 = call i64 @atomic_dec_and_test(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %10, align 8
  %93 = call i32 @lima_sched_pipe_task_done(%struct.lima_sched_pipe* %92)
  br label %94

94:                                               ; preds = %91, %80
  br label %95

95:                                               ; preds = %94, %78, %60
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %39

98:                                               ; preds = %39
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %31
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @pp_read(i32) #1

declare dso_local i32 @lima_pp_handle_irq(%struct.lima_ip*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @lima_sched_pipe_task_done(%struct.lima_sched_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
