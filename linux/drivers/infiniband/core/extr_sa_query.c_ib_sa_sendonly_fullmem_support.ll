; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_sendonly_fullmem_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_sendonly_fullmem_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_client = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_sa_device = type { i64, %struct.ib_sa_port* }
%struct.ib_sa_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@sa_client = common dso_local global i32 0, align 4
@RDMA_CLASS_PORT_INFO_IB = common dso_local global i64 0, align 8
@IB_SA_CAP_MASK2_SENDONLY_FULL_MEM_SUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_sa_sendonly_fullmem_support(%struct.ib_sa_client* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_client*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ib_sa_device*, align 8
  %9 = alloca %struct.ib_sa_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ib_sa_client* %0, %struct.ib_sa_client** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %13 = call %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device* %12, i32* @sa_client)
  store %struct.ib_sa_device* %13, %struct.ib_sa_device** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ib_sa_device*, %struct.ib_sa_device** %8, align 8
  %15 = icmp ne %struct.ib_sa_device* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.ib_sa_device*, %struct.ib_sa_device** %8, align 8
  %20 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %19, i32 0, i32 1
  %21 = load %struct.ib_sa_port*, %struct.ib_sa_port** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.ib_sa_device*, %struct.ib_sa_device** %8, align 8
  %24 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  %27 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %21, i64 %26
  store %struct.ib_sa_port* %27, %struct.ib_sa_port** %9, align 8
  %28 = load %struct.ib_sa_port*, %struct.ib_sa_port** %9, align 8
  %29 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.ib_sa_port*, %struct.ib_sa_port** %9, align 8
  %33 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %18
  %38 = load %struct.ib_sa_port*, %struct.ib_sa_port** %9, align 8
  %39 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RDMA_CLASS_PORT_INFO_IB, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.ib_sa_port*, %struct.ib_sa_port** %9, align 8
  %47 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @ib_get_cpi_capmask2(i32* %49)
  %51 = load i32, i32* @IB_SA_CAP_MASK2_SENDONLY_FULL_MEM_SUPPORT, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %45, %37, %18
  %54 = load %struct.ib_sa_port*, %struct.ib_sa_port** %9, align 8
  %55 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %54, i32 0, i32 0
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ib_get_cpi_capmask2(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
