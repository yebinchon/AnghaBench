; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_llp_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_llp_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.siw_qp = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.siw_qp* }

@SIW_QP_STATE_RTS = common dso_local global i64 0, align 8
@siw_tcp_rx_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to process RX, suspend: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_qp_llp_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = call i32 @read_lock(i32* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call %struct.siw_qp* @sk_to_qp(%struct.sock* %13)
  %15 = icmp ne %struct.siw_qp* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %71

23:                                               ; preds = %17
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call %struct.siw_qp* @sk_to_qp(%struct.sock* %24)
  store %struct.siw_qp* %25, %struct.siw_qp** %3, align 8
  %26 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %27 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %33 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %32, i32 0, i32 1
  %34 = call i64 @down_read_trylock(i32* %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %23
  %37 = phi i1 [ false, %23 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  store %struct.siw_qp* %45, %struct.siw_qp** %44, align 8
  %46 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %47 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SIW_QP_STATE_RTS, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.sock*, %struct.sock** %2, align 8
  %57 = load i32, i32* @siw_tcp_rx_data, align 4
  %58 = call i32 @tcp_read_sock(%struct.sock* %56, %struct.TYPE_9__* %4, i32 %57)
  br label %59

59:                                               ; preds = %55, %41
  %60 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %61 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %60, i32 0, i32 1
  %62 = call i32 @up_read(i32* %61)
  br label %70

63:                                               ; preds = %36
  %64 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %65 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %66 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @siw_dbg_qp(%struct.siw_qp* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %63, %59
  br label %71

71:                                               ; preds = %70, %22
  %72 = load %struct.sock*, %struct.sock** %2, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = call i32 @read_unlock(i32* %73)
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.siw_qp* @sk_to_qp(%struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @tcp_read_sock(%struct.sock*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
