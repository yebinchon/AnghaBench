; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_cc_clk_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_cc_clk_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.clk* }
%struct.clk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_clk_off(%struct.cc_drvdata* %0) #0 {
  %2 = alloca %struct.cc_drvdata*, align 8
  %3 = alloca %struct.clk*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %2, align 8
  %4 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %4, i32 0, i32 0
  %6 = load %struct.clk*, %struct.clk** %5, align 8
  store %struct.clk* %6, %struct.clk** %3, align 8
  %7 = load %struct.clk*, %struct.clk** %3, align 8
  %8 = call i64 @IS_ERR(%struct.clk* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.clk*, %struct.clk** %3, align 8
  %13 = call i32 @clk_disable_unprepare(%struct.clk* %12)
  br label %14

14:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
