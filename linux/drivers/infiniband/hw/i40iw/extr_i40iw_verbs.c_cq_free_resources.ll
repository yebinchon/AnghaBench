; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_cq_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_cq_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i40iw_cq = type { i32, i32, %struct.i40iw_sc_cq }
%struct.i40iw_sc_cq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*, %struct.i40iw_cq*)* @cq_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cq_free_resources(%struct.i40iw_device* %0, %struct.i40iw_cq* %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_cq*, align 8
  %5 = alloca %struct.i40iw_sc_cq*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store %struct.i40iw_cq* %1, %struct.i40iw_cq** %4, align 8
  %6 = load %struct.i40iw_cq*, %struct.i40iw_cq** %4, align 8
  %7 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %6, i32 0, i32 2
  store %struct.i40iw_sc_cq* %7, %struct.i40iw_sc_cq** %5, align 8
  %8 = load %struct.i40iw_cq*, %struct.i40iw_cq** %4, align 8
  %9 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %14 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.i40iw_cq*, %struct.i40iw_cq** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %17, i32 0, i32 0
  %19 = call i32 @i40iw_free_dma_mem(i32 %16, i32* %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %23 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @i40iw_free_resource(%struct.i40iw_device* %21, i32 %24, i32 %28)
  ret void
}

declare dso_local i32 @i40iw_free_dma_mem(i32, i32*) #1

declare dso_local i32 @i40iw_free_resource(%struct.i40iw_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
