; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_hfi1_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_hfi1_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hfi1_filedata* }
%struct.hfi1_filedata = type { i32, %struct.TYPE_4__*, i32, %struct.hfi1_user_sdma_comp_q*, %struct.hfi1_user_sdma_pkt_q* }
%struct.TYPE_4__ = type { i32 }
%struct.hfi1_user_sdma_comp_q = type { i32 }
%struct.hfi1_user_sdma_pkt_q = type { i64, i32 }
%struct.iov_iter = type { i64, i64 }
%struct.iovec = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @hfi1_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.hfi1_filedata*, align 8
  %7 = alloca %struct.hfi1_user_sdma_pkt_q*, align 8
  %8 = alloca %struct.hfi1_user_sdma_comp_q*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %14 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %17, align 8
  store %struct.hfi1_filedata* %18, %struct.hfi1_filedata** %6, align 8
  %19 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %20 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %19, i32 0, i32 4
  %21 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %20, align 8
  store %struct.hfi1_user_sdma_pkt_q* %21, %struct.hfi1_user_sdma_pkt_q** %7, align 8
  %22 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %23 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %22, i32 0, i32 3
  %24 = load %struct.hfi1_user_sdma_comp_q*, %struct.hfi1_user_sdma_comp_q** %23, align 8
  store %struct.hfi1_user_sdma_comp_q* %24, %struct.hfi1_user_sdma_comp_q** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %26 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.hfi1_user_sdma_comp_q*, %struct.hfi1_user_sdma_comp_q** %8, align 8
  %29 = icmp ne %struct.hfi1_user_sdma_comp_q* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %7, align 8
  %32 = icmp ne %struct.hfi1_user_sdma_pkt_q* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %2
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %102

36:                                               ; preds = %30
  %37 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %38 = call i32 @iter_is_iovec(%struct.iov_iter* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %102

46:                                               ; preds = %40
  %47 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %48 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %51 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %56 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @trace_hfi1_sdma_request(i32 %49, i32 %54, i32 %57, i64 %58)
  %60 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %7, align 8
  %61 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %60, i32 0, i32 1
  %62 = call i64 @atomic_read(i32* %61)
  %63 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %7, align 8
  %64 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %46
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %102

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %71
  store i64 0, i64* %13, align 8
  %75 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %76 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %77 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = inttoptr i64 %81 to %struct.iovec*
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @hfi1_user_sdma_process_request(%struct.hfi1_filedata* %75, %struct.iovec* %82, i64 %83, i64* %13)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %10, align 4
  br label %100

89:                                               ; preds = %74
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %11, align 8
  %92 = sub i64 %91, %90
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %71

100:                                              ; preds = %87, %71
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %67, %43, %33
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @iter_is_iovec(%struct.iov_iter*) #1

declare dso_local i32 @trace_hfi1_sdma_request(i32, i32, i32, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hfi1_user_sdma_process_request(%struct.hfi1_filedata*, %struct.iovec*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
