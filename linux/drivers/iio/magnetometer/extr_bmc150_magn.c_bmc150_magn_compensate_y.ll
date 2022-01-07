; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_compensate_y.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_compensate_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_magn_trim_regs = type { i64, i64, i64, i64, i32 }

@BMC150_MAGN_XY_OVERFLOW_VAL = common dso_local global i64 0, align 8
@S32_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_magn_trim_regs*, i64, i32)* @bmc150_magn_compensate_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_magn_compensate_y(%struct.bmc150_magn_trim_regs* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmc150_magn_trim_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bmc150_magn_trim_regs* %0, %struct.bmc150_magn_trim_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %11 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @le16_to_cpu(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @BMC150_MAGN_XY_OVERFLOW_VAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @S32_MIN, align 4
  store i32 %18, i32* %4, align 4
  br label %72

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 14
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %26, %27
  %29 = sub nsw i32 %28, 16384
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %34 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %38, %40
  %42 = ashr i32 %41, 7
  %43 = mul nsw i32 %36, %42
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %47 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = shl i64 %48, 7
  %50 = trunc i64 %49 to i32
  %51 = mul nsw i32 %45, %50
  %52 = add nsw i32 %43, %51
  %53 = ashr i32 %52, 9
  %54 = add nsw i32 %53, 1048576
  %55 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %56 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 160
  %59 = trunc i64 %58 to i32
  %60 = mul nsw i32 %54, %59
  %61 = ashr i32 %60, 12
  %62 = mul nsw i32 %32, %61
  %63 = ashr i32 %62, 13
  %64 = sext i32 %63 to i64
  %65 = load %struct.bmc150_magn_trim_regs*, %struct.bmc150_magn_trim_regs** %5, align 8
  %66 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = shl i64 %67, 3
  %69 = add nsw i64 %64, %68
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %24, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
