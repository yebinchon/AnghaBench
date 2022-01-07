; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c___fsi_get_new_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c___fsi_get_new_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_slave = type { i32 }

@fsi_minor_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@fsi_base_dev = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@FSI_CHAR_LEGACY_TOP = common dso_local global i32 0, align 4
@FSI_CHAR_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_slave*, i32, i64*, i32*)* @__fsi_get_new_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fsi_get_new_minor(%struct.fsi_slave* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_slave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fsi_slave* %0, %struct.fsi_slave** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.fsi_slave*, %struct.fsi_slave** %6, align 8
  %13 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 %24, 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @ida_simple_get(i32* @fsi_minor_ida, i32 %28, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @fsi_adjust_index(i32 %36)
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* @fsi_base_dev, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i64*, i64** %8, align 8
  store i64 %42, i64* %43, align 8
  store i32 0, i32* %5, align 4
  br label %70

44:                                               ; preds = %23
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %70

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %20, %17, %4
  %53 = load i32, i32* @FSI_CHAR_LEGACY_TOP, align 4
  %54 = load i32, i32* @FSI_CHAR_MAX_DEVICES, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @ida_simple_get(i32* @fsi_minor_ida, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %70

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @fsi_adjust_index(i32 %62)
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i64, i64* @fsi_base_dev, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i64*, i64** %8, align 8
  store i64 %68, i64* %69, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %61, %59, %49, %35
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @fsi_adjust_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
