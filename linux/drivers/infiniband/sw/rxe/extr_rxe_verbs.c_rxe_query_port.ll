; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i64, i32, i32, i32 }
%struct.rxe_dev = type { i32, i32, %struct.rxe_port }
%struct.rxe_port = type { %struct.ib_port_attr }

@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@IB_PORT_PHYS_STATE_LINK_UP = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_POLLING = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @rxe_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.rxe_dev*, align 8
  %8 = alloca %struct.rxe_port*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = call %struct.rxe_dev* @to_rdev(%struct.ib_device* %10)
  store %struct.rxe_dev* %11, %struct.rxe_dev** %7, align 8
  %12 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %13 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %12, i32 0, i32 2
  store %struct.rxe_port* %13, %struct.rxe_port** %8, align 8
  %14 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %15 = load %struct.rxe_port*, %struct.rxe_port** %8, align 8
  %16 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %15, i32 0, i32 0
  %17 = bitcast %struct.ib_port_attr* %14 to i8*
  %18 = bitcast %struct.ib_port_attr* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %20 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %25 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %24, i32 0, i32 3
  %26 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %26, i32 0, i32 2
  %28 = call i32 @ib_get_eth_speed(%struct.ib_device* %22, i32 %23, i32* %25, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @IB_PORT_PHYS_STATE_LINK_UP, align 4
  %36 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %37 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %55

38:                                               ; preds = %3
  %39 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %40 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_get_flags(i32 %41)
  %43 = load i32, i32* @IFF_UP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @IB_PORT_PHYS_STATE_POLLING, align 4
  %48 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %38
  %51 = load i32, i32* @IB_PORT_PHYS_STATE_DISABLED, align 4
  %52 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %57 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local %struct.rxe_dev* @to_rdev(%struct.ib_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_get_eth_speed(%struct.ib_device*, i32, i32*, i32*) #1

declare dso_local i32 @dev_get_flags(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
