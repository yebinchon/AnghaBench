; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom.c_usnic_uiom_reg_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom.c_usnic_uiom_reg_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_uiom_reg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usnic_uiom_reg_release(%struct.usnic_uiom_reg* %0) #0 {
  %2 = alloca %struct.usnic_uiom_reg*, align 8
  store %struct.usnic_uiom_reg* %0, %struct.usnic_uiom_reg** %2, align 8
  %3 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %2, align 8
  %4 = getelementptr inbounds %struct.usnic_uiom_reg, %struct.usnic_uiom_reg* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %2, align 8
  %7 = call i32 @__usnic_uiom_reg_release(i32 %5, %struct.usnic_uiom_reg* %6, i32 1)
  %8 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %2, align 8
  %9 = call i32 @usnic_uiom_num_pages(%struct.usnic_uiom_reg* %8)
  %10 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %2, align 8
  %11 = getelementptr inbounds %struct.usnic_uiom_reg, %struct.usnic_uiom_reg* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @atomic64_sub(i32 %9, i32* %13)
  %15 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %2, align 8
  %16 = call i32 @__usnic_uiom_release_tail(%struct.usnic_uiom_reg* %15)
  ret void
}

declare dso_local i32 @__usnic_uiom_reg_release(i32, %struct.usnic_uiom_reg*, i32) #1

declare dso_local i32 @atomic64_sub(i32, i32*) #1

declare dso_local i32 @usnic_uiom_num_pages(%struct.usnic_uiom_reg*) #1

declare dso_local i32 @__usnic_uiom_release_tail(%struct.usnic_uiom_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
