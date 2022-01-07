; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_read_spd_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_read_spd_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { i32 }

@I5100_SPDDATA = common dso_local global i32 0, align 4
@I5100_SPDCMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32, i32, i32, i32*)* @i5100_read_spd_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5100_read_spd_byte(%struct.mem_ctl_info* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_ctl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.i5100_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 0
  %17 = load %struct.i5100_priv*, %struct.i5100_priv** %16, align 8
  store %struct.i5100_priv* %17, %struct.i5100_priv** %12, align 8
  %18 = load %struct.i5100_priv*, %struct.i5100_priv** %12, align 8
  %19 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I5100_SPDDATA, align 4
  %22 = call i32 @pci_read_config_word(i32 %20, i32 %21, i32* %13)
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @i5100_spddata_busy(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %70

27:                                               ; preds = %5
  %28 = load %struct.i5100_priv*, %struct.i5100_priv** %12, align 8
  %29 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I5100_SPDCMD, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @i5100_spdcmd_create(i32 10, i32 1, i32 %35, i32 %36, i32 0, i32 0)
  %38 = call i32 @pci_write_config_dword(i32 %30, i32 %31, i32 %37)
  %39 = load i32, i32* @jiffies, align 4
  %40 = load i32, i32* @HZ, align 4
  %41 = sdiv i32 %40, 10
  %42 = add nsw i32 %39, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %14, align 8
  %44 = call i32 @udelay(i32 100)
  br label %45

45:                                               ; preds = %27, %55
  %46 = load %struct.i5100_priv*, %struct.i5100_priv** %12, align 8
  %47 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @I5100_SPDDATA, align 4
  %50 = call i32 @pci_read_config_word(i32 %48, i32 %49, i32* %13)
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @i5100_spddata_busy(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %57

55:                                               ; preds = %45
  %56 = call i32 @udelay(i32 100)
  br label %45

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @i5100_spddata_rdo(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @i5100_spddata_sbe(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57
  store i32 -1, i32* %6, align 4
  br label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @i5100_spddata_data(i32 %67)
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %65, %26
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i64 @i5100_spddata_busy(i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @i5100_spdcmd_create(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i5100_spddata_rdo(i32) #1

declare dso_local i64 @i5100_spddata_sbe(i32) #1

declare dso_local i32 @i5100_spddata_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
