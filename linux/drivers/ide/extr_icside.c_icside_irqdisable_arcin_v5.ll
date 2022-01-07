; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_icside.c_icside_irqdisable_arcin_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_icside.c_icside_irqdisable_arcin_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { %struct.icside_state* }
%struct.icside_state = type { i64 }

@ICS_ARCIN_V5_INTROFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expansion_card*, i32)* @icside_irqdisable_arcin_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icside_irqdisable_arcin_v5(%struct.expansion_card* %0, i32 %1) #0 {
  %3 = alloca %struct.expansion_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.icside_state*, align 8
  store %struct.expansion_card* %0, %struct.expansion_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %7 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %6, i32 0, i32 0
  %8 = load %struct.icside_state*, %struct.icside_state** %7, align 8
  store %struct.icside_state* %8, %struct.icside_state** %5, align 8
  %9 = load %struct.icside_state*, %struct.icside_state** %5, align 8
  %10 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ICS_ARCIN_V5_INTROFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readb(i64 %13)
  ret void
}

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
