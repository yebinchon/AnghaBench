; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_req_notify_cq = type { i64, i32 }
%struct.ib_cq = type { i32 }

@UVERBS_OBJECT_CQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_req_notify_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_req_notify_cq(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_req_notify_cq, align 8
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %7 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %8 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %7, %struct.ib_uverbs_req_notify_cq* %4, i32 16)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %15 = load i32, i32* @UVERBS_OBJECT_CQ, align 4
  %16 = getelementptr inbounds %struct.ib_uverbs_req_notify_cq, %struct.ib_uverbs_req_notify_cq* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %19 = call %struct.ib_cq* @uobj_get_obj_read(%struct.ib_cq* %14, i32 %15, i32 %17, %struct.uverbs_attr_bundle* %18)
  store %struct.ib_cq* %19, %struct.ib_cq** %5, align 8
  %20 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %21 = icmp ne %struct.ib_cq* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %13
  %26 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %27 = getelementptr inbounds %struct.ib_uverbs_req_notify_cq, %struct.ib_uverbs_req_notify_cq* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @IB_CQ_SOLICITED, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @ib_req_notify_cq(%struct.ib_cq* %26, i32 %35)
  %37 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %38 = call i32 @uobj_put_obj_read(%struct.ib_cq* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %22, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_req_notify_cq*, i32) #1

declare dso_local %struct.ib_cq* @uobj_get_obj_read(%struct.ib_cq*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @ib_req_notify_cq(%struct.ib_cq*, i32) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
