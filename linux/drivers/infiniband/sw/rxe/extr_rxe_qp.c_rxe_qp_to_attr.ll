; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_to_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_to_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.ib_qp_attr }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@QP_STATE_DRAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"attr->sq_draining = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_qp_to_attr(%struct.rxe_qp* %0, %struct.ib_qp_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %8 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %9 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %8, i32 0, i32 7
  %10 = bitcast %struct.ib_qp_attr* %7 to i8*
  %11 = bitcast %struct.ib_qp_attr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 40, i1 false)
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %13 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %17 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %19 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %23 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %25 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %29 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %32 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %36 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %39 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %46 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %3
  %50 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %51 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %55 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %58 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %62 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %49, %3
  %65 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %66 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %65, i32 0, i32 2
  %67 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %68 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %67, i32 0, i32 2
  %69 = call i32 @rxe_av_to_attr(i32* %66, i32* %68)
  %70 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %71 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %70, i32 0, i32 1
  %72 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %73 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %72, i32 0, i32 1
  %74 = call i32 @rxe_av_to_attr(i32* %71, i32* %73)
  %75 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %76 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @QP_STATE_DRAIN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %64
  %82 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %83 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  %84 = call i32 (...) @cond_resched()
  br label %88

85:                                               ; preds = %64
  %86 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %87 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %90 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %91)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rxe_av_to_attr(i32*, i32*) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
