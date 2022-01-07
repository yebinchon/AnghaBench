; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_cpld_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_cpld_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i32 }

@R_GPIO_OUT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.hfc_multi*, i8)* @cpld_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @cpld_read_reg(%struct.hfc_multi* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.hfc_multi*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.hfc_multi* %0, %struct.hfc_multi** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %7 = load i8, i8* %4, align 1
  %8 = call i32 @cpld_set_reg(%struct.hfc_multi* %6, i8 zeroext %7)
  %9 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %10 = load i32, i32* @R_GPIO_OUT1, align 4
  %11 = load i8, i8* %4, align 1
  %12 = call i32 @HFC_outb(%struct.hfc_multi* %9, i32 %10, i8 zeroext %11)
  %13 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %14 = call i32 @enablepcibridge(%struct.hfc_multi* %13)
  %15 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %16 = call zeroext i8 @readpcibridge(%struct.hfc_multi* %15, i32 1)
  store i8 %16, i8* %5, align 1
  %17 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %18 = call i32 @disablepcibridge(%struct.hfc_multi* %17)
  %19 = load i8, i8* %5, align 1
  ret i8 %19
}

declare dso_local i32 @cpld_set_reg(%struct.hfc_multi*, i8 zeroext) #1

declare dso_local i32 @HFC_outb(%struct.hfc_multi*, i32, i8 zeroext) #1

declare dso_local i32 @enablepcibridge(%struct.hfc_multi*) #1

declare dso_local zeroext i8 @readpcibridge(%struct.hfc_multi*, i32) #1

declare dso_local i32 @disablepcibridge(%struct.hfc_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
