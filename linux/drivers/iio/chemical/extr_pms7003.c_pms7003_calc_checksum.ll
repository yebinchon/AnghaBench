; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_calc_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_calc_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pms7003_frame = type { i32, i64* }

@PMS7003_MAGIC = common dso_local global i32 0, align 4
@PMS7003_CHECKSUM_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pms7003_frame*)* @pms7003_calc_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pms7003_calc_checksum(%struct.pms7003_frame* %0) #0 {
  %2 = alloca %struct.pms7003_frame*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.pms7003_frame* %0, %struct.pms7003_frame** %2, align 8
  %5 = load i32, i32* @PMS7003_MAGIC, align 4
  %6 = ashr i32 %5, 8
  %7 = sext i32 %6 to i64
  %8 = load i32, i32* @PMS7003_MAGIC, align 4
  %9 = and i32 %8, 255
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  %12 = load %struct.pms7003_frame*, %struct.pms7003_frame** %2, align 8
  %13 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %11, %16
  %18 = load %struct.pms7003_frame*, %struct.pms7003_frame** %2, align 8
  %19 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %41, %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.pms7003_frame*, %struct.pms7003_frame** %2, align 8
  %26 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PMS7003_CHECKSUM_LENGTH, align 4
  %29 = sub nsw i32 %27, %28
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.pms7003_frame*, %struct.pms7003_frame** %2, align 8
  %33 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
