; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_query_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_query_srq = type { i32 }
%struct.ib_uverbs_query_srq_resp = type { i32, i32, i32 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.ib_srq = type { i32 }

@UVERBS_OBJECT_SRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_query_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_query_srq(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_query_srq, align 4
  %5 = alloca %struct.ib_uverbs_query_srq_resp, align 4
  %6 = alloca %struct.ib_srq_attr, align 4
  %7 = alloca %struct.ib_srq*, align 8
  %8 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %9 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %10 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %9, %struct.ib_uverbs_query_srq* %4, i32 4)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.ib_srq*, %struct.ib_srq** %7, align 8
  %17 = load i32, i32* @UVERBS_OBJECT_SRQ, align 4
  %18 = getelementptr inbounds %struct.ib_uverbs_query_srq, %struct.ib_uverbs_query_srq* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %21 = call %struct.ib_srq* @uobj_get_obj_read(%struct.ib_srq* %16, i32 %17, i32 %19, %struct.uverbs_attr_bundle* %20)
  store %struct.ib_srq* %21, %struct.ib_srq** %7, align 8
  %22 = load %struct.ib_srq*, %struct.ib_srq** %7, align 8
  %23 = icmp ne %struct.ib_srq* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %15
  %28 = load %struct.ib_srq*, %struct.ib_srq** %7, align 8
  %29 = call i32 @ib_query_srq(%struct.ib_srq* %28, %struct.ib_srq_attr* %6)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ib_srq*, %struct.ib_srq** %7, align 8
  %31 = call i32 @uobj_put_obj_read(%struct.ib_srq* %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %27
  %37 = call i32 @memset(%struct.ib_uverbs_query_srq_resp* %5, i32 0, i32 12)
  %38 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %6, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ib_uverbs_query_srq_resp, %struct.ib_uverbs_query_srq_resp* %5, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ib_uverbs_query_srq_resp, %struct.ib_uverbs_query_srq_resp* %5, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.ib_uverbs_query_srq_resp, %struct.ib_uverbs_query_srq_resp* %5, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %48 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %47, %struct.ib_uverbs_query_srq_resp* %5, i32 12)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %36, %34, %24, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_query_srq*, i32) #1

declare dso_local %struct.ib_srq* @uobj_get_obj_read(%struct.ib_srq*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @ib_query_srq(%struct.ib_srq*, %struct.ib_srq_attr*) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_srq*) #1

declare dso_local i32 @memset(%struct.ib_uverbs_query_srq_resp*, i32, i32) #1

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_query_srq_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
