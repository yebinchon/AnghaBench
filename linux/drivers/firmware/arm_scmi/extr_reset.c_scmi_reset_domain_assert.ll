; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_reset_domain_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_reset_domain_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }

@EXPLICIT_RESET_ASSERT = common dso_local global i32 0, align 4
@ARCH_COLD_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32)* @scmi_reset_domain_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_reset_domain_assert(%struct.scmi_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.scmi_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.scmi_handle* %0, %struct.scmi_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @EXPLICIT_RESET_ASSERT, align 4
  %8 = load i32, i32* @ARCH_COLD_RESET, align 4
  %9 = call i32 @scmi_domain_reset(%struct.scmi_handle* %5, i32 %6, i32 %7, i32 %8)
  ret i32 %9
}

declare dso_local i32 @scmi_domain_reset(%struct.scmi_handle*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
