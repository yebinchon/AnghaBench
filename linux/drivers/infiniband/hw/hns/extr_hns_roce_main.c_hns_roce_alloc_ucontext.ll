; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_ucontext = type { i32, i32, i32 }
%struct.hns_roce_ib_alloc_ucontext_resp = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_RECORD_DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.ib_udata*)* @hns_roce_alloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_ucontext*, align 8
  %8 = alloca %struct.hns_roce_ib_alloc_ucontext_resp, align 4
  %9 = alloca %struct.hns_roce_dev*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %10 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %11 = call %struct.hns_roce_ucontext* @to_hr_ucontext(%struct.ib_ucontext* %10)
  store %struct.hns_roce_ucontext* %11, %struct.hns_roce_ucontext** %7, align 8
  %12 = bitcast %struct.hns_roce_ib_alloc_ucontext_resp* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %14 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hns_roce_dev* @to_hr_dev(i32 %15)
  store %struct.hns_roce_dev* %16, %struct.hns_roce_dev** %9, align 8
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %66

24:                                               ; preds = %2
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %26 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.hns_roce_ib_alloc_ucontext_resp, %struct.hns_roce_ib_alloc_ucontext_resp* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %31 = load %struct.hns_roce_ucontext*, %struct.hns_roce_ucontext** %7, align 8
  %32 = getelementptr inbounds %struct.hns_roce_ucontext, %struct.hns_roce_ucontext* %31, i32 0, i32 0
  %33 = call i32 @hns_roce_uar_alloc(%struct.hns_roce_dev* %30, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %64

37:                                               ; preds = %24
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %39 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HNS_ROCE_CAP_FLAG_RECORD_DB, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.hns_roce_ucontext*, %struct.hns_roce_ucontext** %7, align 8
  %47 = getelementptr inbounds %struct.hns_roce_ucontext, %struct.hns_roce_ucontext* %46, i32 0, i32 2
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.hns_roce_ucontext*, %struct.hns_roce_ucontext** %7, align 8
  %50 = getelementptr inbounds %struct.hns_roce_ucontext, %struct.hns_roce_ucontext* %49, i32 0, i32 1
  %51 = call i32 @mutex_init(i32* %50)
  br label %52

52:                                               ; preds = %45, %37
  %53 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %54 = call i32 @ib_copy_to_udata(%struct.ib_udata* %53, %struct.hns_roce_ib_alloc_ucontext_resp* %8, i32 4)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %59

58:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %66

59:                                               ; preds = %57
  %60 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %61 = load %struct.hns_roce_ucontext*, %struct.hns_roce_ucontext** %7, align 8
  %62 = getelementptr inbounds %struct.hns_roce_ucontext, %struct.hns_roce_ucontext* %61, i32 0, i32 0
  %63 = call i32 @hns_roce_uar_free(%struct.hns_roce_dev* %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %36
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %58, %21
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.hns_roce_ucontext* @to_hr_ucontext(%struct.ib_ucontext*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local i32 @hns_roce_uar_alloc(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.hns_roce_ib_alloc_ucontext_resp*, i32) #1

declare dso_local i32 @hns_roce_uar_free(%struct.hns_roce_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
