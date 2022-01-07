; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_port_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_port_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad_port_private = type { i32*, i32, i32, i32, i32 }

@ib_mad_port_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Port %d not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32)* @ib_mad_port_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_mad_port_close(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_mad_port_private*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @ib_mad_port_list_lock, i64 %8)
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ib_mad_port_private* @__ib_get_mad_port(%struct.ib_device* %10, i32 %11)
  store %struct.ib_mad_port_private* %12, %struct.ib_mad_port_private** %6, align 8
  %13 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %14 = icmp eq %struct.ib_mad_port_private* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @ib_mad_port_list_lock, i64 %16)
  %18 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %64

24:                                               ; preds = %2
  %25 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %26 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %25, i32 0, i32 4
  %27 = call i32 @list_del_init(i32* %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @ib_mad_port_list_lock, i64 %28)
  %30 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %31 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @destroy_workqueue(i32 %32)
  %34 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %35 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = call i32 @destroy_mad_qp(i32* %37)
  %39 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %40 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i32 @destroy_mad_qp(i32* %42)
  %44 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %45 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ib_free_cq(i32 %46)
  %48 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %49 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ib_dealloc_pd(i32 %50)
  %52 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %53 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = call i32 @cleanup_recv_queue(i32* %55)
  %57 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %58 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @cleanup_recv_queue(i32* %60)
  %62 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %6, align 8
  %63 = call i32 @kfree(%struct.ib_mad_port_private* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %24, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_mad_port_private* @__ib_get_mad_port(%struct.ib_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @destroy_mad_qp(i32*) #1

declare dso_local i32 @ib_free_cq(i32) #1

declare dso_local i32 @ib_dealloc_pd(i32) #1

declare dso_local i32 @cleanup_recv_queue(i32*) #1

declare dso_local i32 @kfree(%struct.ib_mad_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
