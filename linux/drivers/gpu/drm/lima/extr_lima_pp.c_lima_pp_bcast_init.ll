; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_bcast_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_bcast_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { i32, %struct.lima_device* }
%struct.lima_device = type { i32 }

@lima_pp_bcast_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pp %s fail to request irq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_pp_bcast_init(%struct.lima_ip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca %struct.lima_device*, align 8
  %5 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  %6 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %7 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %6, i32 0, i32 1
  %8 = load %struct.lima_device*, %struct.lima_device** %7, align 8
  store %struct.lima_device* %8, %struct.lima_device** %4, align 8
  %9 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %10 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %13 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @lima_pp_bcast_irq_handler, align 4
  %16 = load i32, i32* @IRQF_SHARED, align 4
  %17 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %18 = call i32 @lima_ip_name(%struct.lima_ip* %17)
  %19 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %20 = call i32 @devm_request_irq(i32 %11, i32 %14, i32 %15, i32 %16, i32 %18, %struct.lima_ip* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %25 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %28 = call i32 @lima_ip_name(%struct.lima_ip* %27)
  %29 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.lima_ip*) #1

declare dso_local i32 @lima_ip_name(%struct.lima_ip*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
