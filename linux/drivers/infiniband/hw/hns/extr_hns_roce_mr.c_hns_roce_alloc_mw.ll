; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_alloc_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_alloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hns_roce_mw = type { %struct.ib_mw, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mw* @hns_roce_alloc_mw(%struct.ib_pd* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_mw*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_mw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %12 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %13 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hns_roce_dev* @to_hr_dev(i32 %14)
  store %struct.hns_roce_dev* %15, %struct.hns_roce_dev** %8, align 8
  store i64 0, i64* %10, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.hns_roce_mw* @kmalloc(i32 28, i32 %16)
  store %struct.hns_roce_mw* %17, %struct.hns_roce_mw** %9, align 8
  %18 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %19 = icmp ne %struct.hns_roce_mw* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ib_mw* @ERR_PTR(i32 %22)
  store %struct.ib_mw* %23, %struct.ib_mw** %4, align 8
  br label %89

24:                                               ; preds = %3
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %26 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @hns_roce_bitmap_alloc(i32* %27, i64* %10)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %84

32:                                               ; preds = %24
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @hw_index_to_key(i64 %33)
  %35 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %36 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %38 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %41 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %45 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %48 = call %struct.TYPE_6__* @to_hr_pd(%struct.ib_pd* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %52 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %54 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %58 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %60 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %64 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %66 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %70 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %72 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %73 = call i32 @hns_roce_mw_enable(%struct.hns_roce_dev* %71, %struct.hns_roce_mw* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %32
  br label %80

77:                                               ; preds = %32
  %78 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %79 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %78, i32 0, i32 0
  store %struct.ib_mw* %79, %struct.ib_mw** %4, align 8
  br label %89

80:                                               ; preds = %76
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %82 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %83 = call i32 @hns_roce_mw_free(%struct.hns_roce_dev* %81, %struct.hns_roce_mw* %82)
  br label %84

84:                                               ; preds = %80, %31
  %85 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %9, align 8
  %86 = call i32 @kfree(%struct.hns_roce_mw* %85)
  %87 = load i32, i32* %11, align 4
  %88 = call %struct.ib_mw* @ERR_PTR(i32 %87)
  store %struct.ib_mw* %88, %struct.ib_mw** %4, align 8
  br label %89

89:                                               ; preds = %84, %77, %20
  %90 = load %struct.ib_mw*, %struct.ib_mw** %4, align 8
  ret %struct.ib_mw* %90
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_mw* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_mw* @ERR_PTR(i32) #1

declare dso_local i32 @hns_roce_bitmap_alloc(i32*, i64*) #1

declare dso_local i32 @hw_index_to_key(i64) #1

declare dso_local %struct.TYPE_6__* @to_hr_pd(%struct.ib_pd*) #1

declare dso_local i32 @hns_roce_mw_enable(%struct.hns_roce_dev*, %struct.hns_roce_mw*) #1

declare dso_local i32 @hns_roce_mw_free(%struct.hns_roce_dev*, %struct.hns_roce_mw*) #1

declare dso_local i32 @kfree(%struct.hns_roce_mw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
