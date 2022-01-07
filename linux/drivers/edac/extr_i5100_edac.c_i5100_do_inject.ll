; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_do_inject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_do_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@I5100_MEMXEINJMSK0_EINJEN = common dso_local global i32 0, align 4
@I5100_MEM0EINJMSK0 = common dso_local global i32 0, align 4
@I5100_MEM0EINJMSK1 = common dso_local global i32 0, align 4
@I5100_MEM1EINJMSK0 = common dso_local global i32 0, align 4
@I5100_MEM1EINJMSK1 = common dso_local global i32 0, align 4
@I5100_DINJ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i5100_do_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_do_inject(%struct.mem_ctl_info* %0) #0 {
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
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 3
  %13 = shl i32 %12, 28
  %14 = load i32, i32* @I5100_MEMXEINJMSK0_EINJEN, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %17 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 65535
  %20 = shl i32 %19, 10
  %21 = or i32 %15, %20
  %22 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %23 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 31
  %26 = shl i32 %25, 5
  %27 = or i32 %21, %26
  %28 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %29 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 31
  %32 = or i32 %27, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %34 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %5, align 4
  %36 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %37 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %1
  %41 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %42 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @I5100_MEM0EINJMSK0, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @pci_write_config_dword(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %48 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @I5100_MEM0EINJMSK1, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pci_write_config_word(i32 %49, i32 %50, i32 %51)
  br label %66

53:                                               ; preds = %1
  %54 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %55 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @I5100_MEM1EINJMSK0, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pci_write_config_dword(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %61 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @I5100_MEM1EINJMSK1, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @pci_write_config_word(i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %53, %40
  %67 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %68 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @I5100_DINJ0, align 4
  %71 = call i32 @pci_write_config_byte(i32 %69, i32 %70, i32 170)
  %72 = load %struct.i5100_priv*, %struct.i5100_priv** %3, align 8
  %73 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @I5100_DINJ0, align 4
  %76 = call i32 @pci_write_config_byte(i32 %74, i32 %75, i32 171)
  ret void
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
