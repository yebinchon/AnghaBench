; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_dimm_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_init_dimm_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { i32** }

@I5100_CHANNELS = common dso_local global i32 0, align 4
@I5100_MAX_DIMM_SLOTS_PER_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.mem_ctl_info*)* @i5100_init_dimm_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_init_dimm_layout(%struct.pci_dev* %0, %struct.mem_ctl_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.i5100_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.mem_ctl_info* %1, %struct.mem_ctl_info** %4, align 8
  %9 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %10 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %9, i32 0, i32 0
  %11 = load %struct.i5100_priv*, %struct.i5100_priv** %10, align 8
  store %struct.i5100_priv* %11, %struct.i5100_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %57, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @I5100_CHANNELS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %53, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @I5100_MAX_DIMM_SLOTS_PER_CHAN, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @i5100_read_spd_byte(%struct.mem_ctl_info* %22, i32 %23, i32 %24, i32 5, i32* %8)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.i5100_priv*, %struct.i5100_priv** %5, align 8
  %29 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 0, i32* %37, align 4
  br label %52

38:                                               ; preds = %21
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 3
  %41 = add nsw i32 %40, 1
  %42 = load %struct.i5100_priv*, %struct.i5100_priv** %5, align 8
  %43 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %41, i32* %51, align 4
  br label %52

52:                                               ; preds = %38, %27
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %17

56:                                               ; preds = %17
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %12

60:                                               ; preds = %12
  %61 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %62 = call i32 @i5100_init_dimm_csmap(%struct.mem_ctl_info* %61)
  ret void
}

declare dso_local i64 @i5100_read_spd_byte(%struct.mem_ctl_info*, i32, i32, i32, i32*) #1

declare dso_local i32 @i5100_init_dimm_csmap(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
