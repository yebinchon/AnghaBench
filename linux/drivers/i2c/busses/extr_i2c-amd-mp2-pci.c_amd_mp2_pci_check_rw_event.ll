; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_pci_check_rw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_pci_check_rw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_i2c_common = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.amd_mp2_dev* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.amd_mp2_dev = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"length %d in event doesn't match buffer length %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"unexpected slave address %x (expected: %x)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_i2c_common*)* @amd_mp2_pci_check_rw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_mp2_pci_check_rw_event(%struct.amd_i2c_common* %0) #0 {
  %2 = alloca %struct.amd_i2c_common*, align 8
  %3 = alloca %struct.amd_mp2_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amd_i2c_common* %0, %struct.amd_i2c_common** %2, align 8
  %7 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %8 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %7, i32 0, i32 3
  %9 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %8, align 8
  store %struct.amd_mp2_dev* %9, %struct.amd_mp2_dev** %3, align 8
  %10 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %11 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %16 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %22 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %20, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %32 = call i32 @ndev_dev(%struct.amd_mp2_dev* %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %35 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %30, %1
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %43 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %41, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %53 = call i32 @ndev_dev(%struct.amd_mp2_dev* %52)
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %56 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %59)
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %51, %40
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %66 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ndev_dev(%struct.amd_mp2_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
