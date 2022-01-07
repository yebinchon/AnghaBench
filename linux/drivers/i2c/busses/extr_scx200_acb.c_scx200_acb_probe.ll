; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scx200_acb_iface = type { i32 }

@ACBCTL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ACBCTL2 readback failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ACBCTL1 = common dso_local global i32 0, align 4
@ACBCTL1_NMINTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"disabled, but ACBCTL1=0x%02x\0A\00", align 1
@ACBCTL2_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"enabled, but NMINTE won't be set, ACBCTL1=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scx200_acb_iface*)* @scx200_acb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scx200_acb_probe(%struct.scx200_acb_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scx200_acb_iface*, align 8
  %4 = alloca i32, align 4
  store %struct.scx200_acb_iface* %0, %struct.scx200_acb_iface** %3, align 8
  %5 = load i32, i32* @ACBCTL2, align 4
  %6 = call i32 @outb(i32 112, i32 %5)
  %7 = load i32, i32* @ACBCTL2, align 4
  %8 = call i32 @inb(i32 %7)
  %9 = icmp ne i32 %8, 112
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load i32, i32* @ACBCTL1, align 4
  %16 = call i32 @inb(i32 %15)
  %17 = load i32, i32* @ACBCTL1_NMINTE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ACBCTL1, align 4
  %20 = call i32 @outb(i32 %18, i32 %19)
  %21 = load i32, i32* @ACBCTL1, align 4
  %22 = call i32 @inb(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %14
  %31 = load i32, i32* @ACBCTL2, align 4
  %32 = call i32 @inb(i32 %31)
  %33 = load i32, i32* @ACBCTL2_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ACBCTL2, align 4
  %36 = call i32 @outb(i32 %34, i32 %35)
  %37 = load i32, i32* @ACBCTL1, align 4
  %38 = call i32 @inb(i32 %37)
  %39 = load i32, i32* @ACBCTL1_NMINTE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ACBCTL1, align 4
  %42 = call i32 @outb(i32 %40, i32 %41)
  %43 = load i32, i32* @ACBCTL1, align 4
  %44 = call i32 @inb(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ACBCTL1_NMINTE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @ACBCTL1_NMINTE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %30
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %50, %25, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
