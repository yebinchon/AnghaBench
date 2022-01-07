; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_opa_pathrecord_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_opa_pathrecord_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_client = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_sa_device = type { i64, %struct.ib_sa_port* }
%struct.ib_sa_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@sa_client = common dso_local global i32 0, align 4
@RDMA_CLASS_PORT_INFO_OPA = common dso_local global i64 0, align 8
@OPA_CLASS_PORT_INFO_PR_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_client*, %struct.ib_device*, i64)* @ib_sa_opa_pathrecord_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_sa_opa_pathrecord_support(%struct.ib_sa_client* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_client*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ib_sa_device*, align 8
  %9 = alloca %struct.ib_sa_port*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_sa_client* %0, %struct.ib_sa_client** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %13 = call %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device* %12, i32* @sa_client)
  store %struct.ib_sa_device* %13, %struct.ib_sa_device** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ib_sa_device*, %struct.ib_sa_device** %8, align 8
  %15 = icmp ne %struct.ib_sa_device* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %61

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
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.ib_sa_port*, %struct.ib_sa_port** %9, align 8
  %33 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %18
  br label %55

38:                                               ; preds = %18
  %39 = load %struct.ib_sa_port*, %struct.ib_sa_port** %9, align 8
  %40 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RDMA_CLASS_PORT_INFO_OPA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.ib_sa_port*, %struct.ib_sa_port** %9, align 8
  %48 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = call i32 @opa_get_cpi_capmask2(i32* %50)
  %52 = load i32, i32* @OPA_CLASS_PORT_INFO_PR_SUPPORT, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.ib_sa_port*, %struct.ib_sa_port** %9, align 8
  %57 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %56, i32 0, i32 0
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @opa_get_cpi_capmask2(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
