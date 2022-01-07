; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_compensate_z.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_compensate_z.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_magn_trim_regs = type { i32, i32, i32, i32, i32 }

@BMC150_MAGN_Z_OVERFLOW_VAL = common dso_local global i64 0, align 8
@S32_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_magn_trim_regs*, i64, i8*)* @bmc150_magn_compensate_z to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_magn_compensate_z(%struct.bmc150_magn_trim_regs* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmc150_magn_trim_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bmc150_magn_trim_regs* %0, %struct.bmc150_magn_trim_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %15 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @le16_to_cpu(i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %19 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le16_to_cpu(i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %23 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @le16_to_cpu(i32 %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %11, align 8
  %27 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %28 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le16_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %33 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le16_to_cpu(i32 %34)
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @BMC150_MAGN_Z_OVERFLOW_VAL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @S32_MIN, align 4
  store i32 %41, i32* %4, align 4
  br label %74

42:                                               ; preds = %3
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %13, align 8
  %45 = sub nsw i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 15
  %48 = load i64, i64* %12, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i8*, i8** %7, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load i8*, i8** %9, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = trunc i64 %54 to i32
  %56 = mul nsw i32 %49, %55
  %57 = ashr i32 %56, 2
  %58 = sub nsw i32 %47, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %11, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = sext i32 %62 to i64
  %64 = load i8*, i8** %7, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = shl i64 %65, 1
  %67 = mul nsw i64 %63, %66
  %68 = add nsw i64 %67, 32768
  %69 = ashr i64 %68, 16
  %70 = add nsw i64 %60, %69
  %71 = sdiv i64 %59, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %42, %40
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
