; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_send_term_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_send_term_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fsi_slave = type { i32, i32, %struct.fsi_master* }
%struct.fsi_master = type { i32 (%struct.fsi_master*, i32, i32)* }

@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @send_term_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @send_term_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fsi_slave*, align 8
  %11 = alloca %struct.fsi_master*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.fsi_slave* @to_fsi_slave(%struct.device* %12)
  store %struct.fsi_slave* %13, %struct.fsi_slave** %10, align 8
  %14 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %15 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %14, i32 0, i32 2
  %16 = load %struct.fsi_master*, %struct.fsi_master** %15, align 8
  store %struct.fsi_master* %16, %struct.fsi_master** %11, align 8
  %17 = load %struct.fsi_master*, %struct.fsi_master** %11, align 8
  %18 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %17, i32 0, i32 0
  %19 = load i32 (%struct.fsi_master*, i32, i32)*, i32 (%struct.fsi_master*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.fsi_master*, i32, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @ENODEV, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %37

24:                                               ; preds = %4
  %25 = load %struct.fsi_master*, %struct.fsi_master** %11, align 8
  %26 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %25, i32 0, i32 0
  %27 = load i32 (%struct.fsi_master*, i32, i32)*, i32 (%struct.fsi_master*, i32, i32)** %26, align 8
  %28 = load %struct.fsi_master*, %struct.fsi_master** %11, align 8
  %29 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %30 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fsi_slave*, %struct.fsi_slave** %10, align 8
  %33 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %27(%struct.fsi_master* %28, i32 %31, i32 %34)
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local %struct.fsi_slave* @to_fsi_slave(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
