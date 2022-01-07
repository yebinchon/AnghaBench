; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_allocate_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_allocate_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.c4iw_pd = type { i32, i32, %struct.c4iw_dev* }
%struct.c4iw_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.c4iw_alloc_pd_resp = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ibdev %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"pdid 0x%0x ptr 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.ib_udata*)* @c4iw_allocate_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_allocate_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.c4iw_pd*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.c4iw_dev*, align 8
  %10 = alloca %struct.c4iw_alloc_pd_resp, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %12 = call %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd* %11)
  store %struct.c4iw_pd* %12, %struct.c4iw_pd** %6, align 8
  %13 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  store %struct.ib_device* %15, %struct.ib_device** %7, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %17 = ptrtoint %struct.ib_device* %16 to i32
  %18 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %20 = bitcast %struct.ib_device* %19 to %struct.c4iw_dev*
  store %struct.c4iw_dev* %20, %struct.c4iw_dev** %9, align 8
  %21 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %22 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @c4iw_get_resource(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %103

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %34 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %36 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %37 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %36, i32 0, i32 2
  store %struct.c4iw_dev* %35, %struct.c4iw_dev** %37, align 8
  %38 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %39 = icmp ne %struct.ib_udata* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.c4iw_alloc_pd_resp, %struct.c4iw_alloc_pd_resp* %10, i32 0, i32 0
  %42 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %43 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %41, align 4
  %45 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %46 = call i64 @ib_copy_to_udata(%struct.ib_udata* %45, %struct.c4iw_alloc_pd_resp* %10, i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %50 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %49, i32 0, i32 0
  %51 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %52 = call i32 @c4iw_deallocate_pd(i32* %50, %struct.ib_udata* %51)
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %103

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %58 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %63 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %70 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %76 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %74, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %56
  %83 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %84 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %90 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i64 %88, i64* %93, align 8
  br label %94

94:                                               ; preds = %82, %56
  %95 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %96 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.c4iw_pd*, %struct.c4iw_pd** %6, align 8
  %102 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %100, %struct.c4iw_pd* %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %94, %48, %28
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @c4iw_get_resource(i32*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, %struct.c4iw_alloc_pd_resp*, i32) #1

declare dso_local i32 @c4iw_deallocate_pd(i32*, %struct.ib_udata*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
