; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_get_dell_signature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_get_dell_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm_regs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i8k_get_dell_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_get_dell_signature(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smm_regs, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 0
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = call i32 @i8k_smm(%struct.smm_regs* %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1145651527
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1145392204
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 -1
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @i8k_smm(%struct.smm_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
