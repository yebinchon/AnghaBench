; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_alloc_ucontext_resp = type { i64, i32 }
%struct.mthca_ucontext = type { i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.ib_udata*)* @mthca_alloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.mthca_alloc_ucontext_resp, align 8
  %8 = alloca %struct.mthca_ucontext*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %10 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %11 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %10, i32 0, i32 0
  %12 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  store %struct.ib_device* %12, %struct.ib_device** %6, align 8
  %13 = bitcast %struct.mthca_alloc_ucontext_resp* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %15 = call %struct.mthca_ucontext* @to_mucontext(%struct.ib_ucontext* %14)
  store %struct.mthca_ucontext* %15, %struct.mthca_ucontext** %8, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %99

24:                                               ; preds = %2
  %25 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %26 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.mthca_alloc_ucontext_resp, %struct.mthca_alloc_ucontext_resp* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %32 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %31)
  %33 = call i64 @mthca_is_memfree(%struct.TYPE_11__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %37 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.mthca_alloc_ucontext_resp, %struct.mthca_alloc_ucontext_resp* %7, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  br label %44

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.mthca_alloc_ucontext_resp, %struct.mthca_alloc_ucontext_resp* %7, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %46 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %45)
  %47 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %8, align 8
  %48 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %47, i32 0, i32 1
  %49 = call i32 @mthca_uar_alloc(%struct.TYPE_11__* %46, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %99

54:                                               ; preds = %44
  %55 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %56 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %55)
  %57 = call i32 @mthca_init_user_db_tab(%struct.TYPE_11__* %56)
  %58 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %8, align 8
  %59 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %8, align 8
  %61 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %54
  %66 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %8, align 8
  %67 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %71 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %70)
  %72 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %8, align 8
  %73 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %72, i32 0, i32 1
  %74 = call i32 @mthca_uar_free(%struct.TYPE_11__* %71, i32* %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %99

76:                                               ; preds = %54
  %77 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %78 = call i64 @ib_copy_to_udata(%struct.ib_udata* %77, %struct.mthca_alloc_ucontext_resp* %7, i32 16)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %82 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %81)
  %83 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %8, align 8
  %84 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %83, i32 0, i32 1
  %85 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %8, align 8
  %86 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mthca_cleanup_user_db_tab(%struct.TYPE_11__* %82, i32* %84, i32 %87)
  %89 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %90 = call %struct.TYPE_11__* @to_mdev(%struct.ib_device* %89)
  %91 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %8, align 8
  %92 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %91, i32 0, i32 1
  %93 = call i32 @mthca_uar_free(%struct.TYPE_11__* %90, i32* %92)
  %94 = load i32, i32* @EFAULT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %99

96:                                               ; preds = %76
  %97 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %8, align 8
  %98 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %80, %65, %52, %21
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mthca_ucontext* @to_mucontext(%struct.ib_ucontext*) #2

declare dso_local %struct.TYPE_11__* @to_mdev(%struct.ib_device*) #2

declare dso_local i64 @mthca_is_memfree(%struct.TYPE_11__*) #2

declare dso_local i32 @mthca_uar_alloc(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @mthca_init_user_db_tab(%struct.TYPE_11__*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @mthca_uar_free(%struct.TYPE_11__*, i32*) #2

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, %struct.mthca_alloc_ucontext_resp*, i32) #2

declare dso_local i32 @mthca_cleanup_user_db_tab(%struct.TYPE_11__*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
