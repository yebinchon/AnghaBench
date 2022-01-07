; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, %struct.TYPE_6__, i64, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32, i32, i32 }
%struct.ib_qp_init_attr = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.i40iw_qp = type { %struct.TYPE_5__, i32, %struct.i40iw_sc_qp }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.i40iw_sc_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@I40IW_MAX_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@I40IW_MAX_WQ_FRAGMENT_COUNT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* @i40iw_query_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.i40iw_qp*, align 8
  %10 = alloca %struct.i40iw_sc_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %11 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %12 = call %struct.i40iw_qp* @to_iwqp(%struct.ib_qp* %11)
  store %struct.i40iw_qp* %12, %struct.i40iw_qp** %9, align 8
  %13 = load %struct.i40iw_qp*, %struct.i40iw_qp** %9, align 8
  %14 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %13, i32 0, i32 2
  store %struct.i40iw_sc_qp* %14, %struct.i40iw_sc_qp** %10, align 8
  %15 = load %struct.i40iw_qp*, %struct.i40iw_qp** %9, align 8
  %16 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %19 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %24 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %26 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %10, align 8
  %28 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 8
  %34 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %10, align 8
  %35 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @I40IW_MAX_INLINE_DATA_SIZE, align 4
  %42 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load i8*, i8** @I40IW_MAX_WQ_FRAGMENT_COUNT, align 8
  %46 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %47 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** @I40IW_MAX_WQ_FRAGMENT_COUNT, align 8
  %50 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %51 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %54 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.i40iw_qp*, %struct.i40iw_qp** %9, align 8
  %56 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %60 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.i40iw_qp*, %struct.i40iw_qp** %9, align 8
  %62 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %66 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.i40iw_qp*, %struct.i40iw_qp** %9, align 8
  %68 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %72 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.i40iw_qp*, %struct.i40iw_qp** %9, align 8
  %74 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %78 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.i40iw_qp*, %struct.i40iw_qp** %9, align 8
  %80 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %84 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %86 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %85, i32 0, i32 1
  %87 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %88 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %87, i32 0, i32 1
  %89 = bitcast %struct.TYPE_6__* %86 to i8*
  %90 = bitcast %struct.TYPE_6__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 32, i1 false)
  %91 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %92 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  ret i32 0
}

declare dso_local %struct.i40iw_qp* @to_iwqp(%struct.ib_qp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
