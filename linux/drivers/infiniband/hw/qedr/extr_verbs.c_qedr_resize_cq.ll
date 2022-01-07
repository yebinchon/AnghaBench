; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_resize_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qedr_dev = type { i32 }
%struct.qedr_cq = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"cq %p RESIZE NOT SUPPORTED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_resize_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_cq*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %9 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %10 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.qedr_dev* @get_qedr_dev(i32 %11)
  store %struct.qedr_dev* %12, %struct.qedr_dev** %7, align 8
  %13 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %14 = call %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq* %13)
  store %struct.qedr_cq* %14, %struct.qedr_cq** %8, align 8
  %15 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %16 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %17 = call i32 @DP_ERR(%struct.qedr_dev* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.qedr_cq* %16)
  ret i32 0
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, %struct.qedr_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
