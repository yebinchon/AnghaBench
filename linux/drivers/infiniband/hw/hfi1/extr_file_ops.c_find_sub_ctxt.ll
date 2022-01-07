; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_find_sub_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_find_sub_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i64, i64 }
%struct.hfi1_user_info = type { i32 }
%struct.hfi1_ctxtdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_filedata*, %struct.hfi1_user_info*)* @find_sub_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_sub_ctxt(%struct.hfi1_filedata* %0, %struct.hfi1_user_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_filedata*, align 8
  %5 = alloca %struct.hfi1_user_info*, align 8
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %4, align 8
  store %struct.hfi1_user_info* %1, %struct.hfi1_user_info** %5, align 8
  %10 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %11 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %10, i32 0, i32 0
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  store %struct.hfi1_devdata* %12, %struct.hfi1_devdata** %7, align 8
  %13 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %5, align 8
  %14 = getelementptr inbounds %struct.hfi1_user_info, %struct.hfi1_user_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %20 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %47, %18
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %25 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %29, i64 %30)
  store %struct.hfi1_ctxtdata* %31, %struct.hfi1_ctxtdata** %6, align 8
  %32 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %33 = icmp ne %struct.hfi1_ctxtdata* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %36 = load %struct.hfi1_user_info*, %struct.hfi1_user_info** %5, align 8
  %37 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %38 = call i32 @match_ctxt(%struct.hfi1_filedata* %35, %struct.hfi1_user_info* %36, %struct.hfi1_ctxtdata* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %40 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %28
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %22

50:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %43, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @match_ctxt(%struct.hfi1_filedata*, %struct.hfi1_user_info*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
