; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_set_device_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_set_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"idma32:dmac%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma*, i32)* @idma32_set_device_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma32_set_device_name(%struct.dw_dma* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_dma*, align 8
  %4 = alloca i32, align 4
  store %struct.dw_dma* %0, %struct.dw_dma** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %6 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @snprintf(i32 %7, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
