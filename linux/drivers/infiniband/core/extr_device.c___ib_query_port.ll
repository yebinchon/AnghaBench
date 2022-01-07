; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c___ib_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c___ib_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ib_device.0*, i32, %struct.ib_port_attr*)*, i32 (%struct.ib_device.1*, i32, i32, %union.ib_gid*)* }
%struct.ib_device.0 = type opaque
%struct.ib_device.1 = type opaque
%union.ib_gid = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_port_attr = type { i64 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @__ib_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ib_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %union.ib_gid, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %10 = bitcast %union.ib_gid* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %12 = call i32 @memset(%struct.ib_port_attr* %11, i32 0, i32 8)
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ib_device.0*, i32, %struct.ib_port_attr*)*, i32 (%struct.ib_device.0*, i32, %struct.ib_port_attr*)** %15, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = bitcast %struct.ib_device* %17 to %struct.ib_device.0*
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %21 = call i32 %16(%struct.ib_device.0* %18, i32 %19, %struct.ib_port_attr* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %26 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %58

31:                                               ; preds = %24
  %32 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %32, i32 %33)
  %35 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %58

38:                                               ; preds = %31
  %39 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %40 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32 (%struct.ib_device.1*, i32, i32, %union.ib_gid*)*, i32 (%struct.ib_device.1*, i32, i32, %union.ib_gid*)** %41, align 8
  %43 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %44 = bitcast %struct.ib_device* %43 to %struct.ib_device.1*
  %45 = load i32, i32* %6, align 4
  %46 = call i32 %42(%struct.ib_device.1* %44, i32 %45, i32 0, %union.ib_gid* %8)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %58

51:                                               ; preds = %38
  %52 = bitcast %union.ib_gid* %8 to %struct.TYPE_3__*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @be64_to_cpu(i32 %54)
  %56 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %57 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %49, %37, %29
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #2

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #2

declare dso_local i64 @be64_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
