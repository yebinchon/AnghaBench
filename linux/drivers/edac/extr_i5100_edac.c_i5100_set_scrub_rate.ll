; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_set_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_set_scrub_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { i32, i32, i32 }

@I5100_MC = common dso_local global i32 0, align 4
@I5100_MC_SCRBEN_MASK = common dso_local global i32 0, align 4
@I5100_SCRUB_REFRESH_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32)* @i5100_set_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5100_set_scrub_rate(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i5100_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.i5100_priv*, %struct.i5100_priv** %8, align 8
  store %struct.i5100_priv* %9, %struct.i5100_priv** %5, align 8
  %10 = load %struct.i5100_priv*, %struct.i5100_priv** %5, align 8
  %11 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I5100_MC, align 4
  %14 = call i32 @pci_read_config_dword(i32 %12, i32 %13, i32* %6)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.i5100_priv*, %struct.i5100_priv** %5, align 8
  %19 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @I5100_MC_SCRBEN_MASK, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.i5100_priv*, %struct.i5100_priv** %5, align 8
  %24 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %23, i32 0, i32 2
  %25 = load i32, i32* @I5100_SCRUB_REFRESH_RATE, align 4
  %26 = call i32 @schedule_delayed_work(i32* %24, i32 %25)
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.i5100_priv*, %struct.i5100_priv** %5, align 8
  %29 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @I5100_MC_SCRBEN_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.i5100_priv*, %struct.i5100_priv** %5, align 8
  %35 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %34, i32 0, i32 2
  %36 = call i32 @cancel_delayed_work(i32* %35)
  br label %37

37:                                               ; preds = %27, %17
  %38 = load %struct.i5100_priv*, %struct.i5100_priv** %5, align 8
  %39 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @I5100_MC, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pci_write_config_dword(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.i5100_priv*, %struct.i5100_priv** %5, align 8
  %45 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @I5100_MC, align 4
  %48 = call i32 @pci_read_config_dword(i32 %46, i32 %47, i32* %6)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @i5100_mc_scrben(i32 %49)
  %51 = mul nsw i32 5900000, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @i5100_mc_scrben(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
