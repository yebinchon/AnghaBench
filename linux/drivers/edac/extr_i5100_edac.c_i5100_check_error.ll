; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_check_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { i32 }

@I5100_FERR_NF_MEM = common dso_local global i32 0, align 4
@I5100_NERR_NF_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5100_check_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_check_error(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  store %struct.i5100_priv* %8, %struct.i5100_priv** %3, align 8
  %9 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %10 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I5100_FERR_NF_MEM, align 4
  %13 = call i32 @pci_read_config_dword(i32 %11, i32 %12, i32* %4)
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @i5100_ferr_nf_mem_any(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %19 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I5100_NERR_NF_MEM, align 4
  %22 = call i32 @pci_read_config_dword(i32 %20, i32 %21, i32* %5)
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @i5100_ferr_nf_mem_chan_indx(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @i5100_ferr_nf_mem_any(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @i5100_nerr_nf_mem_any(i32 %28)
  %30 = call i32 @i5100_read_log(%struct.mem_ctl_info* %23, i32 %25, i64 %27, i32 %29)
  %31 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %32 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @I5100_NERR_NF_MEM, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pci_write_config_dword(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %17, %1
  %38 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %39 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @I5100_FERR_NF_MEM, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @pci_write_config_dword(i32 %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i64 @i5100_ferr_nf_mem_any(i32) #1

declare dso_local i32 @i5100_read_log(%struct.mem_ctl_info*, i32, i64, i32) #1

declare dso_local i32 @i5100_ferr_nf_mem_chan_indx(i32) #1

declare dso_local i32 @i5100_nerr_nf_mem_any(i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
