; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_stop_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_stop_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@QP_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Cannot drain out data for stopping, Force to stop!\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"stop queue %u!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_qm_stop_qp(%struct.hisi_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_qp*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.hisi_qp* %0, %struct.hisi_qp** %3, align 8
  %6 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @QP_STOP, align 4
  %13 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %35, %19
  %21 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %22 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = call i32 @msleep(i32 20)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

35:                                               ; preds = %26
  br label %20

36:                                               ; preds = %20
  %37 = load i32, i32* @QP_STOP, align 4
  %38 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %39 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @set_bit(i32 %37, i32* %40)
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %44 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %36, %32, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
