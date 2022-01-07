; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_icside.c_icside_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_icside.c_icside_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { i32 }
%struct.icside_state = type { i32, i32 }

@NO_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expansion_card*)* @icside_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icside_remove(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca %struct.icside_state*, align 8
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  %4 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %5 = call %struct.icside_state* @ecard_get_drvdata(%struct.expansion_card* %4)
  store %struct.icside_state* %5, %struct.icside_state** %3, align 8
  %6 = load %struct.icside_state*, %struct.icside_state** %3, align 8
  %7 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %30 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %1
  %10 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %11 = call i32 @icside_irqdisable_arcin_v5(%struct.expansion_card* %10, i32 0)
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %14 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NO_DMA, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %20 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @free_dma(i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %25 = call i32 @icside_irqdisable_arcin_v6(%struct.expansion_card* %24, i32 0)
  %26 = load %struct.icside_state*, %struct.icside_state** %3, align 8
  %27 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @writeb(i32 0, i32 %28)
  br label %30

30:                                               ; preds = %1, %23, %9
  %31 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %32 = call i32 @ecard_set_drvdata(%struct.expansion_card* %31, i32* null)
  %33 = load %struct.icside_state*, %struct.icside_state** %3, align 8
  %34 = call i32 @kfree(%struct.icside_state* %33)
  %35 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %36 = call i32 @ecard_release_resources(%struct.expansion_card* %35)
  ret void
}

declare dso_local %struct.icside_state* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @icside_irqdisable_arcin_v5(%struct.expansion_card*, i32) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @icside_irqdisable_arcin_v6(%struct.expansion_card*, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @ecard_set_drvdata(%struct.expansion_card*, i32*) #1

declare dso_local i32 @kfree(%struct.icside_state*) #1

declare dso_local i32 @ecard_release_resources(%struct.expansion_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
