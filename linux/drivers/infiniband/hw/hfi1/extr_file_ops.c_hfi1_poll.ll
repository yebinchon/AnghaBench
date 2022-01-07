; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_hfi1_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_hfi1_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.poll_table_struct = type { i32 }
%struct.hfi1_ctxtdata = type { i64 }
%struct.hfi1_filedata = type { %struct.hfi1_ctxtdata* }

@EPOLLERR = common dso_local global i32 0, align 4
@HFI1_POLL_TYPE_URGENT = common dso_local global i64 0, align 8
@HFI1_POLL_TYPE_ANYRCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @hfi1_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hfi1_filedata*
  %11 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %10, i32 0, i32 0
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %11, align 8
  store %struct.hfi1_ctxtdata* %12, %struct.hfi1_ctxtdata** %5, align 8
  %13 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %14 = icmp ne %struct.hfi1_ctxtdata* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EPOLLERR, align 4
  store i32 %16, i32* %6, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %19 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HFI1_POLL_TYPE_URGENT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %26 = call i32 @poll_urgent(%struct.file* %24, %struct.poll_table_struct* %25)
  store i32 %26, i32* %6, align 4
  br label %40

27:                                               ; preds = %17
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %29 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HFI1_POLL_TYPE_ANYRCV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.file*, %struct.file** %3, align 8
  %35 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %36 = call i32 @poll_next(%struct.file* %34, %struct.poll_table_struct* %35)
  store i32 %36, i32* %6, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @EPOLLERR, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %33
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %15
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @poll_urgent(%struct.file*, %struct.poll_table_struct*) #1

declare dso_local i32 @poll_next(%struct.file*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
