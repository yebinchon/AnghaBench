; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_create_srq = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_uverbs_create_xsrq = type { i32, i32, i32, i32, i32, i32, i32 }

@IB_SRQT_BASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_create_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_create_srq(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_create_srq, align 4
  %5 = alloca %struct.ib_uverbs_create_xsrq, align 4
  %6 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %7 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %8 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %7, %struct.ib_uverbs_create_srq* %4, i32 24)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.ib_uverbs_create_xsrq* %5, i32 0, i32 28)
  %15 = getelementptr inbounds %struct.ib_uverbs_create_srq, %struct.ib_uverbs_create_srq* %4, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, %struct.ib_uverbs_create_xsrq* %5, i32 0, i32 6
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ib_uverbs_create_srq, %struct.ib_uverbs_create_srq* %4, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, %struct.ib_uverbs_create_xsrq* %5, i32 0, i32 5
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @IB_SRQT_BASIC, align 4
  %22 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, %struct.ib_uverbs_create_xsrq* %5, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ib_uverbs_create_srq, %struct.ib_uverbs_create_srq* %4, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, %struct.ib_uverbs_create_xsrq* %5, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ib_uverbs_create_srq, %struct.ib_uverbs_create_srq* %4, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, %struct.ib_uverbs_create_xsrq* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ib_uverbs_create_srq, %struct.ib_uverbs_create_srq* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, %struct.ib_uverbs_create_xsrq* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.ib_uverbs_create_srq, %struct.ib_uverbs_create_srq* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, %struct.ib_uverbs_create_xsrq* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %36 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %37 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %36, i32 0, i32 0
  %38 = call i32 @__uverbs_create_xsrq(%struct.uverbs_attr_bundle* %35, %struct.ib_uverbs_create_xsrq* %5, i32* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %13, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_create_srq*, i32) #1

declare dso_local i32 @memset(%struct.ib_uverbs_create_xsrq*, i32, i32) #1

declare dso_local i32 @__uverbs_create_xsrq(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_create_xsrq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
