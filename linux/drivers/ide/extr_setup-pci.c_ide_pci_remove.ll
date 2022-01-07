; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_setup-pci.c_ide_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_setup-pci.c_ide_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ide_host = type { i32, i64* }

@IDE_HFLAG_SINGLE = common dso_local global i32 0, align 4
@IDE_HFLAG_NO_DMA = common dso_local global i32 0, align 4
@IDE_HFLAG_CS5520 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ide_host*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ide_host* %7, %struct.ide_host** %3, align 8
  %8 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %9 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %16 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.pci_dev* @to_pci_dev(i64 %19)
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %14
  %23 = phi %struct.pci_dev* [ %20, %14 ], [ null, %21 ]
  store %struct.pci_dev* %23, %struct.pci_dev** %4, align 8
  %24 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %25 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IDE_HFLAG_SINGLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 3, i32* %5, align 4
  br label %32

31:                                               ; preds = %22
  store i32 15, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %34 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IDE_HFLAG_NO_DMA, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %41 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IDE_HFLAG_CS5520, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, 4
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, 16
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %55 = call i32 @ide_host_remove(%struct.ide_host* %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = icmp ne %struct.pci_dev* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pci_release_selected_regions(%struct.pci_dev* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @pci_release_selected_regions(%struct.pci_dev* %63, i32 %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = icmp ne %struct.pci_dev* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = call i32 @pci_disable_device(%struct.pci_dev* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %73 = call i32 @pci_disable_device(%struct.pci_dev* %72)
  ret void
}

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i64) #1

declare dso_local i32 @ide_host_remove(%struct.ide_host*) #1

declare dso_local i32 @pci_release_selected_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
