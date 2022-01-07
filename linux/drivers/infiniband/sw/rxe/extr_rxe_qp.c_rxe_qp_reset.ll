; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32*, i64, i64, i64, i64, i8* }

@IB_QPT_RC = common dso_local global i64 0, align 8
@QP_STATE_RESET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*)* @rxe_qp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_qp_reset(%struct.rxe_qp* %0) #0 {
  %2 = alloca %struct.rxe_qp*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %2, align 8
  %3 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %4 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = call i32 @rxe_disable_task(i32* %5)
  %7 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %8 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %14 = call i64 @qp_type(%struct.rxe_qp* %13)
  %15 = load i64, i64* @IB_QPT_RC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %19 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @rxe_disable_task(i32* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %24 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = call i32 @rxe_disable_task(i32* %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i8*, i8** @QP_STATE_RESET, align 8
  %29 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %30 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** @QP_STATE_RESET, align 8
  %33 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %34 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  store i8* %32, i8** %35, align 8
  %36 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %37 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = call i32 @__rxe_do_task(i32* %38)
  %40 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %41 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %27
  %46 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %47 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @__rxe_do_task(i32* %48)
  %50 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %51 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = call i32 @__rxe_do_task(i32* %52)
  %54 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %55 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @rxe_queue_reset(i64 %57)
  br label %59

59:                                               ; preds = %45, %27
  %60 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %61 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %60, i32 0, i32 4
  %62 = call i32 @atomic_set(i32* %61, i32 0)
  %63 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %64 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  %66 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %67 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %70 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %73 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %76 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 8
  %78 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %79 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %82 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %85 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %88 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %59
  %93 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %94 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @rxe_drop_ref(i32* %96)
  %98 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %99 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %92, %59
  %102 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %103 = call i32 @cleanup_rd_atomic_resources(%struct.rxe_qp* %102)
  %104 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %105 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = call i32 @rxe_enable_task(i32* %106)
  %108 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %109 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %101
  %114 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %115 = call i64 @qp_type(%struct.rxe_qp* %114)
  %116 = load i64, i64* @IB_QPT_RC, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %120 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = call i32 @rxe_enable_task(i32* %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %125 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = call i32 @rxe_enable_task(i32* %126)
  br label %128

128:                                              ; preds = %123, %101
  ret void
}

declare dso_local i32 @rxe_disable_task(i32*) #1

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @__rxe_do_task(i32*) #1

declare dso_local i32 @rxe_queue_reset(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rxe_drop_ref(i32*) #1

declare dso_local i32 @cleanup_rd_atomic_resources(%struct.rxe_qp*) #1

declare dso_local i32 @rxe_enable_task(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
