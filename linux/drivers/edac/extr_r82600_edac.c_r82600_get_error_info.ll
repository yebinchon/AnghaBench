; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_r82600_edac.c_r82600_get_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_r82600_edac.c_r82600_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.r82600_error_info = type { i32 }
%struct.pci_dev = type { i32 }

@R82600_EAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.r82600_error_info*)* @r82600_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r82600_get_error_info(%struct.mem_ctl_info* %0, %struct.r82600_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.r82600_error_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.r82600_error_info* %1, %struct.r82600_error_info** %4, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.pci_dev* @to_pci_dev(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @R82600_EAP, align 4
  %12 = load %struct.r82600_error_info*, %struct.r82600_error_info** %4, align 8
  %13 = getelementptr inbounds %struct.r82600_error_info, %struct.r82600_error_info* %12, i32 0, i32 0
  %14 = call i32 @pci_read_config_dword(%struct.pci_dev* %10, i32 %11, i32* %13)
  %15 = load %struct.r82600_error_info*, %struct.r82600_error_info** %4, align 8
  %16 = getelementptr inbounds %struct.r82600_error_info, %struct.r82600_error_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BIT(i32 0)
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = load i32, i32* @R82600_EAP, align 4
  %24 = call i32 @BIT(i32 0)
  %25 = call i32 @BIT(i32 1)
  %26 = and i32 %24, %25
  %27 = call i32 @BIT(i32 0)
  %28 = call i32 @BIT(i32 1)
  %29 = and i32 %27, %28
  %30 = call i32 @pci_write_bits32(%struct.pci_dev* %22, i32 %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %2
  %32 = load %struct.r82600_error_info*, %struct.r82600_error_info** %4, align 8
  %33 = getelementptr inbounds %struct.r82600_error_info, %struct.r82600_error_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BIT(i32 1)
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = load i32, i32* @R82600_EAP, align 4
  %41 = call i32 @BIT(i32 0)
  %42 = call i32 @BIT(i32 1)
  %43 = and i32 %41, %42
  %44 = call i32 @BIT(i32 0)
  %45 = call i32 @BIT(i32 1)
  %46 = and i32 %44, %45
  %47 = call i32 @pci_write_bits32(%struct.pci_dev* %39, i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %38, %31
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pci_write_bits32(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
