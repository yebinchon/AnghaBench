; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i3000_edac.c_i3000_get_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i3000_edac.c_i3000_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i3000_error_info = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@I3000_ERRSTS = common dso_local global i32 0, align 4
@I3000_ERRSTS_BITS = common dso_local global i32 0, align 4
@I3000_EDEAP = common dso_local global i32 0, align 4
@I3000_DEAP = common dso_local global i32 0, align 4
@I3000_DERRSYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i3000_error_info*)* @i3000_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i3000_get_error_info(%struct.mem_ctl_info* %0, %struct.i3000_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i3000_error_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.i3000_error_info* %1, %struct.i3000_error_info** %4, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.pci_dev* @to_pci_dev(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @I3000_ERRSTS, align 4
  %12 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %13 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %12, i32 0, i32 0
  %14 = call i32 @pci_read_config_word(%struct.pci_dev* %10, i32 %11, i32* %13)
  %15 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %16 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I3000_ERRSTS_BITS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = load i32, i32* @I3000_EDEAP, align 4
  %25 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %26 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %25, i32 0, i32 4
  %27 = call i32 @pci_read_config_byte(%struct.pci_dev* %23, i32 %24, i32* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load i32, i32* @I3000_DEAP, align 4
  %30 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %31 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %30, i32 0, i32 3
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %28, i32 %29, i32* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = load i32, i32* @I3000_DERRSYN, align 4
  %35 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %36 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %35, i32 0, i32 2
  %37 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 %34, i32* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i32, i32* @I3000_ERRSTS, align 4
  %40 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %41 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %40, i32 0, i32 1
  %42 = call i32 @pci_read_config_word(%struct.pci_dev* %38, i32 %39, i32* %41)
  %43 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %44 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %47 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %45, %48
  %50 = load i32, i32* @I3000_ERRSTS_BITS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %22
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = load i32, i32* @I3000_EDEAP, align 4
  %56 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %57 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %56, i32 0, i32 4
  %58 = call i32 @pci_read_config_byte(%struct.pci_dev* %54, i32 %55, i32* %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = load i32, i32* @I3000_DEAP, align 4
  %61 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %62 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %61, i32 0, i32 3
  %63 = call i32 @pci_read_config_dword(%struct.pci_dev* %59, i32 %60, i32* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = load i32, i32* @I3000_DERRSYN, align 4
  %66 = load %struct.i3000_error_info*, %struct.i3000_error_info** %4, align 8
  %67 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %66, i32 0, i32 2
  %68 = call i32 @pci_read_config_byte(%struct.pci_dev* %64, i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %53, %22
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = load i32, i32* @I3000_ERRSTS, align 4
  %72 = load i32, i32* @I3000_ERRSTS_BITS, align 4
  %73 = load i32, i32* @I3000_ERRSTS_BITS, align 4
  %74 = call i32 @pci_write_bits16(%struct.pci_dev* %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %21
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_bits16(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
