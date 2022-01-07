; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_destroy_qp_security_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_ib_destroy_qp_security_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp_security = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_destroy_qp_security_end(%struct.ib_qp_security* %0) #0 {
  %2 = alloca %struct.ib_qp_security*, align 8
  %3 = alloca i32, align 4
  store %struct.ib_qp_security* %0, %struct.ib_qp_security** %2, align 8
  %4 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %5 = icmp ne %struct.ib_qp_security* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %18, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %11 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %16 = getelementptr inbounds %struct.ib_qp_security, %struct.ib_qp_security* %15, i32 0, i32 1
  %17 = call i32 @wait_for_completion(i32* %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.ib_qp_security*, %struct.ib_qp_security** %2, align 8
  %23 = call i32 @destroy_qp_security(%struct.ib_qp_security* %22)
  br label %24

24:                                               ; preds = %21, %6
  ret void
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @destroy_qp_security(%struct.ib_qp_security*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
