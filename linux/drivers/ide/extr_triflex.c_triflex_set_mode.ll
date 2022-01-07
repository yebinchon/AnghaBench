; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_triflex.c_triflex_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_triflex.c_triflex_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @triflex_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @triflex_set_mode(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 116, i32 112
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pci_read_config_dword(%struct.pci_dev* %24, i32 %25, i32* %6)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %39 [
    i32 136, label %30
    i32 137, label %31
    i32 138, label %32
    i32 128, label %33
    i32 129, label %33
    i32 130, label %33
    i32 131, label %34
    i32 132, label %35
    i32 133, label %36
    i32 134, label %37
    i32 135, label %38
  ]

30:                                               ; preds = %2
  store i32 259, i32* %7, align 4
  br label %39

31:                                               ; preds = %2
  store i32 515, i32* %7, align 4
  br label %39

32:                                               ; preds = %2
  store i32 2056, i32* %7, align 4
  br label %39

33:                                               ; preds = %2, %2, %2
  store i32 3855, i32* %7, align 4
  br label %39

34:                                               ; preds = %2
  store i32 514, i32* %7, align 4
  br label %39

35:                                               ; preds = %2
  store i32 516, i32* %7, align 4
  br label %39

36:                                               ; preds = %2
  store i32 1028, i32* %7, align 4
  br label %39

37:                                               ; preds = %2
  store i32 1288, i32* %7, align 4
  br label %39

38:                                               ; preds = %2
  store i32 2056, i32* %7, align 4
  br label %39

39:                                               ; preds = %2, %38, %37, %36, %35, %34, %33, %32, %31, %30
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 16, %40
  %42 = shl i32 65535, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 16, %47
  %49 = shl i32 %46, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pci_write_config_dword(%struct.pci_dev* %52, i32 %53, i32 %54)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
