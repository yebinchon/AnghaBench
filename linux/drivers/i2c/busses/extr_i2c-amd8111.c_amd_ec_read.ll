; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd8111.c_amd_ec_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd8111.c_amd_ec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_smbus = type { i64 }

@AMD_EC_CMD_RD = common dso_local global i8 0, align 1
@AMD_EC_CMD = common dso_local global i64 0, align 8
@AMD_EC_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_smbus*, i8, i8*)* @amd_ec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ec_read(%struct.amd_smbus* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd_smbus*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.amd_smbus* %0, %struct.amd_smbus** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %9 = load %struct.amd_smbus*, %struct.amd_smbus** %5, align 8
  %10 = call i32 @amd_ec_wait_write(%struct.amd_smbus* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %51

15:                                               ; preds = %3
  %16 = load i8, i8* @AMD_EC_CMD_RD, align 1
  %17 = load %struct.amd_smbus*, %struct.amd_smbus** %5, align 8
  %18 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AMD_EC_CMD, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i8 zeroext %16, i64 %21)
  %23 = load %struct.amd_smbus*, %struct.amd_smbus** %5, align 8
  %24 = call i32 @amd_ec_wait_write(%struct.amd_smbus* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %51

29:                                               ; preds = %15
  %30 = load i8, i8* %6, align 1
  %31 = load %struct.amd_smbus*, %struct.amd_smbus** %5, align 8
  %32 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AMD_EC_DATA, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i8 zeroext %30, i64 %35)
  %37 = load %struct.amd_smbus*, %struct.amd_smbus** %5, align 8
  %38 = call i32 @amd_ec_wait_read(%struct.amd_smbus* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %51

43:                                               ; preds = %29
  %44 = load %struct.amd_smbus*, %struct.amd_smbus** %5, align 8
  %45 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AMD_EC_DATA, align 8
  %48 = add nsw i64 %46, %47
  %49 = call zeroext i8 @inb(i64 %48)
  %50 = load i8*, i8** %7, align 8
  store i8 %49, i8* %50, align 1
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %41, %27, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @amd_ec_wait_write(%struct.amd_smbus*) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @amd_ec_wait_read(%struct.amd_smbus*) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
