; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_create_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_uverbs_ex_create_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_create_qp(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_create_qp, align 4
  %5 = alloca %struct.ib_uverbs_ex_create_qp, align 4
  %6 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %7 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %8 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %7, %struct.ib_uverbs_create_qp* %4, i32 52)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 52)
  %15 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 12
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 12
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 11
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 10
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 9
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 8
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 7
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 6
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.ib_uverbs_create_qp, %struct.ib_uverbs_create_qp* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, %struct.ib_uverbs_ex_create_qp* %5, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %55 = call i32 @create_qp(%struct.uverbs_attr_bundle* %54, %struct.ib_uverbs_ex_create_qp* %5)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %13, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_create_qp*, i32) #1

declare dso_local i32 @memset(%struct.ib_uverbs_ex_create_qp*, i32, i32) #1

declare dso_local i32 @create_qp(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_create_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
