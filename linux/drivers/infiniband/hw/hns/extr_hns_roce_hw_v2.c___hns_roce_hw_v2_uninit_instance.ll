; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_hw_v2_uninit_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_hw_v2_uninit_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32* }
%struct.hns_roce_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32)* @__hns_roce_hw_v2_uninit_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hns_roce_hw_v2_uninit_instance(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %7 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to %struct.hns_roce_dev*
  store %struct.hns_roce_dev* %9, %struct.hns_roce_dev** %5, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %11 = icmp ne %struct.hns_roce_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %15 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %17 = call i32 @hns_roce_exit(%struct.hns_roce_dev* %16)
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kfree(i32 %20)
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %23 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %22, i32 0, i32 0
  %24 = call i32 @ib_dealloc_device(i32* %23)
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @hns_roce_exit(%struct.hns_roce_dev*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
