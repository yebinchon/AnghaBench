; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_slave_send_echo_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_slave_send_echo_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fsi_slave = type { i64, i64, i32, %struct.fsi_master* }
%struct.fsi_master = type { i32 (%struct.fsi_master*, i32, i64, i64)* }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @slave_send_echo_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slave_send_echo_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fsi_slave*, align 8
  %11 = alloca %struct.fsi_master*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.fsi_slave* @to_fsi_slave(%struct.device* %14)
  store %struct.fsi_slave* %15, %struct.fsi_slave** %10, align 8
  %16 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %17 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %16, i32 0, i32 3
  %18 = load %struct.fsi_master*, %struct.fsi_master** %17, align 8
  store %struct.fsi_master* %18, %struct.fsi_master** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtoul(i8* %19, i32 0, i64* %12)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %78

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = icmp ult i64 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = icmp ugt i64 %29, 16
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %78

34:                                               ; preds = %28
  %35 = load %struct.fsi_master*, %struct.fsi_master** %11, align 8
  %36 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %35, i32 0, i32 0
  %37 = load i32 (%struct.fsi_master*, i32, i64, i64)*, i32 (%struct.fsi_master*, i32, i64, i64)** %36, align 8
  %38 = icmp ne i32 (%struct.fsi_master*, i32, i64, i64)* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %78

42:                                               ; preds = %34
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %45 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %48 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %50 = call i32 @fsi_slave_set_smode(%struct.fsi_slave* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %78

55:                                               ; preds = %42
  %56 = load %struct.fsi_master*, %struct.fsi_master** %11, align 8
  %57 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %56, i32 0, i32 0
  %58 = load i32 (%struct.fsi_master*, i32, i64, i64)*, i32 (%struct.fsi_master*, i32, i64, i64)** %57, align 8
  %59 = icmp ne i32 (%struct.fsi_master*, i32, i64, i64)* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.fsi_master*, %struct.fsi_master** %11, align 8
  %62 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %61, i32 0, i32 0
  %63 = load i32 (%struct.fsi_master*, i32, i64, i64)*, i32 (%struct.fsi_master*, i32, i64, i64)** %62, align 8
  %64 = load %struct.fsi_master*, %struct.fsi_master** %11, align 8
  %65 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %66 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %69 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %72 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 %63(%struct.fsi_master* %64, i32 %67, i64 %70, i64 %73)
  br label %75

75:                                               ; preds = %60, %55
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %53, %39, %31, %22
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.fsi_slave* @to_fsi_slave(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @fsi_slave_set_smode(%struct.fsi_slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
