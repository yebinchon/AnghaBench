; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_exp_rcv.c_hfi1_alloc_ctxt_rcv_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_exp_rcv.c_hfi1_alloc_ctxt_rcv_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32, i32, %struct.tid_group*, i32, %struct.hfi1_devdata* }
%struct.tid_group = type { i32, i32 }
%struct.hfi1_devdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_alloc_ctxt_rcv_groups(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tid_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %10 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %9, i32 0, i32 5
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  store %struct.hfi1_devdata* %11, %struct.hfi1_devdata** %4, align 8
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %14, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %23 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.tid_group* @kcalloc_node(i32 %20, i32 8, i32 %21, i32 %24)
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %26, i32 0, i32 3
  store %struct.tid_group* %25, %struct.tid_group** %27, align 8
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %28, i32 0, i32 3
  %30 = load %struct.tid_group*, %struct.tid_group** %29, align 8
  %31 = icmp ne %struct.tid_group* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %73

35:                                               ; preds = %1
  %36 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %37 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %69, %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %45 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %44, i32 0, i32 3
  %46 = load %struct.tid_group*, %struct.tid_group** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %46, i64 %48
  store %struct.tid_group* %49, %struct.tid_group** %6, align 8
  %50 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %51 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tid_group*, %struct.tid_group** %6, align 8
  %55 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.tid_group*, %struct.tid_group** %6, align 8
  %58 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.tid_group*, %struct.tid_group** %6, align 8
  %60 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %61 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %60, i32 0, i32 2
  %62 = call i32 @tid_group_add_tail(%struct.tid_group* %59, i32* %61)
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %64 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %43
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %39

72:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %32
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.tid_group* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @tid_group_add_tail(%struct.tid_group*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
