; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_destroy_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_destroy_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.qedr_ah = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedr_destroy_ah(%struct.ib_ah* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedr_ah*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %7 = call %struct.qedr_ah* @get_qedr_ah(%struct.ib_ah* %6)
  store %struct.qedr_ah* %7, %struct.qedr_ah** %5, align 8
  %8 = load %struct.qedr_ah*, %struct.qedr_ah** %5, align 8
  %9 = getelementptr inbounds %struct.qedr_ah, %struct.qedr_ah* %8, i32 0, i32 0
  %10 = call i32 @rdma_destroy_ah_attr(i32* %9)
  ret void
}

declare dso_local %struct.qedr_ah* @get_qedr_ah(%struct.ib_ah*) #1

declare dso_local i32 @rdma_destroy_ah_attr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
