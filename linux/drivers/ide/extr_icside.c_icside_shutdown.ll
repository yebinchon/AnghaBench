; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_icside.c_icside_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_icside.c_icside_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.expansion_card*, i32)* }
%struct.icside_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expansion_card*)* @icside_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icside_shutdown(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca %struct.icside_state*, align 8
  %4 = alloca i64, align 8
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  %5 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %6 = call %struct.icside_state* @ecard_get_drvdata(%struct.expansion_card* %5)
  store %struct.icside_state* %6, %struct.icside_state** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %10 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.expansion_card*, i32)*, i32 (%struct.expansion_card*, i32)** %12, align 8
  %14 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %15 = call i32 %13(%struct.expansion_card* %14, i32 0)
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @local_irq_restore(i64 %16)
  %18 = load %struct.icside_state*, %struct.icside_state** %3, align 8
  %19 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.icside_state*, %struct.icside_state** %3, align 8
  %24 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @writeb(i32 0, i64 %25)
  br label %27

27:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.icside_state* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
