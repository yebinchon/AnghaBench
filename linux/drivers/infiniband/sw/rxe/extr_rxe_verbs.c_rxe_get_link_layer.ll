; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_get_link_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_get_link_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rxe_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32)* @rxe_get_link_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_get_link_layer(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %7 = call %struct.rxe_dev* @to_rdev(%struct.ib_device* %6)
  store %struct.rxe_dev* %7, %struct.rxe_dev** %5, align 8
  %8 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @rxe_link_layer(%struct.rxe_dev* %8, i32 %9)
  ret i32 %10
}

declare dso_local %struct.rxe_dev* @to_rdev(%struct.ib_device*) #1

declare dso_local i32 @rxe_link_layer(%struct.rxe_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
