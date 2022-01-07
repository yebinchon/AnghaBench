; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scx200_acb_iface = type { i32 }

@ACBCTL2 = common dso_local global i32 0, align 4
@ACBCTL1 = common dso_local global i32 0, align 4
@ACBADDR = common dso_local global i32 0, align 4
@ACBCTL2_ENABLE = common dso_local global i32 0, align 4
@ACBCTL1_STASTRE = common dso_local global i32 0, align 4
@ACBCTL1_NMINTE = common dso_local global i32 0, align 4
@ACBCTL1_STOP = common dso_local global i32 0, align 4
@ACBST_BER = common dso_local global i32 0, align 4
@ACBST_NEGACK = common dso_local global i32 0, align 4
@ACBST_STASTR = common dso_local global i32 0, align 4
@ACBST = common dso_local global i32 0, align 4
@ACBCST = common dso_local global i32 0, align 4
@ACBCST_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scx200_acb_iface*)* @scx200_acb_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scx200_acb_reset(%struct.scx200_acb_iface* %0) #0 {
  %2 = alloca %struct.scx200_acb_iface*, align 8
  store %struct.scx200_acb_iface* %0, %struct.scx200_acb_iface** %2, align 8
  %3 = load i32, i32* @ACBCTL2, align 4
  %4 = call i32 @outb(i32 112, i32 %3)
  %5 = load i32, i32* @ACBCTL1, align 4
  %6 = call i32 @outb(i32 0, i32 %5)
  %7 = load i32, i32* @ACBADDR, align 4
  %8 = call i32 @outb(i32 0, i32 %7)
  %9 = load i32, i32* @ACBCTL2, align 4
  %10 = call i32 @inb(i32 %9)
  %11 = load i32, i32* @ACBCTL2_ENABLE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ACBCTL2, align 4
  %14 = call i32 @outb(i32 %12, i32 %13)
  %15 = load i32, i32* @ACBCTL1, align 4
  %16 = call i32 @inb(i32 %15)
  %17 = load i32, i32* @ACBCTL1_STASTRE, align 4
  %18 = load i32, i32* @ACBCTL1_NMINTE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = load i32, i32* @ACBCTL1, align 4
  %23 = call i32 @outb(i32 %21, i32 %22)
  %24 = load i32, i32* @ACBCTL1, align 4
  %25 = call i32 @inb(i32 %24)
  %26 = load i32, i32* @ACBCTL1_STOP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ACBCTL1, align 4
  %29 = call i32 @outb(i32 %27, i32 %28)
  %30 = load i32, i32* @ACBST_BER, align 4
  %31 = load i32, i32* @ACBST_NEGACK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ACBST_STASTR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ACBST, align 4
  %36 = call i32 @outb(i32 %34, i32 %35)
  %37 = load i32, i32* @ACBCST, align 4
  %38 = call i32 @inb(i32 %37)
  %39 = load i32, i32* @ACBCST_BB, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ACBCST, align 4
  %42 = call i32 @outb(i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
