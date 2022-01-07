; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i64 }
%struct.efa_ucontext = type { i32, i32 }
%struct.efa_dev = type { %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.efa_ibv_alloc_ucontext_resp = type { i32, i32, i32, i32 }
%struct.efa_com_alloc_uar_result = type { i32 }

@EFA_USER_CMDS_SUPP_UDATA_QUERY_DEVICE = common dso_local global i32 0, align 4
@EFA_USER_CMDS_SUPP_UDATA_CREATE_AH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.efa_ucontext*, align 8
  %7 = alloca %struct.efa_dev*, align 8
  %8 = alloca %struct.efa_ibv_alloc_ucontext_resp, align 4
  %9 = alloca %struct.efa_com_alloc_uar_result, align 4
  %10 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %11 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %12 = call %struct.efa_ucontext* @to_eucontext(%struct.ib_ucontext* %11)
  store %struct.efa_ucontext* %12, %struct.efa_ucontext** %6, align 8
  %13 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %14 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.efa_dev* @to_edev(i32 %15)
  store %struct.efa_dev* %16, %struct.efa_dev** %7, align 8
  %17 = bitcast %struct.efa_ibv_alloc_ucontext_resp* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %19 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %18, i32 0, i32 2
  %20 = call i32 @efa_com_alloc_uar(i32* %19, %struct.efa_com_alloc_uar_result* %9)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %79

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.efa_com_alloc_uar_result, %struct.efa_com_alloc_uar_result* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.efa_ucontext*, %struct.efa_ucontext** %6, align 8
  %28 = getelementptr inbounds %struct.efa_ucontext, %struct.efa_ucontext* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.efa_ucontext*, %struct.efa_ucontext** %6, align 8
  %30 = getelementptr inbounds %struct.efa_ucontext, %struct.efa_ucontext* %29, i32 0, i32 0
  %31 = call i32 @xa_init(i32* %30)
  %32 = load i32, i32* @EFA_USER_CMDS_SUPP_UDATA_QUERY_DEVICE, align 4
  %33 = getelementptr inbounds %struct.efa_ibv_alloc_ucontext_resp, %struct.efa_ibv_alloc_ucontext_resp* %8, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @EFA_USER_CMDS_SUPP_UDATA_CREATE_AH, align 4
  %37 = getelementptr inbounds %struct.efa_ibv_alloc_ucontext_resp, %struct.efa_ibv_alloc_ucontext_resp* %8, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %41 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.efa_ibv_alloc_ucontext_resp, %struct.efa_ibv_alloc_ucontext_resp* %8, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %46 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.efa_ibv_alloc_ucontext_resp, %struct.efa_ibv_alloc_ucontext_resp* %8, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %51 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.efa_ibv_alloc_ucontext_resp, %struct.efa_ibv_alloc_ucontext_resp* %8, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %56 = icmp ne %struct.ib_udata* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %24
  %58 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %59 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %64 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %65 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @min(i32 16, i64 %66)
  %68 = call i32 @ib_copy_to_udata(%struct.ib_udata* %63, %struct.efa_ibv_alloc_ucontext_resp* %8, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %74

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %57, %24
  store i32 0, i32* %3, align 4
  br label %86

74:                                               ; preds = %71
  %75 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %76 = getelementptr inbounds %struct.efa_com_alloc_uar_result, %struct.efa_com_alloc_uar_result* %9, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @efa_dealloc_uar(%struct.efa_dev* %75, i32 %77)
  br label %79

79:                                               ; preds = %74, %23
  %80 = load %struct.efa_dev*, %struct.efa_dev** %7, align 8
  %81 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = call i32 @atomic64_inc(i32* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %73
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.efa_ucontext* @to_eucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.efa_dev* @to_edev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @efa_com_alloc_uar(i32*, %struct.efa_com_alloc_uar_result*) #1

declare dso_local i32 @xa_init(i32*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.efa_ibv_alloc_ucontext_resp*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @efa_dealloc_uar(%struct.efa_dev*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
