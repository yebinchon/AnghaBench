; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_probe_tsb41ba3d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_probe_tsb41ba3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32 }

@probe_tsb41ba3d.id = internal constant [6 x i32] [i32 8, i32 0, i32 40, i32 131, i32 48, i32 5], align 16
@PHY_EXTENDED_REGISTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_ohci*)* @probe_tsb41ba3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_tsb41ba3d(%struct.fw_ohci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_ohci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %3, align 8
  %6 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %7 = call i32 @read_phy_reg(%struct.fw_ohci* %6, i32 2)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PHY_EXTENDED_REGISTERS, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @PHY_EXTENDED_REGISTERS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %47

19:                                               ; preds = %12
  %20 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @probe_tsb41ba3d.id, i64 0, i64 0))
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %43, %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 10
  %29 = call i32 @read_paged_phy_reg(%struct.fw_ohci* %26, i32 1, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* @probe_tsb41ba3d.id, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %47

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  br label %22

46:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %41, %32, %18, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @read_phy_reg(%struct.fw_ohci*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @read_paged_phy_reg(%struct.fw_ohci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
