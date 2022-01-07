; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_sis5513.c_init_chipset_sis5513.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_sis5513.c_init_chipset_sis5513.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@chipset_family = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @init_chipset_sis5513 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_chipset_sis5513(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @chipset_family, align 4
  switch i32 %5, label %83 [
    i32 132, label %6
    i32 131, label %29
    i32 134, label %29
    i32 133, label %44
    i32 128, label %44
    i32 129, label %59
    i32 130, label %71
  ]

6:                                                ; preds = %1
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call i32 @pci_read_config_word(%struct.pci_dev* %7, i32 80, i32* %4)
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 65527
  %16 = call i32 @pci_write_config_word(%struct.pci_dev* %13, i32 80, i32 %15)
  br label %17

17:                                               ; preds = %12, %6
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_read_config_word(%struct.pci_dev* %18, i32 82, i32* %4)
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 65527
  %27 = call i32 @pci_write_config_word(%struct.pci_dev* %24, i32 82, i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  br label %83

29:                                               ; preds = %1, %1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %32 = call i32 @pci_write_config_byte(%struct.pci_dev* %30, i32 %31, i32 128)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 73, i32* %3)
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, 1
  %42 = call i32 @pci_write_config_byte(%struct.pci_dev* %39, i32 73, i32 %41)
  br label %43

43:                                               ; preds = %38, %29
  br label %83

44:                                               ; preds = %1, %1
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %47 = call i32 @pci_write_config_byte(%struct.pci_dev* %45, i32 %46, i32 16)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = call i32 @pci_read_config_byte(%struct.pci_dev* %48, i32 82, i32* %3)
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, 4
  %57 = call i32 @pci_write_config_byte(%struct.pci_dev* %54, i32 82, i32 %56)
  br label %58

58:                                               ; preds = %53, %44
  br label %83

59:                                               ; preds = %1
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = call i32 @pci_read_config_byte(%struct.pci_dev* %60, i32 9, i32* %3)
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 15
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, 240
  %69 = call i32 @pci_write_config_byte(%struct.pci_dev* %66, i32 9, i32 %68)
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %1, %70
  %72 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %73 = call i32 @pci_read_config_byte(%struct.pci_dev* %72, i32 82, i32* %3)
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, 8
  %81 = call i32 @pci_write_config_byte(%struct.pci_dev* %78, i32 82, i32 %80)
  br label %82

82:                                               ; preds = %77, %71
  br label %83

83:                                               ; preds = %1, %82, %58, %43, %28
  ret i32 0
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
