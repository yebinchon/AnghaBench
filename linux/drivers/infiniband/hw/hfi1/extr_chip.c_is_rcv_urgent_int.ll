; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_is_rcv_urgent_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_is_rcv_urgent_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.hfi1_ctxtdata = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"dataless\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"unexpected %s receive urgent context interrupt %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32)* @is_rcv_urgent_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @is_rcv_urgent_int(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  %6 = alloca i8*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %16, i32 %17)
  store %struct.hfi1_ctxtdata* %18, %struct.hfi1_ctxtdata** %5, align 8
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %20 = icmp ne %struct.hfi1_ctxtdata* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %23 = call i32 @handle_user_interrupt(%struct.hfi1_ctxtdata* %22)
  %24 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %25 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %24)
  br label %33

26:                                               ; preds = %15
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %28

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dd_dev_err(%struct.hfi1_devdata* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %21
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @handle_user_interrupt(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
