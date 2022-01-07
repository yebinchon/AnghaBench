; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i82875p_edac.c_i82875p_get_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i82875p_edac.c_i82875p_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i82875p_error_info = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@I82875P_ERRSTS = common dso_local global i32 0, align 4
@I82875P_EAP = common dso_local global i32 0, align 4
@I82875P_DES = common dso_local global i32 0, align 4
@I82875P_DERRSYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i82875p_error_info*)* @i82875p_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i82875p_get_error_info(%struct.mem_ctl_info* %0, %struct.i82875p_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i82875p_error_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.i82875p_error_info* %1, %struct.i82875p_error_info** %4, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.pci_dev* @to_pci_dev(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @I82875P_ERRSTS, align 4
  %12 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %13 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %12, i32 0, i32 0
  %14 = call i32 @pci_read_config_word(%struct.pci_dev* %10, i32 %11, i32* %13)
  %15 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %16 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 129
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = load i32, i32* @I82875P_EAP, align 4
  %24 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %25 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %24, i32 0, i32 4
  %26 = call i32 @pci_read_config_dword(%struct.pci_dev* %22, i32 %23, i32* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i32, i32* @I82875P_DES, align 4
  %29 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %30 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %29, i32 0, i32 3
  %31 = call i32 @pci_read_config_byte(%struct.pci_dev* %27, i32 %28, i32* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load i32, i32* @I82875P_DERRSYN, align 4
  %34 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %35 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %34, i32 0, i32 2
  %36 = call i32 @pci_read_config_byte(%struct.pci_dev* %32, i32 %33, i32* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = load i32, i32* @I82875P_ERRSTS, align 4
  %39 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %40 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %39, i32 0, i32 1
  %41 = call i32 @pci_read_config_word(%struct.pci_dev* %37, i32 %38, i32* %40)
  %42 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %43 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %46 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %44, %47
  %49 = and i32 %48, 129
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %21
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = load i32, i32* @I82875P_EAP, align 4
  %54 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %55 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %54, i32 0, i32 4
  %56 = call i32 @pci_read_config_dword(%struct.pci_dev* %52, i32 %53, i32* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = load i32, i32* @I82875P_DES, align 4
  %59 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %60 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %59, i32 0, i32 3
  %61 = call i32 @pci_read_config_byte(%struct.pci_dev* %57, i32 %58, i32* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = load i32, i32* @I82875P_DERRSYN, align 4
  %64 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %4, align 8
  %65 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %64, i32 0, i32 2
  %66 = call i32 @pci_read_config_byte(%struct.pci_dev* %62, i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %51, %21
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = load i32, i32* @I82875P_ERRSTS, align 4
  %70 = call i32 @pci_write_bits16(%struct.pci_dev* %68, i32 %69, i32 129, i32 129)
  br label %71

71:                                               ; preds = %67, %20
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_bits16(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
