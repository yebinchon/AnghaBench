; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.lima_device* }
%struct.lima_device = type { i32, %struct.lima_sched_pipe* }
%struct.lima_sched_pipe = type { i32 }

@lima_pipe_pp = common dso_local global i32 0, align 4
@LIMA_PP_IRQ_MASK_ERROR = common dso_local global i32 0, align 4
@LIMA_PP_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pp error irq state=%x status=%x\0A\00", align 1
@LIMA_PP_INT_MASK = common dso_local global i32 0, align 4
@LIMA_PP_INT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_ip*, i32)* @lima_pp_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_pp_handle_irq(%struct.lima_ip* %0, i32 %1) #0 {
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lima_device*, align 8
  %6 = alloca %struct.lima_sched_pipe*, align 8
  %7 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %9 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %8, i32 0, i32 0
  %10 = load %struct.lima_device*, %struct.lima_device** %9, align 8
  store %struct.lima_device* %10, %struct.lima_device** %5, align 8
  %11 = load %struct.lima_device*, %struct.lima_device** %5, align 8
  %12 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %11, i32 0, i32 1
  %13 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %12, align 8
  %14 = load i32, i32* @lima_pipe_pp, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %13, i64 %15
  store %struct.lima_sched_pipe* %16, %struct.lima_sched_pipe** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @LIMA_PP_IRQ_MASK_ERROR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i32, i32* @LIMA_PP_STATUS, align 4
  %23 = call i32 @pp_read(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.lima_device*, %struct.lima_device** %5, align 8
  %25 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %6, align 8
  %31 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @LIMA_PP_INT_MASK, align 4
  %33 = call i32 @pp_write(i32 %32, i32 0)
  br label %34

34:                                               ; preds = %21, %2
  %35 = load i32, i32* @LIMA_PP_INT_CLEAR, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pp_write(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @pp_read(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @pp_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
