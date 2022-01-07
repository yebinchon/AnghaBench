; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_fp.c___bnxt_qplib_add_flush_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_fp.c___bnxt_qplib_add_flush_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_qp = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_5__, i32, %struct.bnxt_qplib_cq*, %struct.bnxt_qplib_cq* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bnxt_qplib_cq = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"FP: Adding to SQ Flush list = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"FP: Adding to RQ Flush list = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_qplib_qp*)* @__bnxt_qplib_add_flush_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnxt_qplib_add_flush_qp(%struct.bnxt_qplib_qp* %0) #0 {
  %2 = alloca %struct.bnxt_qplib_qp*, align 8
  %3 = alloca %struct.bnxt_qplib_cq*, align 8
  %4 = alloca %struct.bnxt_qplib_cq*, align 8
  store %struct.bnxt_qplib_qp* %0, %struct.bnxt_qplib_qp** %2, align 8
  %5 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt_qplib_qp, %struct.bnxt_qplib_qp* %5, i32 0, i32 6
  %7 = load %struct.bnxt_qplib_cq*, %struct.bnxt_qplib_cq** %6, align 8
  store %struct.bnxt_qplib_cq* %7, %struct.bnxt_qplib_cq** %3, align 8
  %8 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt_qplib_qp, %struct.bnxt_qplib_qp* %8, i32 0, i32 5
  %10 = load %struct.bnxt_qplib_cq*, %struct.bnxt_qplib_cq** %9, align 8
  store %struct.bnxt_qplib_cq* %10, %struct.bnxt_qplib_cq** %4, align 8
  %11 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_qp, %struct.bnxt_qplib_qp* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %1
  %17 = load %struct.bnxt_qplib_cq*, %struct.bnxt_qplib_cq** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_qplib_cq, %struct.bnxt_qplib_cq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %23 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.bnxt_qplib_qp* %22)
  %24 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %25 = call i32 @bnxt_qplib_cancel_phantom_processing(%struct.bnxt_qplib_qp* %24)
  %26 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %27 = getelementptr inbounds %struct.bnxt_qplib_qp, %struct.bnxt_qplib_qp* %26, i32 0, i32 4
  %28 = load %struct.bnxt_qplib_cq*, %struct.bnxt_qplib_cq** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_qplib_cq, %struct.bnxt_qplib_cq* %28, i32 0, i32 2
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %32 = getelementptr inbounds %struct.bnxt_qplib_qp, %struct.bnxt_qplib_qp* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %16, %1
  %35 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %36 = getelementptr inbounds %struct.bnxt_qplib_qp, %struct.bnxt_qplib_qp* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %34
  %40 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %41 = getelementptr inbounds %struct.bnxt_qplib_qp, %struct.bnxt_qplib_qp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %39
  %46 = load %struct.bnxt_qplib_cq*, %struct.bnxt_qplib_cq** %4, align 8
  %47 = getelementptr inbounds %struct.bnxt_qplib_cq, %struct.bnxt_qplib_cq* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %52 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.bnxt_qplib_qp* %51)
  %53 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %54 = getelementptr inbounds %struct.bnxt_qplib_qp, %struct.bnxt_qplib_qp* %53, i32 0, i32 1
  %55 = load %struct.bnxt_qplib_cq*, %struct.bnxt_qplib_cq** %4, align 8
  %56 = getelementptr inbounds %struct.bnxt_qplib_cq, %struct.bnxt_qplib_cq* %55, i32 0, i32 0
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.bnxt_qplib_qp*, %struct.bnxt_qplib_qp** %2, align 8
  %59 = getelementptr inbounds %struct.bnxt_qplib_qp, %struct.bnxt_qplib_qp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %45, %39
  br label %62

62:                                               ; preds = %61, %34
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.bnxt_qplib_qp*) #1

declare dso_local i32 @bnxt_qplib_cancel_phantom_processing(%struct.bnxt_qplib_qp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
