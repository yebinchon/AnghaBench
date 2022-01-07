; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isacsx_cic_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isacsx_cic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { i32, i32 }

@ISACX_CIR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: ISACX CIR0 %02X\0A\00", align 1
@ISACX_CIR0_CIC0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: ph_state change %x->%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac_hw*)* @isacsx_cic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isacsx_cic_irq(%struct.isac_hw* %0) #0 {
  %2 = alloca %struct.isac_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.isac_hw* %0, %struct.isac_hw** %2, align 8
  %4 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %5 = load i32, i32* @ISACX_CIR0, align 4
  %6 = call i32 @ReadISAC(%struct.isac_hw* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %8 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ISACX_CIR0_CIC0, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %18 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %21 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 4
  %25 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %22, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 4
  %28 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %29 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %31 = call i32 @isac_ph_state_change(%struct.isac_hw* %30)
  br label %32

32:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @isac_ph_state_change(%struct.isac_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
