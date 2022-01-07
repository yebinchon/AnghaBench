; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_allot_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_allot_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.hfi1_ctxtdata = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"vnic ctxt alloc failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"vnic ctxt setup failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.hfi1_ctxtdata**)* @hfi1_vnic_allot_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_vnic_allot_ctxt(%struct.hfi1_devdata* %0, %struct.hfi1_ctxtdata** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.hfi1_ctxtdata**, align 8
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.hfi1_ctxtdata** %1, %struct.hfi1_ctxtdata*** %5, align 8
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %8 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %5, align 8
  %9 = call i32 @allocate_vnic_ctxt(%struct.hfi1_devdata* %7, %struct.hfi1_ctxtdata** %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dd_dev_err(%struct.hfi1_devdata* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %19 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %5, align 8
  %20 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %19, align 8
  %21 = call i32 @setup_vnic_ctxt(%struct.hfi1_devdata* %18, %struct.hfi1_ctxtdata* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dd_dev_err(%struct.hfi1_devdata* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %29 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %5, align 8
  %30 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %29, align 8
  %31 = call i32 @deallocate_vnic_ctxt(%struct.hfi1_devdata* %28, %struct.hfi1_ctxtdata* %30)
  %32 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %5, align 8
  store %struct.hfi1_ctxtdata* null, %struct.hfi1_ctxtdata** %32, align 8
  br label %33

33:                                               ; preds = %24, %17
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @allocate_vnic_ctxt(%struct.hfi1_devdata*, %struct.hfi1_ctxtdata**) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @setup_vnic_ctxt(%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @deallocate_vnic_ctxt(%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
