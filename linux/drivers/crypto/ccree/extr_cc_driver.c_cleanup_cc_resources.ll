; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_cleanup_cc_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_cleanup_cc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cc_drvdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @cleanup_cc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_cc_resources(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cc_drvdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call i64 @platform_get_drvdata(%struct.platform_device* %4)
  %6 = inttoptr i64 %5 to %struct.cc_drvdata*
  store %struct.cc_drvdata* %6, %struct.cc_drvdata** %3, align 8
  %7 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %8 = call i32 @cc_aead_free(%struct.cc_drvdata* %7)
  %9 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %10 = call i32 @cc_hash_free(%struct.cc_drvdata* %9)
  %11 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %12 = call i32 @cc_cipher_free(%struct.cc_drvdata* %11)
  %13 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %14 = call i32 @cc_pm_fini(%struct.cc_drvdata* %13)
  %15 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %16 = call i32 @cc_buffer_mgr_fini(%struct.cc_drvdata* %15)
  %17 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %18 = call i32 @cc_req_mgr_fini(%struct.cc_drvdata* %17)
  %19 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %20 = call i32 @cc_sram_mgr_fini(%struct.cc_drvdata* %19)
  %21 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %22 = call i32 @cc_fips_fini(%struct.cc_drvdata* %21)
  %23 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %24 = call i32 @cc_debugfs_fini(%struct.cc_drvdata* %23)
  %25 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %26 = call i32 @fini_cc_regs(%struct.cc_drvdata* %25)
  %27 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %28 = call i32 @cc_clk_off(%struct.cc_drvdata* %27)
  ret void
}

declare dso_local i64 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cc_aead_free(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_hash_free(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_cipher_free(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_pm_fini(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_buffer_mgr_fini(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_req_mgr_fini(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_sram_mgr_fini(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_fips_fini(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_debugfs_fini(%struct.cc_drvdata*) #1

declare dso_local i32 @fini_cc_regs(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_clk_off(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
