; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cceq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cceq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_ceq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_ceq*, i32)* @i40iw_sc_cceq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_cceq_create(%struct.i40iw_sc_ceq* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_sc_ceq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40iw_sc_ceq* %0, %struct.i40iw_sc_ceq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @i40iw_sc_ceq_create(%struct.i40iw_sc_ceq* %6, i32 %7, i32 1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %3, align 8
  %13 = call i32 @i40iw_sc_cceq_create_done(%struct.i40iw_sc_ceq* %12)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @i40iw_sc_ceq_create(%struct.i40iw_sc_ceq*, i32, i32) #1

declare dso_local i32 @i40iw_sc_cceq_create_done(%struct.i40iw_sc_ceq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
