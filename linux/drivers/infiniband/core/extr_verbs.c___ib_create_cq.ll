; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { void (%struct.ib_event*, i8*)*, %struct.TYPE_5__, i32, i8*, i32, i32*, %struct.ib_device* }
%struct.ib_event = type opaque
%struct.TYPE_5__ = type { i32 }
%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ib_cq.0*, %struct.ib_cq_init_attr*, i32*)* }
%struct.ib_cq.0 = type opaque
%struct.ib_cq_init_attr = type opaque
%struct.ib_event.1 = type opaque
%struct.ib_cq_init_attr.2 = type { i32 }

@ib_cq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_RESTRACK_CQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cq* @__ib_create_cq(%struct.ib_device* %0, i32 %1, void (%struct.ib_event.1*, i8*)* %2, i8* %3, %struct.ib_cq_init_attr.2* %4, i8* %5) #0 {
  %7 = alloca %struct.ib_cq*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.ib_event.1*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ib_cq_init_attr.2*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ib_cq*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store void (%struct.ib_event.1*, i8*)* %2, void (%struct.ib_event.1*, i8*)** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.ib_cq_init_attr.2* %4, %struct.ib_cq_init_attr.2** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %17 = load i32, i32* @ib_cq, align 4
  %18 = call %struct.ib_cq* @rdma_zalloc_drv_obj(%struct.ib_device* %16, i32 %17)
  store %struct.ib_cq* %18, %struct.ib_cq** %14, align 8
  %19 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %20 = icmp ne %struct.ib_cq* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.ib_cq* @ERR_PTR(i32 %23)
  store %struct.ib_cq* %24, %struct.ib_cq** %7, align 8
  br label %73

25:                                               ; preds = %6
  %26 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %27 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %28 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %27, i32 0, i32 6
  store %struct.ib_device* %26, %struct.ib_device** %28, align 8
  %29 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %30 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %29, i32 0, i32 5
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %33 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load void (%struct.ib_event.1*, i8*)*, void (%struct.ib_event.1*, i8*)** %10, align 8
  %35 = bitcast void (%struct.ib_event.1*, i8*)* %34 to void (%struct.ib_event*, i8*)*
  %36 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %37 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %36, i32 0, i32 0
  store void (%struct.ib_event*, i8*)* %35, void (%struct.ib_event*, i8*)** %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %40 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %42 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %41, i32 0, i32 2
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load i32, i32* @RDMA_RESTRACK_CQ, align 4
  %45 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %46 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %49 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %48, i32 0, i32 1
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @rdma_restrack_set_task(%struct.TYPE_5__* %49, i8* %50)
  %52 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %53 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.ib_cq.0*, %struct.ib_cq_init_attr*, i32*)*, i32 (%struct.ib_cq.0*, %struct.ib_cq_init_attr*, i32*)** %54, align 8
  %56 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %57 = bitcast %struct.ib_cq* %56 to %struct.ib_cq.0*
  %58 = load %struct.ib_cq_init_attr.2*, %struct.ib_cq_init_attr.2** %12, align 8
  %59 = bitcast %struct.ib_cq_init_attr.2* %58 to %struct.ib_cq_init_attr*
  %60 = call i32 %55(%struct.ib_cq.0* %57, %struct.ib_cq_init_attr* %59, i32* null)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %25
  %64 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %65 = call i32 @kfree(%struct.ib_cq* %64)
  %66 = load i32, i32* %15, align 4
  %67 = call %struct.ib_cq* @ERR_PTR(i32 %66)
  store %struct.ib_cq* %67, %struct.ib_cq** %7, align 8
  br label %73

68:                                               ; preds = %25
  %69 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  %70 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %69, i32 0, i32 1
  %71 = call i32 @rdma_restrack_kadd(%struct.TYPE_5__* %70)
  %72 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  store %struct.ib_cq* %72, %struct.ib_cq** %7, align 8
  br label %73

73:                                               ; preds = %68, %63, %21
  %74 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  ret %struct.ib_cq* %74
}

declare dso_local %struct.ib_cq* @rdma_zalloc_drv_obj(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_cq* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rdma_restrack_set_task(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @kfree(%struct.ib_cq*) #1

declare dso_local i32 @rdma_restrack_kadd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
