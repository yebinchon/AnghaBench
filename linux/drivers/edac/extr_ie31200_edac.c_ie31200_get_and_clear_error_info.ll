; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ie31200_edac.c_ie31200_get_and_clear_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ie31200_edac.c_ie31200_get_and_clear_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.ie31200_priv* }
%struct.ie31200_priv = type { i32, i32 }
%struct.ie31200_error_info = type { i32, i32, i8** }
%struct.pci_dev = type { i32 }

@IE31200_ERRSTS = common dso_local global i32 0, align 4
@IE31200_ERRSTS_BITS = common dso_local global i32 0, align 4
@nr_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.ie31200_error_info*)* @ie31200_get_and_clear_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ie31200_get_and_clear_error_info(%struct.mem_ctl_info* %0, %struct.ie31200_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.ie31200_error_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ie31200_priv*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.ie31200_error_info* %1, %struct.ie31200_error_info** %4, align 8
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 1
  %9 = load %struct.ie31200_priv*, %struct.ie31200_priv** %8, align 8
  store %struct.ie31200_priv* %9, %struct.ie31200_priv** %6, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* @IE31200_ERRSTS, align 4
  %16 = load %struct.ie31200_error_info*, %struct.ie31200_error_info** %4, align 8
  %17 = getelementptr inbounds %struct.ie31200_error_info, %struct.ie31200_error_info* %16, i32 0, i32 0
  %18 = call i32 @pci_read_config_word(%struct.pci_dev* %14, i32 %15, i32* %17)
  %19 = load %struct.ie31200_error_info*, %struct.ie31200_error_info** %4, align 8
  %20 = getelementptr inbounds %struct.ie31200_error_info, %struct.ie31200_error_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IE31200_ERRSTS_BITS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %86

26:                                               ; preds = %2
  %27 = load %struct.ie31200_priv*, %struct.ie31200_priv** %6, align 8
  %28 = getelementptr inbounds %struct.ie31200_priv, %struct.ie31200_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @lo_hi_readq(i32 %29)
  %31 = load %struct.ie31200_error_info*, %struct.ie31200_error_info** %4, align 8
  %32 = getelementptr inbounds %struct.ie31200_error_info, %struct.ie31200_error_info* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* @nr_channels, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load %struct.ie31200_priv*, %struct.ie31200_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ie31200_priv, %struct.ie31200_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @lo_hi_readq(i32 %40)
  %42 = load %struct.ie31200_error_info*, %struct.ie31200_error_info** %4, align 8
  %43 = getelementptr inbounds %struct.ie31200_error_info, %struct.ie31200_error_info* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %41, i8** %45, align 8
  br label %46

46:                                               ; preds = %37, %26
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = load i32, i32* @IE31200_ERRSTS, align 4
  %49 = load %struct.ie31200_error_info*, %struct.ie31200_error_info** %4, align 8
  %50 = getelementptr inbounds %struct.ie31200_error_info, %struct.ie31200_error_info* %49, i32 0, i32 1
  %51 = call i32 @pci_read_config_word(%struct.pci_dev* %47, i32 %48, i32* %50)
  %52 = load %struct.ie31200_error_info*, %struct.ie31200_error_info** %4, align 8
  %53 = getelementptr inbounds %struct.ie31200_error_info, %struct.ie31200_error_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ie31200_error_info*, %struct.ie31200_error_info** %4, align 8
  %56 = getelementptr inbounds %struct.ie31200_error_info, %struct.ie31200_error_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %54, %57
  %59 = load i32, i32* @IE31200_ERRSTS_BITS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %46
  %63 = load %struct.ie31200_priv*, %struct.ie31200_priv** %6, align 8
  %64 = getelementptr inbounds %struct.ie31200_priv, %struct.ie31200_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @lo_hi_readq(i32 %65)
  %67 = load %struct.ie31200_error_info*, %struct.ie31200_error_info** %4, align 8
  %68 = getelementptr inbounds %struct.ie31200_error_info, %struct.ie31200_error_info* %67, i32 0, i32 2
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %66, i8** %70, align 8
  %71 = load i32, i32* @nr_channels, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %82

73:                                               ; preds = %62
  %74 = load %struct.ie31200_priv*, %struct.ie31200_priv** %6, align 8
  %75 = getelementptr inbounds %struct.ie31200_priv, %struct.ie31200_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @lo_hi_readq(i32 %76)
  %78 = load %struct.ie31200_error_info*, %struct.ie31200_error_info** %4, align 8
  %79 = getelementptr inbounds %struct.ie31200_error_info, %struct.ie31200_error_info* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  store i8* %77, i8** %81, align 8
  br label %82

82:                                               ; preds = %73, %62
  br label %83

83:                                               ; preds = %82, %46
  %84 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %85 = call i32 @ie31200_clear_error_info(%struct.mem_ctl_info* %84)
  br label %86

86:                                               ; preds = %83, %25
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i8* @lo_hi_readq(i32) #1

declare dso_local i32 @ie31200_clear_error_info(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
