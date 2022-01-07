; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.lima_device* }
%struct.lima_device = type { %struct.lima_sched_pipe* }
%struct.lima_sched_pipe = type { i32 }

@lima_pipe_pp = common dso_local global i32 0, align 4
@LIMA_PP_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lima_pp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_pp_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lima_ip*, align 8
  %7 = alloca %struct.lima_device*, align 8
  %8 = alloca %struct.lima_sched_pipe*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.lima_ip*
  store %struct.lima_ip* %11, %struct.lima_ip** %6, align 8
  %12 = load %struct.lima_ip*, %struct.lima_ip** %6, align 8
  %13 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %12, i32 0, i32 0
  %14 = load %struct.lima_device*, %struct.lima_device** %13, align 8
  store %struct.lima_device* %14, %struct.lima_device** %7, align 8
  %15 = load %struct.lima_device*, %struct.lima_device** %7, align 8
  %16 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %15, i32 0, i32 0
  %17 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %16, align 8
  %18 = load i32, i32* @lima_pipe_pp, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %17, i64 %19
  store %struct.lima_sched_pipe* %20, %struct.lima_sched_pipe** %8, align 8
  %21 = load i32, i32* @LIMA_PP_INT_STATUS, align 4
  %22 = call i32 @pp_read(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.lima_ip*, %struct.lima_ip** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @lima_pp_handle_irq(%struct.lima_ip* %28, i32 %29)
  %31 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %8, align 8
  %32 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %31, i32 0, i32 0
  %33 = call i64 @atomic_dec_and_test(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %8, align 8
  %37 = call i32 @lima_sched_pipe_task_done(%struct.lima_sched_pipe* %36)
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
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
