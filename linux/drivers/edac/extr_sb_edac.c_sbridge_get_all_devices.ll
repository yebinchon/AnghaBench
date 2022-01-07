; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_sbridge_get_all_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_sbridge_get_all_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_id_table = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@KNIGHTS_LANDING = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.pci_id_table*)* @sbridge_get_all_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbridge_get_all_devices(i32* %0, %struct.pci_id_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pci_id_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.pci_id_table* %1, %struct.pci_id_table** %5, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %12 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KNIGHTS_LANDING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %2
  br label %18

18:                                               ; preds = %95, %17
  %19 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %20 = icmp ne %struct.pci_id_table* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %23 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %98

28:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %92, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %32 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %38
  %42 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %43 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %51 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %49, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %41, %38, %35
  store %struct.pci_dev* null, %struct.pci_dev** %8, align 8
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %89, %61
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @sbridge_get_onedevice(%struct.pci_dev** %8, i32* %63, %struct.pci_id_table* %64, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %75 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %6, align 4
  br label %91

77:                                               ; preds = %70
  %78 = call i32 (...) @sbridge_put_all_devices()
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %99

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %84 = icmp ne %struct.pci_dev* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i1 [ false, %82 ], [ %88, %85 ]
  br i1 %90, label %62, label %91

91:                                               ; preds = %89, %73
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %29

95:                                               ; preds = %29
  %96 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %97 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %96, i32 1
  store %struct.pci_id_table* %97, %struct.pci_id_table** %5, align 8
  br label %18

98:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %77
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @sbridge_get_onedevice(%struct.pci_dev**, i32*, %struct.pci_id_table*, i32, i32) #1

declare dso_local i32 @sbridge_put_all_devices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
