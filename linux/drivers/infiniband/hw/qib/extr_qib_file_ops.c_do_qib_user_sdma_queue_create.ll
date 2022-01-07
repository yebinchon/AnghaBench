; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_do_qib_user_sdma_queue_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_do_qib_user_sdma_queue_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.qib_filedata* }
%struct.qib_filedata = type { i32, i32, %struct.qib_ctxtdata* }
%struct.qib_ctxtdata = type { i32, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QIB_HAS_SEND_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @do_qib_user_sdma_queue_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_qib_user_sdma_queue_create(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.qib_filedata*, align 8
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.qib_filedata*, %struct.qib_filedata** %8, align 8
  store %struct.qib_filedata* %9, %struct.qib_filedata** %4, align 8
  %10 = load %struct.qib_filedata*, %struct.qib_filedata** %4, align 8
  %11 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %10, i32 0, i32 2
  %12 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %11, align 8
  store %struct.qib_ctxtdata* %12, %struct.qib_ctxtdata** %5, align 8
  %13 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %14 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %13, i32 0, i32 1
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %14, align 8
  store %struct.qib_devdata* %15, %struct.qib_devdata** %6, align 8
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @QIB_HAS_SEND_DMA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %1
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %31 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qib_filedata*, %struct.qib_filedata** %4, align 8
  %34 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qib_user_sdma_queue_create(i32* %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.qib_filedata*, %struct.qib_filedata** %4, align 8
  %38 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.qib_filedata*, %struct.qib_filedata** %4, align 8
  %40 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %22
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46, %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @qib_user_sdma_queue_create(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
