; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_sc_to_vl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_sc_to_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_2__*, %struct.send_context_info* }
%struct.TYPE_2__ = type { %struct.send_context* }
%struct.send_context = type { i32 }
%struct.send_context_info = type { i64, %struct.send_context* }

@SC_KERNEL = common dso_local global i64 0, align 8
@SC_VL15 = common dso_local global i64 0, align 8
@num_vls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32)* @sc_to_vl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_to_vl(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.send_context_info*, align 8
  %7 = alloca %struct.send_context*, align 8
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %10 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %9, i32 0, i32 1
  %11 = load %struct.send_context_info*, %struct.send_context_info** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %11, i64 %13
  store %struct.send_context_info* %14, %struct.send_context_info** %6, align 8
  %15 = load %struct.send_context_info*, %struct.send_context_info** %6, align 8
  %16 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SC_KERNEL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.send_context_info*, %struct.send_context_info** %6, align 8
  %22 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SC_VL15, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %67

27:                                               ; preds = %20, %2
  %28 = load %struct.send_context_info*, %struct.send_context_info** %6, align 8
  %29 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %28, i32 0, i32 1
  %30 = load %struct.send_context*, %struct.send_context** %29, align 8
  store %struct.send_context* %30, %struct.send_context** %7, align 8
  %31 = load %struct.send_context*, %struct.send_context** %7, align 8
  %32 = icmp ne %struct.send_context* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %67

34:                                               ; preds = %27
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 15
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.send_context*, %struct.send_context** %39, align 8
  %41 = load %struct.send_context*, %struct.send_context** %7, align 8
  %42 = icmp eq %struct.send_context* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 15, i32* %3, align 4
  br label %67

44:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @num_vls, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %51 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.send_context*, %struct.send_context** %56, align 8
  %58 = load %struct.send_context*, %struct.send_context** %7, align 8
  %59 = icmp eq %struct.send_context* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %67

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %45

66:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %60, %43, %33, %26
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
