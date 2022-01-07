; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_post_send_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_post_send_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ib_send_wr = type { i32, i32, %struct.ib_send_wr*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@WR_INLINE_MASK = common dso_local global i32 0, align 4
@QP_STATE_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @rxe_post_send_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_post_send_kernel(%struct.rxe_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca %struct.ib_send_wr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %88, %3
  %12 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %13 = icmp ne %struct.ib_send_wr* %12, null
  br i1 %13, label %14, label %92

14:                                               ; preds = %11
  %15 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %16 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %19 = call i32 @wr_opcode_mask(i32 %17, %struct.rxe_qp* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %30 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %6, align 8
  store %struct.ib_send_wr* %29, %struct.ib_send_wr** %30, align 8
  br label %92

31:                                               ; preds = %14
  %32 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %33 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IB_SEND_INLINE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @WR_INLINE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %31
  %45 = phi i1 [ false, %31 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  %52 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %53 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %6, align 8
  store %struct.ib_send_wr* %52, %struct.ib_send_wr** %53, align 8
  br label %92

54:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %58 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %63 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %55

77:                                               ; preds = %55
  %78 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %79 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @post_one_send(%struct.rxe_qp* %78, %struct.ib_send_wr* %79, i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %87 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %6, align 8
  store %struct.ib_send_wr* %86, %struct.ib_send_wr** %87, align 8
  br label %92

88:                                               ; preds = %77
  %89 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %90 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %89, i32 0, i32 2
  %91 = load %struct.ib_send_wr*, %struct.ib_send_wr** %90, align 8
  store %struct.ib_send_wr* %91, %struct.ib_send_wr** %5, align 8
  br label %11

92:                                               ; preds = %85, %49, %26, %11
  %93 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %94 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = call i32 @rxe_run_task(i32* %95, i32 1)
  %97 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %98 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @QP_STATE_ERROR, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %92
  %107 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %108 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @rxe_run_task(i32* %109, i32 1)
  br label %111

111:                                              ; preds = %106, %92
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @wr_opcode_mask(i32, %struct.rxe_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @post_one_send(%struct.rxe_qp*, %struct.ib_send_wr*, i32, i32) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
