; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i82975x_edac.c_i82975x_get_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i82975x_edac.c_i82975x_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i82975x_error_info = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@I82975X_ERRSTS = common dso_local global i32 0, align 4
@I82975X_EAP = common dso_local global i32 0, align 4
@I82975X_XEAP = common dso_local global i32 0, align 4
@I82975X_DES = common dso_local global i32 0, align 4
@I82975X_DERRSYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i82975x_error_info*)* @i82975x_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i82975x_get_error_info(%struct.mem_ctl_info* %0, %struct.i82975x_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i82975x_error_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.i82975x_error_info* %1, %struct.i82975x_error_info** %4, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.pci_dev* @to_pci_dev(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @I82975X_ERRSTS, align 4
  %12 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %13 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %12, i32 0, i32 0
  %14 = call i32 @pci_read_config_word(%struct.pci_dev* %10, i32 %11, i32* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = load i32, i32* @I82975X_EAP, align 4
  %17 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %18 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %17, i32 0, i32 5
  %19 = call i32 @pci_read_config_dword(%struct.pci_dev* %15, i32 %16, i32* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load i32, i32* @I82975X_XEAP, align 4
  %22 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %23 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %22, i32 0, i32 4
  %24 = call i32 @pci_read_config_byte(%struct.pci_dev* %20, i32 %21, i32* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i32, i32* @I82975X_DES, align 4
  %27 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %28 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %27, i32 0, i32 3
  %29 = call i32 @pci_read_config_byte(%struct.pci_dev* %25, i32 %26, i32* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* @I82975X_DERRSYN, align 4
  %32 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %33 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %32, i32 0, i32 2
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 %31, i32* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load i32, i32* @I82975X_ERRSTS, align 4
  %37 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %38 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %37, i32 0, i32 1
  %39 = call i32 @pci_read_config_word(%struct.pci_dev* %35, i32 %36, i32* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = load i32, i32* @I82975X_ERRSTS, align 4
  %42 = call i32 @pci_write_bits16(%struct.pci_dev* %40, i32 %41, i32 3, i32 3)
  %43 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %44 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %2
  br label %80

49:                                               ; preds = %2
  %50 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %51 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %54 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %52, %55
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %49
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = load i32, i32* @I82975X_EAP, align 4
  %62 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %63 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %62, i32 0, i32 5
  %64 = call i32 @pci_read_config_dword(%struct.pci_dev* %60, i32 %61, i32* %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = load i32, i32* @I82975X_XEAP, align 4
  %67 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %68 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %67, i32 0, i32 4
  %69 = call i32 @pci_read_config_byte(%struct.pci_dev* %65, i32 %66, i32* %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = load i32, i32* @I82975X_DES, align 4
  %72 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %73 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %72, i32 0, i32 3
  %74 = call i32 @pci_read_config_byte(%struct.pci_dev* %70, i32 %71, i32* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = load i32, i32* @I82975X_DERRSYN, align 4
  %77 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %4, align 8
  %78 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %77, i32 0, i32 2
  %79 = call i32 @pci_read_config_byte(%struct.pci_dev* %75, i32 %76, i32* %78)
  br label %80

80:                                               ; preds = %48, %59, %49
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
