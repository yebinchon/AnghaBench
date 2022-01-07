; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_hfi1_user_exp_rcv_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_hfi1_user_exp_rcv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i32*, i32*, i64, %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_user_exp_rcv_free(%struct.hfi1_filedata* %0) #0 {
  %2 = alloca %struct.hfi1_filedata*, align 8
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %2, align 8
  %4 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %5 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %4, i32 0, i32 3
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  store %struct.hfi1_ctxtdata* %6, %struct.hfi1_ctxtdata** %3, align 8
  %7 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %8 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @hfi1_mmu_rb_unregister(i64 %14)
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @EXP_TID_SET_EMPTY(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %24 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %25 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %24, i32 0, i32 1
  %26 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %27 = call i32 @unlock_exp_tids(%struct.hfi1_ctxtdata* %23, i32* %25, %struct.hfi1_filedata* %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %30 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @EXP_TID_SET_EMPTY(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %36 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %37 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %36, i32 0, i32 0
  %38 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %39 = call i32 @unlock_exp_tids(%struct.hfi1_ctxtdata* %35, i32* %37, %struct.hfi1_filedata* %38)
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %11
  %42 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %43 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kfree(i32* %44)
  %46 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %47 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %49 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @kfree(i32* %50)
  %52 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %53 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  ret void
}

declare dso_local i32 @hfi1_mmu_rb_unregister(i64) #1

declare dso_local i32 @EXP_TID_SET_EMPTY(i32) #1

declare dso_local i32 @unlock_exp_tids(%struct.hfi1_ctxtdata*, i32*, %struct.hfi1_filedata*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
