; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.nforce2_smbus = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @nforce2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nforce2_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.nforce2_smbus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.nforce2_smbus* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.nforce2_smbus* %5, %struct.nforce2_smbus** %3, align 8
  %6 = call i32 @nforce2_set_reference(i32* null)
  %7 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %3, align 8
  %8 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %7, i64 0
  %9 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %3, align 8
  %14 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %13, i64 0
  %15 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %14, i32 0, i32 2
  %16 = call i32 @i2c_del_adapter(i32* %15)
  %17 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %3, align 8
  %18 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %17, i64 0
  %19 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %3, align 8
  %22 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %21, i64 0
  %23 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @release_region(i64 %20, i32 %24)
  br label %26

26:                                               ; preds = %12, %1
  %27 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %3, align 8
  %28 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %27, i64 1
  %29 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %3, align 8
  %34 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %33, i64 1
  %35 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %34, i32 0, i32 2
  %36 = call i32 @i2c_del_adapter(i32* %35)
  %37 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %3, align 8
  %38 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %37, i64 1
  %39 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %3, align 8
  %42 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %41, i64 1
  %43 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @release_region(i64 %40, i32 %44)
  br label %46

46:                                               ; preds = %32, %26
  %47 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %3, align 8
  %48 = call i32 @kfree(%struct.nforce2_smbus* %47)
  ret void
}

declare dso_local %struct.nforce2_smbus* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @nforce2_set_reference(i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @kfree(%struct.nforce2_smbus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
