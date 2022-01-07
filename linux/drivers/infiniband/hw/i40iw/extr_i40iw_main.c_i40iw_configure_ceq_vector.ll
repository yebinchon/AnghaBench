; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_configure_ceq_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_configure_ceq_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i64 }
%struct.i40iw_ceq = type { i32, i64 }
%struct.i40iw_msix_vector = type { i64, i32, i32, i32 }

@i40iw_dpc = common dso_local global i32 0, align 4
@i40iw_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"AEQCEQ\00", align 1
@i40iw_ceq_dpc = common dso_local global i32 0, align 4
@i40iw_ceq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"CEQ\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ceq irq config fail\0A\00", align 1
@I40IW_ERR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40iw_ceq*, i64, %struct.i40iw_msix_vector*)* @i40iw_configure_ceq_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_configure_ceq_vector(%struct.i40iw_device* %0, %struct.i40iw_ceq* %1, i64 %2, %struct.i40iw_msix_vector* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_ceq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i40iw_msix_vector*, align 8
  %10 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %6, align 8
  store %struct.i40iw_ceq* %1, %struct.i40iw_ceq** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.i40iw_msix_vector* %3, %struct.i40iw_msix_vector** %9, align 8
  %11 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %12 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %20 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %19, i32 0, i32 0
  %21 = load i32, i32* @i40iw_dpc, align 4
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %23 = ptrtoint %struct.i40iw_device* %22 to i64
  %24 = call i32 @tasklet_init(i32* %20, i32 %21, i64 %23)
  %25 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %26 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @i40iw_irq_handler, align 4
  %29 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %30 = call i32 @request_irq(i32 %27, i32 %28, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.i40iw_device* %29)
  store i32 %30, i32* %10, align 4
  br label %45

31:                                               ; preds = %15, %4
  %32 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %7, align 8
  %33 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %32, i32 0, i32 0
  %34 = load i32, i32* @i40iw_ceq_dpc, align 4
  %35 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %7, align 8
  %36 = ptrtoint %struct.i40iw_ceq* %35 to i64
  %37 = call i32 @tasklet_init(i32* %33, i32 %34, i64 %36)
  %38 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %39 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @i40iw_ceq_handler, align 4
  %42 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %7, align 8
  %43 = bitcast %struct.i40iw_ceq* %42 to %struct.i40iw_device*
  %44 = call i32 @request_irq(i32 %40, i32 %41, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.i40iw_device* %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %31, %18
  %46 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %47 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %46, i32 0, i32 1
  %48 = call i32 @cpumask_clear(i32* %47)
  %49 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %50 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %53 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %52, i32 0, i32 1
  %54 = call i32 @cpumask_set_cpu(i32 %51, i32* %53)
  %55 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %56 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %59 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %58, i32 0, i32 1
  %60 = call i32 @irq_set_affinity_hint(i32 %57, i32* %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @I40IW_ERR_CONFIG, align 4
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %45
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %9, align 8
  %69 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.i40iw_device*) #1

declare dso_local i32 @cpumask_clear(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
