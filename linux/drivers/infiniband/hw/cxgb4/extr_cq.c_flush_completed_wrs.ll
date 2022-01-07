; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_flush_completed_wrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_flush_completed_wrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.t4_swsqe* }
%struct.t4_swsqe = type { i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.t4_cq = type { i64, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [42 x i8] c"moving cqe into swcq sq idx %u cq idx %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_wq*, %struct.t4_cq*)* @flush_completed_wrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_completed_wrs(%struct.t4_wq* %0, %struct.t4_cq* %1) #0 {
  %3 = alloca %struct.t4_wq*, align 8
  %4 = alloca %struct.t4_cq*, align 8
  %5 = alloca %struct.t4_swsqe*, align 8
  %6 = alloca i32, align 4
  store %struct.t4_wq* %0, %struct.t4_wq** %3, align 8
  store %struct.t4_cq* %1, %struct.t4_cq** %4, align 8
  %7 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %8 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %14 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %18 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %22 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %102, %20
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %28 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %103

32:                                               ; preds = %25
  %33 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %34 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load %struct.t4_swsqe*, %struct.t4_swsqe** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %36, i64 %38
  store %struct.t4_swsqe* %39, %struct.t4_swsqe** %5, align 8
  %40 = load %struct.t4_swsqe*, %struct.t4_swsqe** %5, align 8
  %41 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %48 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %44
  br label %102

54:                                               ; preds = %32
  %55 = load %struct.t4_swsqe*, %struct.t4_swsqe** %5, align 8
  %56 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.t4_cq*, %struct.t4_cq** %4, align 8
  %62 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %63)
  %65 = call i32 @CQE_SWCQE_V(i32 1)
  %66 = call i32 @htonl(i32 %65)
  %67 = load %struct.t4_swsqe*, %struct.t4_swsqe** %5, align 8
  %68 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.t4_cq*, %struct.t4_cq** %4, align 8
  %73 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load %struct.t4_cq*, %struct.t4_cq** %4, align 8
  %76 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %77
  %79 = load %struct.t4_swsqe*, %struct.t4_swsqe** %5, align 8
  %80 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %79, i32 0, i32 1
  %81 = bitcast %struct.TYPE_3__* %78 to i8*
  %82 = bitcast %struct.TYPE_3__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 4, i1 false)
  %83 = load %struct.t4_cq*, %struct.t4_cq** %4, align 8
  %84 = call i32 @t4_swcq_produce(%struct.t4_cq* %83)
  %85 = load %struct.t4_swsqe*, %struct.t4_swsqe** %5, align 8
  %86 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %90 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %59
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %98 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %101

100:                                              ; preds = %54
  br label %103

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %53
  br label %25

103:                                              ; preds = %100, %25
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @CQE_SWCQE_V(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @t4_swcq_produce(%struct.t4_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
