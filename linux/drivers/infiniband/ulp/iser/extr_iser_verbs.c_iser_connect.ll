; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.iser_conn = type { i64, i32, i32, i32, i32, %struct.ib_conn }
%struct.ib_conn = type { i32*, i32* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%pISp\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"connecting to: %s\0A\00", align 1
@ISER_CONN_PENDING = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@iser_cma_handler = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"rdma_create_id failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"rdma_resolve_addr failed: %d\0A\00", align 1
@ISER_CONN_UP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ISER_CONN_DOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_connect(%struct.iser_conn* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_conn*, align 8
  %11 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %12, i32 0, i32 5
  store %struct.ib_conn* %13, %struct.ib_conn** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %15 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %18 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %21 = call i32 @sprintf(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sockaddr* %20)
  %22 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %23 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iser_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.ib_conn*, %struct.ib_conn** %10, align 8
  %27 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load i64, i64* @ISER_CONN_PENDING, align 8
  %29 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %30 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @iser_cma_handler, align 4
  %32 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %33 = bitcast %struct.iser_conn* %32 to i8*
  %34 = load i32, i32* @RDMA_PS_TCP, align 4
  %35 = load i32, i32* @IB_QPT_RC, align 4
  %36 = call i32* @rdma_create_id(i32* @init_net, i32 %31, i8* %33, i32 %34, i32 %35)
  %37 = load %struct.ib_conn*, %struct.ib_conn** %10, align 8
  %38 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ib_conn*, %struct.ib_conn** %10, align 8
  %40 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @IS_ERR(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %4
  %45 = load %struct.ib_conn*, %struct.ib_conn** %10, align 8
  %46 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @iser_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %88

51:                                               ; preds = %4
  %52 = load %struct.ib_conn*, %struct.ib_conn** %10, align 8
  %53 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %57 = call i32 @rdma_resolve_addr(i32* %54, %struct.sockaddr* %55, %struct.sockaddr* %56, i32 1000)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @iser_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %91

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %68 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %67, i32 0, i32 3
  %69 = call i32 @wait_for_completion_interruptible(i32* %68)
  %70 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %71 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ISER_CONN_UP, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %95

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %81 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  %84 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %85 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %84, i32 0, i32 2
  %86 = call i32 @list_add(i32* %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 1))
  %87 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  store i32 0, i32* %5, align 4
  br label %102

88:                                               ; preds = %44
  %89 = load %struct.ib_conn*, %struct.ib_conn** %10, align 8
  %90 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %88, %60
  %92 = load i64, i64* @ISER_CONN_DOWN, align 8
  %93 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %94 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %75
  %96 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %97 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %100 = call i32 @iser_conn_release(%struct.iser_conn* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %95, %79
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, %struct.sockaddr*) #1

declare dso_local i32 @iser_info(i8*, i32) #1

declare dso_local i32* @rdma_create_id(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

declare dso_local i32 @rdma_resolve_addr(i32*, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @iser_conn_release(%struct.iser_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
