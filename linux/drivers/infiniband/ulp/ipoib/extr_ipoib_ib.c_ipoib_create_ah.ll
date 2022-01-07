; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_ah = type { %struct.ib_ah*, i32, i64, %struct.net_device* }
%struct.ib_ah = type { i32 }
%struct.net_device = type { i32 }
%struct.ib_pd = type { i32 }
%struct.rdma_ah_attr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_CREATE_AH_SLEEPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Created ah %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipoib_ah* @ipoib_create_ah(%struct.net_device* %0, %struct.ib_pd* %1, %struct.rdma_ah_attr* %2) #0 {
  %4 = alloca %struct.ipoib_ah*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca %struct.ipoib_ah*, align 8
  %9 = alloca %struct.ib_ah*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %6, align 8
  store %struct.rdma_ah_attr* %2, %struct.rdma_ah_attr** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ipoib_ah* @kmalloc(i32 32, i32 %10)
  store %struct.ipoib_ah* %11, %struct.ipoib_ah** %8, align 8
  %12 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %13 = icmp ne %struct.ipoib_ah* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ipoib_ah* @ERR_PTR(i32 %16)
  store %struct.ipoib_ah* %17, %struct.ipoib_ah** %4, align 8
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %21 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %20, i32 0, i32 3
  store %struct.net_device* %19, %struct.net_device** %21, align 8
  %22 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %23 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %25 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %24, i32 0, i32 1
  %26 = call i32 @kref_init(i32* %25)
  %27 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %28 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %29 = load i32, i32* @RDMA_CREATE_AH_SLEEPABLE, align 4
  %30 = call %struct.ib_ah* @rdma_create_ah(%struct.ib_pd* %27, %struct.rdma_ah_attr* %28, i32 %29)
  store %struct.ib_ah* %30, %struct.ib_ah** %9, align 8
  %31 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %32 = call i64 @IS_ERR(%struct.ib_ah* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %36 = call i32 @kfree(%struct.ipoib_ah* %35)
  %37 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %38 = bitcast %struct.ib_ah* %37 to %struct.ipoib_ah*
  store %struct.ipoib_ah* %38, %struct.ipoib_ah** %8, align 8
  br label %49

39:                                               ; preds = %18
  %40 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %41 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %42 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %41, i32 0, i32 0
  store %struct.ib_ah* %40, %struct.ib_ah** %42, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @ipoib_priv(%struct.net_device* %43)
  %45 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %46 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %45, i32 0, i32 0
  %47 = load %struct.ib_ah*, %struct.ib_ah** %46, align 8
  %48 = call i32 @ipoib_dbg(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.ib_ah* %47)
  br label %49

49:                                               ; preds = %39, %34
  %50 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  store %struct.ipoib_ah* %50, %struct.ipoib_ah** %4, align 8
  br label %51

51:                                               ; preds = %49, %14
  %52 = load %struct.ipoib_ah*, %struct.ipoib_ah** %4, align 8
  ret %struct.ipoib_ah* %52
}

declare dso_local %struct.ipoib_ah* @kmalloc(i32, i32) #1

declare dso_local %struct.ipoib_ah* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local %struct.ib_ah* @rdma_create_ah(%struct.ib_pd*, %struct.rdma_ah_attr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_ah*) #1

declare dso_local i32 @kfree(%struct.ipoib_ah*) #1

declare dso_local i32 @ipoib_dbg(i32, i8*, %struct.ib_ah*) #1

declare dso_local i32 @ipoib_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
