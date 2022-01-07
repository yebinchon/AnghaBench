; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { i32, %struct.TYPE_2__, %struct.lima_device* }
%struct.TYPE_2__ = type { i32 }
%struct.lima_device = type { i32, i32 }

@lima_pp_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pp %s fail to request irq\0A\00", align 1
@LIMA_PP_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_pp_init(%struct.lima_ip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca %struct.lima_device*, align 8
  %5 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  %6 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %7 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %6, i32 0, i32 2
  %8 = load %struct.lima_device*, %struct.lima_device** %7, align 8
  store %struct.lima_device* %8, %struct.lima_device** %4, align 8
  %9 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %10 = call i32 @lima_pp_print_version(%struct.lima_ip* %9)
  %11 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %12 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %15 = call i32 @lima_pp_soft_reset_async(%struct.lima_ip* %14)
  %16 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %17 = call i32 @lima_pp_soft_reset_async_wait(%struct.lima_ip* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  %23 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %24 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %27 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @lima_pp_irq_handler, align 4
  %30 = load i32, i32* @IRQF_SHARED, align 4
  %31 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %32 = call i32 @lima_ip_name(%struct.lima_ip* %31)
  %33 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %34 = call i32 @devm_request_irq(i32 %25, i32 %28, i32 %29, i32 %30, i32 %32, %struct.lima_ip* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %22
  %38 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %39 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %42 = call i32 @lima_ip_name(%struct.lima_ip* %41)
  %43 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %50

45:                                               ; preds = %22
  %46 = load i32, i32* @LIMA_PP_VERSION, align 4
  %47 = call i32 @pp_read(i32 %46)
  %48 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %49 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %37, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @lima_pp_print_version(%struct.lima_ip*) #1

declare dso_local i32 @lima_pp_soft_reset_async(%struct.lima_ip*) #1

declare dso_local i32 @lima_pp_soft_reset_async_wait(%struct.lima_ip*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.lima_ip*) #1

declare dso_local i32 @lima_ip_name(%struct.lima_ip*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pp_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
