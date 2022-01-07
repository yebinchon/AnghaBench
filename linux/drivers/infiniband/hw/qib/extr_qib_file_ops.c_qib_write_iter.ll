; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qib_filedata* }
%struct.qib_filedata = type { %struct.qib_user_sdma_queue* }
%struct.qib_user_sdma_queue = type { i32 }
%struct.iov_iter = type { i32, i32 }
%struct.qib_ctxtdata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @qib_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.qib_filedata*, align 8
  %7 = alloca %struct.qib_ctxtdata*, align 8
  %8 = alloca %struct.qib_user_sdma_queue*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %9 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.qib_filedata*, %struct.qib_filedata** %12, align 8
  store %struct.qib_filedata* %13, %struct.qib_filedata** %6, align 8
  %14 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call %struct.qib_ctxtdata* @ctxt_fp(%struct.TYPE_2__* %16)
  store %struct.qib_ctxtdata* %17, %struct.qib_ctxtdata** %7, align 8
  %18 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %19 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %18, i32 0, i32 0
  %20 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %19, align 8
  store %struct.qib_user_sdma_queue* %20, %struct.qib_user_sdma_queue** %8, align 8
  %21 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %22 = call i32 @iter_is_iovec(%struct.iov_iter* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %26 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %31 = icmp ne %struct.qib_user_sdma_queue* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %24, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %29
  %36 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %37 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %38 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %39 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %42 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @qib_user_sdma_writev(%struct.qib_ctxtdata* %36, %struct.qib_user_sdma_queue* %37, i32 %40, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %32
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.qib_ctxtdata* @ctxt_fp(%struct.TYPE_2__*) #1

declare dso_local i32 @iter_is_iovec(%struct.iov_iter*) #1

declare dso_local i32 @qib_user_sdma_writev(%struct.qib_ctxtdata*, %struct.qib_user_sdma_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
