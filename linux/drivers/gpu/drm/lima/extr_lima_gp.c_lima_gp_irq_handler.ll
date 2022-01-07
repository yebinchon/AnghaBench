; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.lima_device* }
%struct.lima_device = type { i32, %struct.lima_sched_pipe* }
%struct.lima_sched_pipe = type { i32 }

@lima_pipe_gp = common dso_local global i32 0, align 4
@LIMA_GP_INT_STAT = common dso_local global i32 0, align 4
@LIMA_GP_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@LIMA_GP_IRQ_MASK_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"gp error irq state=%x status=%x\0A\00", align 1
@LIMA_GP_INT_MASK = common dso_local global i32 0, align 4
@LIMA_GP_IRQ_VS_END_CMD_LST = common dso_local global i32 0, align 4
@LIMA_GP_IRQ_PLBU_END_CMD_LST = common dso_local global i32 0, align 4
@LIMA_GP_STATUS_VS_ACTIVE = common dso_local global i32 0, align 4
@LIMA_GP_STATUS_PLBU_ACTIVE = common dso_local global i32 0, align 4
@LIMA_GP_INT_CLEAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lima_gp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_gp_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lima_ip*, align 8
  %7 = alloca %struct.lima_device*, align 8
  %8 = alloca %struct.lima_sched_pipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.lima_ip*
  store %struct.lima_ip* %15, %struct.lima_ip** %6, align 8
  %16 = load %struct.lima_ip*, %struct.lima_ip** %6, align 8
  %17 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %16, i32 0, i32 0
  %18 = load %struct.lima_device*, %struct.lima_device** %17, align 8
  store %struct.lima_device* %18, %struct.lima_device** %7, align 8
  %19 = load %struct.lima_device*, %struct.lima_device** %7, align 8
  %20 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %19, i32 0, i32 1
  %21 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %20, align 8
  %22 = load i32, i32* @lima_pipe_gp, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %21, i64 %23
  store %struct.lima_sched_pipe* %24, %struct.lima_sched_pipe** %8, align 8
  %25 = load i32, i32* @LIMA_GP_INT_STAT, align 4
  %26 = call i32 @gp_read(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @LIMA_GP_STATUS, align 4
  %28 = call i32 @gp_read(i32 %27)
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %80

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @LIMA_GP_IRQ_MASK_ERROR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.lima_device*, %struct.lima_device** %7, align 8
  %40 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @LIMA_GP_INT_MASK, align 4
  %46 = call i32 @gp_write(i32 %45, i32 0)
  %47 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %8, align 8
  %48 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  store i32 1, i32* %11, align 4
  br label %69

49:                                               ; preds = %33
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @LIMA_GP_IRQ_VS_END_CMD_LST, align 4
  %52 = load i32, i32* @LIMA_GP_IRQ_PLBU_END_CMD_LST, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @LIMA_GP_STATUS_VS_ACTIVE, align 4
  %57 = load i32, i32* @LIMA_GP_STATUS_PLBU_ACTIVE, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %49
  %67 = phi i1 [ false, %49 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %38
  %70 = load i32, i32* @LIMA_GP_INT_CLEAR, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @gp_write(i32 %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %8, align 8
  %77 = call i32 @lima_sched_pipe_task_done(%struct.lima_sched_pipe* %76)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %31
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @gp_read(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @gp_write(i32, i32) #1

declare dso_local i32 @lima_sched_pipe_task_done(%struct.lima_sched_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
