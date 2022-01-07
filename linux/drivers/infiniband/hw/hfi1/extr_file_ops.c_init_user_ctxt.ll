; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_init_user_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_init_user_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i32 }
%struct.hfi1_ctxtdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_filedata*, %struct.hfi1_ctxtdata*)* @init_user_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_user_ctxt(%struct.hfi1_filedata* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_filedata*, align 8
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  %6 = alloca i32, align 4
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %4, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %5, align 8
  %7 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %8 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %9 = call i32 @hfi1_user_sdma_alloc_queues(%struct.hfi1_ctxtdata* %7, %struct.hfi1_filedata* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %17 = call i32 @hfi1_user_exp_rcv_init(%struct.hfi1_filedata* %15, %struct.hfi1_ctxtdata* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %23 = call i32 @hfi1_user_sdma_free_queues(%struct.hfi1_filedata* %21, %struct.hfi1_ctxtdata* %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @hfi1_user_sdma_alloc_queues(%struct.hfi1_ctxtdata*, %struct.hfi1_filedata*) #1

declare dso_local i32 @hfi1_user_exp_rcv_init(%struct.hfi1_filedata*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_user_sdma_free_queues(%struct.hfi1_filedata*, %struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
