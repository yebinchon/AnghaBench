; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.olpc_apsp* }
%struct.olpc_apsp = type { i64, i64 }

@PJ_INTERRUPT_MASK = common dso_local global i64 0, align 8
@INT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @olpc_apsp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @olpc_apsp_close(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.olpc_apsp*, align 8
  %4 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %2, align 8
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 0
  %7 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  store %struct.olpc_apsp* %7, %struct.olpc_apsp** %3, align 8
  %8 = load %struct.olpc_apsp*, %struct.olpc_apsp** %3, align 8
  %9 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.olpc_apsp*, %struct.olpc_apsp** %3, align 8
  %15 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PJ_INTERRUPT_MASK, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @INT_0, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.olpc_apsp*, %struct.olpc_apsp** %3, align 8
  %24 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PJ_INTERRUPT_MASK, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  br label %29

29:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
