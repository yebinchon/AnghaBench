; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_pm.c_cc_pm_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_pm.c_cc_pm_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_pm_go(%struct.cc_drvdata* %0) #0 {
  %2 = alloca %struct.cc_drvdata*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %2, align 8
  %3 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %4 = call i32 @drvdata_to_dev(%struct.cc_drvdata* %3)
  %5 = call i32 @pm_runtime_enable(i32 %4)
  ret void
}

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @drvdata_to_dev(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
