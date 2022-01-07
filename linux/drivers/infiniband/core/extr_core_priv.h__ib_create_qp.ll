; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_core_priv.h__ib_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_core_priv.h__ib_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.TYPE_5__, %struct.ib_qp*, %struct.ib_uobject*, %struct.ib_pd*, %struct.ib_device* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*)* }
%struct.ib_pd = type { i32 }
%struct.ib_qp_init_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ib_uobject = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_QPT_XRC_INI = common dso_local global i32 0, align 4
@IB_QPT_XRC_TGT = common dso_local global i32 0, align 4
@IB_QPT_MAX = common dso_local global i32 0, align 4
@IB_QPT_DRIVER = common dso_local global i32 0, align 4
@RDMA_RESTRACK_QP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.ib_device*, %struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*, %struct.ib_uobject*)* @_ib_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @_ib_create_qp(%struct.ib_device* %0, %struct.ib_pd* %1, %struct.ib_qp_init_attr* %2, %struct.ib_udata* %3, %struct.ib_uobject* %4) #0 {
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca %struct.ib_qp_init_attr*, align 8
  %10 = alloca %struct.ib_udata*, align 8
  %11 = alloca %struct.ib_uobject*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_qp*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %8, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %9, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %10, align 8
  store %struct.ib_uobject* %4, %struct.ib_uobject** %11, align 8
  %15 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %16 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*)*, %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*)** %20, align 8
  %22 = icmp ne %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*)* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ib_qp* @ERR_PTR(i32 %25)
  store %struct.ib_qp* %26, %struct.ib_qp** %6, align 8
  br label %96

27:                                               ; preds = %5
  %28 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %29 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*)*, %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*)** %30, align 8
  %32 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %33 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %34 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %35 = call %struct.ib_qp* %31(%struct.ib_pd* %32, %struct.ib_qp_init_attr* %33, %struct.ib_udata* %34)
  store %struct.ib_qp* %35, %struct.ib_qp** %13, align 8
  %36 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %37 = call i64 @IS_ERR(%struct.ib_qp* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  store %struct.ib_qp* %40, %struct.ib_qp** %6, align 8
  br label %96

41:                                               ; preds = %27
  %42 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %43 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %44 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %43, i32 0, i32 4
  store %struct.ib_device* %42, %struct.ib_device** %44, align 8
  %45 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %46 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %47 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %46, i32 0, i32 3
  store %struct.ib_pd* %45, %struct.ib_pd** %47, align 8
  %48 = load %struct.ib_uobject*, %struct.ib_uobject** %11, align 8
  %49 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %50 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %49, i32 0, i32 2
  store %struct.ib_uobject* %48, %struct.ib_uobject** %50, align 8
  %51 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %52 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %53 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %52, i32 0, i32 1
  store %struct.ib_qp* %51, %struct.ib_qp** %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @IB_QPT_XRC_INI, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @IB_QPT_XRC_TGT, align 4
  %60 = icmp eq i32 %58, %59
  br label %61

61:                                               ; preds = %57, %41
  %62 = phi i1 [ true, %41 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @IB_QPT_MAX, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @IB_QPT_DRIVER, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70, %67
  %75 = load i32, i32* @RDMA_RESTRACK_QP, align 4
  %76 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %77 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.ib_uobject*, %struct.ib_uobject** %11, align 8
  %80 = icmp ne %struct.ib_uobject* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %83 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %82, i32 0, i32 0
  %84 = call i32 @rdma_restrack_uadd(%struct.TYPE_5__* %83)
  br label %89

85:                                               ; preds = %74
  %86 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %87 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %86, i32 0, i32 0
  %88 = call i32 @rdma_restrack_kadd(%struct.TYPE_5__* %87)
  br label %89

89:                                               ; preds = %85, %81
  br label %94

90:                                               ; preds = %70
  %91 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  %92 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %89
  %95 = load %struct.ib_qp*, %struct.ib_qp** %13, align 8
  store %struct.ib_qp* %95, %struct.ib_qp** %6, align 8
  br label %96

96:                                               ; preds = %94, %39, %23
  %97 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  ret %struct.ib_qp* %97
}

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @rdma_restrack_uadd(%struct.TYPE_5__*) #1

declare dso_local i32 @rdma_restrack_kadd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
