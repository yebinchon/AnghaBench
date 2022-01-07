; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_ex_create_cq = type { i64, i64 }
%struct.ib_ucq_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_ex_create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_ex_create_cq(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_ex_create_cq, align 8
  %5 = alloca %struct.ib_ucq_object*, align 8
  %6 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %7 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %8 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %7, %struct.ib_uverbs_ex_create_cq* %4, i32 16)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %4, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %20
  %28 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %29 = call %struct.ib_ucq_object* @create_cq(%struct.uverbs_attr_bundle* %28, %struct.ib_uverbs_ex_create_cq* %4)
  store %struct.ib_ucq_object* %29, %struct.ib_ucq_object** %5, align 8
  %30 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %5, align 8
  %31 = call i32 @PTR_ERR_OR_ZERO(%struct.ib_ucq_object* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %24, %17, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_create_cq*, i32) #1

declare dso_local %struct.ib_ucq_object* @create_cq(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_create_cq*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.ib_ucq_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
