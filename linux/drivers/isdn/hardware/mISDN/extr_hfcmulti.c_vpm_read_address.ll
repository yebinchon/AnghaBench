; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_vpm_read_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_vpm_read_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.hfc_multi*)* @vpm_read_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @vpm_read_address(%struct.hfc_multi* %0) #0 {
  %2 = alloca %struct.hfc_multi*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.hfc_multi* %0, %struct.hfc_multi** %2, align 8
  %5 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %6 = call zeroext i16 @cpld_read_reg(%struct.hfc_multi* %5, i32 0)
  store i16 %6, i16* %3, align 2
  %7 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %8 = call zeroext i16 @cpld_read_reg(%struct.hfc_multi* %7, i32 1)
  store i16 %8, i16* %4, align 2
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, 8
  %14 = or i32 %10, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %3, align 2
  %16 = load i16, i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 511
  %19 = trunc i32 %18 to i16
  ret i16 %19
}

declare dso_local zeroext i16 @cpld_read_reg(%struct.hfc_multi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
