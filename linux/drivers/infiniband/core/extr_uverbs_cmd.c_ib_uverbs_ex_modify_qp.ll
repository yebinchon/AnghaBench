; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_ex_modify_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_uverbs_ex_modify_qp_resp = type { i32 }

@IB_USER_LAST_QP_ATTR_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_ex_modify_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_ex_modify_qp(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_ex_modify_qp, align 4
  %5 = alloca %struct.ib_uverbs_ex_modify_qp_resp, align 4
  %6 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %7 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp_resp, %struct.ib_uverbs_ex_modify_qp_resp* %5, i32 0, i32 0
  %8 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %9 = call i32 @uverbs_response_length(%struct.uverbs_attr_bundle* %8, i32 4)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %11 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %10, %struct.ib_uverbs_ex_modify_qp* %4, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load i32, i32* @IB_USER_LAST_QP_ATTR_MASK, align 4
  %18 = icmp eq i32 %17, -2147483648
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUILD_BUG_ON(i32 %19)
  %21 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IB_USER_LAST_QP_ATTR_MASK, align 4
  %25 = shl i32 %24, 1
  %26 = sub nsw i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %16
  %34 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %35 = call i32 @modify_qp(%struct.uverbs_attr_bundle* %34, %struct.ib_uverbs_ex_modify_qp* %4)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %42 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %41, %struct.ib_uverbs_ex_modify_qp_resp* %5, i32 4)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %38, %30, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @uverbs_response_length(%struct.uverbs_attr_bundle*, i32) #1

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_modify_qp*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @modify_qp(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_modify_qp*) #1

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_modify_qp_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
