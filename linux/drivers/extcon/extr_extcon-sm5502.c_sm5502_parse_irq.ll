; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_parse_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_parse_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm5502_muic_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm5502_muic_info*, i32)* @sm5502_parse_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm5502_parse_irq(%struct.sm5502_muic_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sm5502_muic_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sm5502_muic_info* %0, %struct.sm5502_muic_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %13 [
    i32 141, label %6
    i32 140, label %9
    i32 139, label %12
    i32 138, label %12
    i32 137, label %12
    i32 135, label %12
    i32 136, label %12
    i32 134, label %12
    i32 128, label %12
    i32 131, label %12
    i32 133, label %12
    i32 130, label %12
    i32 129, label %12
    i32 132, label %12
  ]

6:                                                ; preds = %2
  %7 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %3, align 8
  %8 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  br label %14

9:                                                ; preds = %2
  %10 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %3, align 8
  %11 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  br label %14

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %13

13:                                               ; preds = %2, %12
  br label %14

14:                                               ; preds = %13, %9, %6
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
