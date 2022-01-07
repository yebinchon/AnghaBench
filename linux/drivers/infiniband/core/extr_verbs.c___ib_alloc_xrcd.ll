; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_alloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_alloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32, i32, i32, i32*, %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ib_xrcd* (%struct.ib_device*, i32*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_xrcd* @__ib_alloc_xrcd(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_xrcd*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ib_xrcd*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ib_xrcd* (%struct.ib_device*, i32*)*, %struct.ib_xrcd* (%struct.ib_device*, i32*)** %9, align 8
  %11 = icmp ne %struct.ib_xrcd* (%struct.ib_device*, i32*)* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.ib_xrcd* @ERR_PTR(i32 %14)
  store %struct.ib_xrcd* %15, %struct.ib_xrcd** %3, align 8
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %18 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ib_xrcd* (%struct.ib_device*, i32*)*, %struct.ib_xrcd* (%struct.ib_device*, i32*)** %19, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %22 = call %struct.ib_xrcd* %20(%struct.ib_device* %21, i32* null)
  store %struct.ib_xrcd* %22, %struct.ib_xrcd** %6, align 8
  %23 = load %struct.ib_xrcd*, %struct.ib_xrcd** %6, align 8
  %24 = call i32 @IS_ERR(%struct.ib_xrcd* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %16
  %27 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %28 = load %struct.ib_xrcd*, %struct.ib_xrcd** %6, align 8
  %29 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %28, i32 0, i32 4
  store %struct.ib_device* %27, %struct.ib_device** %29, align 8
  %30 = load %struct.ib_xrcd*, %struct.ib_xrcd** %6, align 8
  %31 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.ib_xrcd*, %struct.ib_xrcd** %6, align 8
  %33 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %32, i32 0, i32 2
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.ib_xrcd*, %struct.ib_xrcd** %6, align 8
  %36 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %35, i32 0, i32 1
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.ib_xrcd*, %struct.ib_xrcd** %6, align 8
  %39 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  br label %41

41:                                               ; preds = %26, %16
  %42 = load %struct.ib_xrcd*, %struct.ib_xrcd** %6, align 8
  store %struct.ib_xrcd* %42, %struct.ib_xrcd** %3, align 8
  br label %43

43:                                               ; preds = %41, %12
  %44 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  ret %struct.ib_xrcd* %44
}

declare dso_local %struct.ib_xrcd* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_xrcd*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
