; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_soft_reset_async_wait_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_soft_reset_async_wait_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.lima_device* }
%struct.lima_device = type { i32 }

@lima_pp_soft_reset_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pp %s reset time out\0A\00", align 1
@LIMA_PP_INT_CLEAR = common dso_local global i32 0, align 4
@LIMA_PP_IRQ_MASK_ALL = common dso_local global i32 0, align 4
@LIMA_PP_INT_MASK = common dso_local global i32 0, align 4
@LIMA_PP_IRQ_MASK_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_ip*)* @lima_pp_soft_reset_async_wait_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_pp_soft_reset_async_wait_one(%struct.lima_ip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca %struct.lima_device*, align 8
  %5 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  %6 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %7 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %6, i32 0, i32 0
  %8 = load %struct.lima_device*, %struct.lima_device** %7, align 8
  store %struct.lima_device* %8, %struct.lima_device** %4, align 8
  %9 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %10 = load i32, i32* @lima_pp_soft_reset_poll, align 4
  %11 = call i32 @lima_poll_timeout(%struct.lima_ip* %9, i32 %10, i32 0, i32 100)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %16 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %19 = call i32 @lima_ip_name(%struct.lima_ip* %18)
  %20 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @LIMA_PP_INT_CLEAR, align 4
  %24 = load i32, i32* @LIMA_PP_IRQ_MASK_ALL, align 4
  %25 = call i32 @pp_write(i32 %23, i32 %24)
  %26 = load i32, i32* @LIMA_PP_INT_MASK, align 4
  %27 = load i32, i32* @LIMA_PP_IRQ_MASK_USED, align 4
  %28 = call i32 @pp_write(i32 %26, i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %22, %14
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @lima_poll_timeout(%struct.lima_ip*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @lima_ip_name(%struct.lima_ip*) #1

declare dso_local i32 @pp_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
