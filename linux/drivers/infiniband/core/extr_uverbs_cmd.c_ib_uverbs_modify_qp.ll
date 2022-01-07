; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_ex_modify_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_USER_LEGACY_LAST_QP_ATTR_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_modify_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_modify_qp(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_ex_modify_qp, align 4
  %5 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %6 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %7 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %4, i32 0, i32 0
  %8 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %6, %struct.TYPE_2__* %7, i32 4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IB_USER_LEGACY_LAST_QP_ATTR_MASK, align 4
  %18 = shl i32 %17, 1
  %19 = sub nsw i32 %18, 1
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %13
  %27 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %28 = call i32 @modify_qp(%struct.uverbs_attr_bundle* %27, %struct.ib_uverbs_ex_modify_qp* %4)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @modify_qp(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_modify_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
