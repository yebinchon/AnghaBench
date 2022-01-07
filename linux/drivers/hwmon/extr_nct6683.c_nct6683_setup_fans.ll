; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_setup_fans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_setup_fans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6683_data = type { i32, i32*, i32, i32* }

@NCT6683_NUM_REG_FAN = common dso_local global i32 0, align 4
@NCT6683_NUM_REG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6683_data*)* @nct6683_setup_fans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6683_setup_fans(%struct.nct6683_data* %0) #0 {
  %2 = alloca %struct.nct6683_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nct6683_data* %0, %struct.nct6683_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NCT6683_NUM_REG_FAN, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @NCT6683_REG_FANIN_CFG(i32 %11)
  %13 = call i32 @nct6683_read(%struct.nct6683_data* %10, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %21 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %17, %9
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %27 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %5

35:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %63, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @NCT6683_NUM_REG_PWM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @NCT6683_REG_FANOUT_CFG(i32 %42)
  %44 = call i32 @nct6683_read(%struct.nct6683_data* %41, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 128
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = shl i32 1, %49
  %51 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %52 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %40
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.nct6683_data*, %struct.nct6683_data** %2, align 8
  %58 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %36

66:                                               ; preds = %36
  ret void
}

declare dso_local i32 @nct6683_read(%struct.nct6683_data*, i32) #1

declare dso_local i32 @NCT6683_REG_FANIN_CFG(i32) #1

declare dso_local i32 @NCT6683_REG_FANOUT_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
