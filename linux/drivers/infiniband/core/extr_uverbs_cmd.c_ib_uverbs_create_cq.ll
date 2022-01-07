; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_create_cq = type { i32, i32, i32, i32 }
%struct.ib_uverbs_ex_create_cq = type { i32, i32, i32, i32 }
%struct.ib_ucq_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_create_cq(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_create_cq, align 4
  %5 = alloca %struct.ib_uverbs_ex_create_cq, align 4
  %6 = alloca %struct.ib_ucq_object*, align 8
  %7 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %8 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %9 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %8, %struct.ib_uverbs_create_cq* %4, i32 16)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = call i32 @memset(%struct.ib_uverbs_ex_create_cq* %5, i32 0, i32 16)
  %16 = getelementptr inbounds %struct.ib_uverbs_create_cq, %struct.ib_uverbs_create_cq* %4, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %5, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ib_uverbs_create_cq, %struct.ib_uverbs_create_cq* %4, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %5, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ib_uverbs_create_cq, %struct.ib_uverbs_create_cq* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ib_uverbs_create_cq, %struct.ib_uverbs_create_cq* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %29 = call %struct.ib_ucq_object* @create_cq(%struct.uverbs_attr_bundle* %28, %struct.ib_uverbs_ex_create_cq* %5)
  store %struct.ib_ucq_object* %29, %struct.ib_ucq_object** %6, align 8
  %30 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %31 = call i32 @PTR_ERR_OR_ZERO(%struct.ib_ucq_object* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %14, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_create_cq*, i32) #1

declare dso_local i32 @memset(%struct.ib_uverbs_ex_create_cq*, i32, i32) #1

declare dso_local %struct.ib_ucq_object* @create_cq(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_create_cq*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.ib_ucq_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
