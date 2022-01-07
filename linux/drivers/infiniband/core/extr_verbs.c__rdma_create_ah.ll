; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c__rdma_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c__rdma_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32, i32, %struct.ib_pd*, %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ib_ah.0*, %struct.rdma_ah_attr*, i32, %struct.ib_udata*)* }
%struct.ib_ah.0 = type opaque
%struct.ib_pd = type { i32, %struct.ib_device* }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_udata = type { i32 }

@RDMA_CREATE_AH_SLEEPABLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ib_ah = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.ib_pd*, %struct.rdma_ah_attr*, i32, %struct.ib_udata*)* @_rdma_create_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @_rdma_create_ah(%struct.ib_pd* %0, %struct.rdma_ah_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_ah*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca %struct.ib_ah*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %13 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 1
  %15 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  store %struct.ib_device* %15, %struct.ib_device** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @RDMA_CREATE_AH_SLEEPABLE, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @might_sleep_if(i32 %18)
  %20 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %21 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ib_ah.0*, %struct.rdma_ah_attr*, i32, %struct.ib_udata*)*, i32 (%struct.ib_ah.0*, %struct.rdma_ah_attr*, i32, %struct.ib_udata*)** %22, align 8
  %24 = icmp ne i32 (%struct.ib_ah.0*, %struct.rdma_ah_attr*, i32, %struct.ib_udata*)* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.ib_ah* @ERR_PTR(i32 %27)
  store %struct.ib_ah* %28, %struct.ib_ah** %5, align 8
  br label %87

29:                                               ; preds = %4
  %30 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %31 = load i32, i32* @ib_ah, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RDMA_CREATE_AH_SLEEPABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @GFP_KERNEL, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call %struct.ib_ah* @rdma_zalloc_drv_obj_gfp(%struct.ib_device* %30, i32 %31, i32 %41)
  store %struct.ib_ah* %42, %struct.ib_ah** %11, align 8
  %43 = load %struct.ib_ah*, %struct.ib_ah** %11, align 8
  %44 = icmp ne %struct.ib_ah* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.ib_ah* @ERR_PTR(i32 %47)
  store %struct.ib_ah* %48, %struct.ib_ah** %5, align 8
  br label %87

49:                                               ; preds = %40
  %50 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %51 = load %struct.ib_ah*, %struct.ib_ah** %11, align 8
  %52 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %51, i32 0, i32 3
  store %struct.ib_device* %50, %struct.ib_device** %52, align 8
  %53 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %54 = load %struct.ib_ah*, %struct.ib_ah** %11, align 8
  %55 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %54, i32 0, i32 2
  store %struct.ib_pd* %53, %struct.ib_pd** %55, align 8
  %56 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %57 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_ah*, %struct.ib_ah** %11, align 8
  %60 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %62 = call i32 @rdma_update_sgid_attr(%struct.rdma_ah_attr* %61, i32* null)
  %63 = load %struct.ib_ah*, %struct.ib_ah** %11, align 8
  %64 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %66 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.ib_ah.0*, %struct.rdma_ah_attr*, i32, %struct.ib_udata*)*, i32 (%struct.ib_ah.0*, %struct.rdma_ah_attr*, i32, %struct.ib_udata*)** %67, align 8
  %69 = load %struct.ib_ah*, %struct.ib_ah** %11, align 8
  %70 = bitcast %struct.ib_ah* %69 to %struct.ib_ah.0*
  %71 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %74 = call i32 %68(%struct.ib_ah.0* %70, %struct.rdma_ah_attr* %71, i32 %72, %struct.ib_udata* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %49
  %78 = load %struct.ib_ah*, %struct.ib_ah** %11, align 8
  %79 = call i32 @kfree(%struct.ib_ah* %78)
  %80 = load i32, i32* %12, align 4
  %81 = call %struct.ib_ah* @ERR_PTR(i32 %80)
  store %struct.ib_ah* %81, %struct.ib_ah** %5, align 8
  br label %87

82:                                               ; preds = %49
  %83 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %84 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %83, i32 0, i32 0
  %85 = call i32 @atomic_inc(i32* %84)
  %86 = load %struct.ib_ah*, %struct.ib_ah** %11, align 8
  store %struct.ib_ah* %86, %struct.ib_ah** %5, align 8
  br label %87

87:                                               ; preds = %82, %77, %45, %25
  %88 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  ret %struct.ib_ah* %88
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local %struct.ib_ah* @rdma_zalloc_drv_obj_gfp(%struct.ib_device*, i32, i32) #1

declare dso_local i32 @rdma_update_sgid_attr(%struct.rdma_ah_attr*, i32*) #1

declare dso_local i32 @kfree(%struct.ib_ah*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
