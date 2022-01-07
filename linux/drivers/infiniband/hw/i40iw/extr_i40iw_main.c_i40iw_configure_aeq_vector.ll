; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_configure_aeq_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_configure_aeq_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32, %struct.i40iw_msix_vector* }
%struct.i40iw_msix_vector = type { i32 }

@i40iw_dpc = common dso_local global i32 0, align 4
@i40iw_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"i40iw\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"aeq irq config fail\0A\00", align 1
@I40IW_ERR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*)* @i40iw_configure_aeq_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_configure_aeq_vector(%struct.i40iw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_msix_vector*, align 8
  %5 = alloca i64, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  %6 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %7 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %6, i32 0, i32 2
  %8 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %7, align 8
  store %struct.i40iw_msix_vector* %8, %struct.i40iw_msix_vector** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %15 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %14, i32 0, i32 0
  %16 = load i32, i32* @i40iw_dpc, align 4
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %18 = ptrtoint %struct.i40iw_device* %17 to i64
  %19 = call i32 @tasklet_init(i32* %15, i32 %16, i64 %18)
  %20 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %4, align 8
  %21 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @i40iw_irq_handler, align 4
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %25 = call i64 @request_irq(i32 %22, i32 %23, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.i40iw_device* %24)
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %13, %1
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @I40IW_ERR_CONFIG, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.i40iw_device*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
