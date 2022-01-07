; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_recvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_recvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.iser_login_desc, %struct.ib_conn }
%struct.iser_login_desc = type { %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ib_conn = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_recv_wr = type { i32, i32*, %struct.TYPE_8__*, %struct.TYPE_7__* }

@ISER_RX_LOGIN_SIZE = common dso_local global i32 0, align 4
@iser_login_rsp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ib_post_recv failed ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_post_recvl(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca %struct.ib_conn*, align 8
  %4 = alloca %struct.iser_login_desc*, align 8
  %5 = alloca %struct.ib_recv_wr, align 8
  %6 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %7 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 1
  store %struct.ib_conn* %8, %struct.ib_conn** %3, align 8
  %9 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %10 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %9, i32 0, i32 0
  store %struct.iser_login_desc* %10, %struct.iser_login_desc** %4, align 8
  %11 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %12 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %15 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %18 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %19 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %22 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %29 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @iser_login_rsp, align 4
  %32 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %33 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %36 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %5, i32 0, i32 3
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %37, align 8
  %38 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %39 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %5, i32 0, i32 2
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %40, align 8
  %41 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %5, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %5, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %44 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %48 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ib_post_recv(i32 %49, %struct.ib_recv_wr* %5, i32* null)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %1
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @iser_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %57 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %53, %1
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
