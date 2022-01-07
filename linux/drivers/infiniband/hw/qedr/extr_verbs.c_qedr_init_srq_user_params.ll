; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_init_srq_user_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_init_srq_user_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_udata = type { i32 }
%struct.qedr_srq = type { %struct.TYPE_8__, %struct.TYPE_10__*, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.qedr_create_srq_ureq = type { i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"create srq: failed ib_umem_get for producer, got %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_udata*, %struct.qedr_srq*, %struct.qedr_create_srq_ureq*, i32, i32)* @qedr_init_srq_user_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_init_srq_user_params(%struct.ib_udata* %0, %struct.qedr_srq* %1, %struct.qedr_create_srq_ureq* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.qedr_srq*, align 8
  %9 = alloca %struct.qedr_create_srq_ureq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_udata* %0, %struct.ib_udata** %7, align 8
  store %struct.qedr_srq* %1, %struct.qedr_srq** %8, align 8
  store %struct.qedr_create_srq_ureq* %2, %struct.qedr_create_srq_ureq** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %15 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %16 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %19 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %18, i32 0, i32 3
  %20 = load %struct.qedr_create_srq_ureq*, %struct.qedr_create_srq_ureq** %9, align 8
  %21 = getelementptr inbounds %struct.qedr_create_srq_ureq, %struct.qedr_create_srq_ureq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qedr_create_srq_ureq*, %struct.qedr_create_srq_ureq** %9, align 8
  %24 = getelementptr inbounds %struct.qedr_create_srq_ureq, %struct.qedr_create_srq_ureq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @qedr_init_user_queue(%struct.ib_udata* %14, i32 %17, %struct.TYPE_9__* %19, i32 %22, i32 %25, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %89

33:                                               ; preds = %5
  %34 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %35 = load %struct.qedr_create_srq_ureq*, %struct.qedr_create_srq_ureq** %9, align 8
  %36 = getelementptr inbounds %struct.qedr_create_srq_ureq, %struct.qedr_create_srq_ureq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.TYPE_10__* @ib_umem_get(%struct.ib_udata* %34, i32 %37, i32 4, i32 %38, i32 %39)
  %41 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %42 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %41, i32 0, i32 1
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %44 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = call i64 @IS_ERR(%struct.TYPE_10__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %33
  %49 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %50 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %53 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %56 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @qedr_free_pbl(i32 %51, i32* %54, i32 %58)
  %60 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %61 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ib_umem_release(i32 %63)
  %65 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %66 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %69 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = call i32 @PTR_ERR(%struct.TYPE_10__* %70)
  %72 = call i32 @DP_ERR(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %74 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.TYPE_10__* %75)
  store i32 %76, i32* %6, align 4
  br label %89

77:                                               ; preds = %33
  %78 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %79 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.scatterlist*, %struct.scatterlist** %82, align 8
  store %struct.scatterlist* %83, %struct.scatterlist** %12, align 8
  %84 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %85 = call i32 @sg_dma_address(%struct.scatterlist* %84)
  %86 = load %struct.qedr_srq*, %struct.qedr_srq** %8, align 8
  %87 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %77, %48, %31
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @qedr_init_user_queue(%struct.ib_udata*, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @ib_umem_get(%struct.ib_udata*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @qedr_free_pbl(i32, i32*, i32) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @DP_ERR(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
