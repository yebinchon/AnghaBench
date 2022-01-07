; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_upload_cfg_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_upload_cfg_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mxt_cfg = type { i32, i64, i64 }

@MXT_MAX_BLOCK_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Config write error, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*, %struct.mxt_cfg*)* @mxt_upload_cfg_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_upload_cfg_mem(%struct.mxt_data* %0, %struct.mxt_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca %struct.mxt_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %4, align 8
  store %struct.mxt_cfg* %1, %struct.mxt_cfg** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %54, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %9
  %16 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sub i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MXT_MAX_BLOCK_WRITE, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @MXT_MAX_BLOCK_WRITE, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %15
  %27 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %28 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 @__mxt_write_reg(%struct.TYPE_2__* %29, i64 %35, i32 %36, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %26
  %47 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %48 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %26
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %9

58:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @__mxt_write_reg(%struct.TYPE_2__*, i64, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
