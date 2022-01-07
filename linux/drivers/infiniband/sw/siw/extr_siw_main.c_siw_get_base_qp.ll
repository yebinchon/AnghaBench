; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_main.c_siw_get_base_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_main.c_siw_get_base_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_device = type { i32 }
%struct.siw_qp = type { %struct.ib_qp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.ib_device*, i32)* @siw_get_base_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @siw_get_base_qp(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.siw_qp*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %8 = call i32 @to_siw_dev(%struct.ib_device* %7)
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.siw_qp* @siw_qp_id2obj(i32 %8, i32 %9)
  store %struct.siw_qp* %10, %struct.siw_qp** %6, align 8
  %11 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %12 = icmp ne %struct.siw_qp* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %15 = call i32 @siw_qp_put(%struct.siw_qp* %14)
  %16 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %17 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %16, i32 0, i32 0
  %18 = load %struct.ib_qp*, %struct.ib_qp** %17, align 8
  store %struct.ib_qp* %18, %struct.ib_qp** %3, align 8
  br label %20

19:                                               ; preds = %2
  store %struct.ib_qp* null, %struct.ib_qp** %3, align 8
  br label %20

20:                                               ; preds = %19, %13
  %21 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  ret %struct.ib_qp* %21
}

declare dso_local %struct.siw_qp* @siw_qp_id2obj(i32, i32) #1

declare dso_local i32 @to_siw_dev(%struct.ib_device*) #1

declare dso_local i32 @siw_qp_put(%struct.siw_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
