; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_request_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_request_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { i32, i32, %struct.bnxt_en_dev* }
%struct.bnxt_en_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bnxt_en_dev*, i32, i32, i32)* }

@BNXT_RE_MAX_MSIX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@BNXT_RE_MIN_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Requested %d MSI-X vectors, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*)* @bnxt_re_request_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_request_msix(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_re_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_en_dev*, align 8
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @BNXT_RE_MAX_MSIX, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %10 = icmp ne %struct.bnxt_re_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %15, i32 0, i32 2
  %17 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %16, align 8
  store %struct.bnxt_en_dev* %17, %struct.bnxt_en_dev** %7, align 8
  %18 = load i32, i32* @u32, align 4
  %19 = load i32, i32* @BNXT_RE_MAX_MSIX, align 4
  %20 = call i32 (...) @num_online_cpus()
  %21 = call i32 @min_t(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %7, align 8
  %23 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.bnxt_en_dev*, i32, i32, i32)*, i32 (%struct.bnxt_en_dev*, i32, i32, i32)** %25, align 8
  %27 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %7, align 8
  %28 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %29 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %30 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 %26(%struct.bnxt_en_dev* %27, i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BNXT_RE_MIN_MSIX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %14
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %54

40:                                               ; preds = %14
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %46 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %53 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %37
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
