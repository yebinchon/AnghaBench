; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_destroy_ccq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_destroy_ccq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, %struct.i40iw_ccq, %struct.i40iw_sc_dev }
%struct.i40iw_ccq = type { i32 }
%struct.i40iw_sc_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }

@.str = private unnamed_addr constant [23 x i8] c"ccq destroy failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*)* @i40iw_destroy_ccq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_destroy_ccq(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca %struct.i40iw_ccq*, align 8
  %5 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %6 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %7 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %6, i32 0, i32 2
  store %struct.i40iw_sc_dev* %7, %struct.i40iw_sc_dev** %3, align 8
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %8, i32 0, i32 1
  store %struct.i40iw_ccq* %9, %struct.i40iw_ccq** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %18, align 8
  %20 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %19(i32 %22, i32 0, i32 1)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %14, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %32 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %4, align 8
  %35 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %34, i32 0, i32 0
  %36 = call i32 @i40iw_free_dma_mem(i32 %33, i32* %35)
  ret void
}

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
