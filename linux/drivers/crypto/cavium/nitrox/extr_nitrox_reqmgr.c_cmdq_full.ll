; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_cmdq_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_cmdq_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_cmdq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_cmdq*, i32)* @cmdq_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_full(%struct.nitrox_cmdq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nitrox_cmdq*, align 8
  %5 = alloca i32, align 4
  store %struct.nitrox_cmdq* %0, %struct.nitrox_cmdq** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %7 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %6, i32 0, i32 0
  %8 = call i32 @atomic_inc_return(i32* %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %13 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %12, i32 0, i32 0
  %14 = call i32 @atomic_dec(i32* %13)
  %15 = call i32 (...) @smp_mb__after_atomic()
  store i32 1, i32* %3, align 4
  br label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @smp_mb__after_atomic()
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
