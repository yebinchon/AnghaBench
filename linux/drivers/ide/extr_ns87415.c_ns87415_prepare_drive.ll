; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ns87415.c_ns87415_prepare_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ns87415.c_ns87415_prepare_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.pci_dev = type { i32 }

@IDE_DFLAG_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @ns87415_prepare_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns87415_prepare_drive(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @local_irq_save(i64 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 8, %30
  %32 = shl i32 1, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IDE_DFLAG_PRESENT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %48

44:                                               ; preds = %2
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1
  %53 = add nsw i32 20, %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 1
  %58 = add nsw i32 %53, %57
  %59 = shl i32 1, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  %64 = sub nsw i32 1, %63
  %65 = add nsw i32 20, %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 1
  %70 = add nsw i32 %65, %69
  %71 = shl i32 1, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %48
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %78, %79
  br label %86

81:                                               ; preds = %48
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  br label %86

86:                                               ; preds = %81, %74
  %87 = phi i32 [ %80, %74 ], [ %85, %81 ]
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %94 = call i32 @pci_read_config_byte(%struct.pci_dev* %93, i32 67, i8* %12)
  br label %95

95:                                               ; preds = %100, %92
  %96 = load i8, i8* %12, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 3
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = call i32 @udelay(i32 1)
  %102 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %103 = call i32 @pci_read_config_byte(%struct.pci_dev* %102, i32 67, i8* %12)
  br label %95

104:                                              ; preds = %95
  %105 = load i32, i32* %9, align 4
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @pci_write_config_dword(%struct.pci_dev* %107, i32 64, i32 %108)
  %110 = call i32 @udelay(i32 10)
  br label %111

111:                                              ; preds = %104, %86
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @local_irq_restore(i64 %112)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
