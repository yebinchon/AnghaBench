; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_queue = type { i32 }
%struct.spu_qreg = type { i64, %struct.spu_queue* }

@cpu_online_mask = common dso_local global i32 0, align 4
@spu_queue_register_workfn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_queue*, i64)* @spu_queue_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_queue_register(%struct.spu_queue* %0, i64 %1) #0 {
  %3 = alloca %struct.spu_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spu_qreg, align 8
  store %struct.spu_queue* %0, %struct.spu_queue** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.spu_queue*, %struct.spu_queue** %3, align 8
  %8 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %7, i32 0, i32 0
  %9 = load i32, i32* @cpu_online_mask, align 4
  %10 = call i32 @cpumask_any_and(i32* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = getelementptr inbounds %struct.spu_qreg, %struct.spu_qreg* %6, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.spu_qreg, %struct.spu_qreg* %6, i32 0, i32 1
  %14 = load %struct.spu_queue*, %struct.spu_queue** %3, align 8
  store %struct.spu_queue* %14, %struct.spu_queue** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @spu_queue_register_workfn, align 4
  %17 = call i32 @work_on_cpu_safe(i32 %15, i32 %16, %struct.spu_qreg* %6)
  ret i32 %17
}

declare dso_local i32 @cpumask_any_and(i32*, i32) #1

declare dso_local i32 @work_on_cpu_safe(i32, i32, %struct.spu_qreg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
