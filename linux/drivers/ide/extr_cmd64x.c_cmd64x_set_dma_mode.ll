; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_cmd64x.c_cmd64x_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_cmd64x.c_cmd64x_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@UDIDETCR1 = common dso_local global i32 0, align 4
@UDIDETCR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @cmd64x_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd64x_set_dma_mode(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @UDIDETCR1, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @UDIDETCR0, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pci_read_config_byte(%struct.pci_dev* %31, i32 %32, i32* %7)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 202, i32 53
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %88 [
    i32 128, label %42
    i32 129, label %49
    i32 130, label %56
    i32 131, label %63
    i32 132, label %70
    i32 133, label %77
    i32 134, label %84
    i32 135, label %84
    i32 136, label %84
  ]

42:                                               ; preds = %26
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 10, i32 5
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %88

49:                                               ; preds = %26
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 74, i32 21
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %88

56:                                               ; preds = %26
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 138, i32 37
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %88

63:                                               ; preds = %26
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 66, i32 17
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %88

70:                                               ; preds = %26
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 130, i32 33
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %88

77:                                               ; preds = %26
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 194, i32 49
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %88

84:                                               ; preds = %26, %26, %26
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @cmd64x_program_timings(%struct.TYPE_7__* %85, i32 %86)
  br label %88

88:                                               ; preds = %26, %84, %77, %70, %63, %56, %49, %42
  %89 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @pci_write_config_byte(%struct.pci_dev* %89, i32 %90, i32 %91)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cmd64x_program_timings(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
