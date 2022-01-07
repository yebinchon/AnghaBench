; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_debugfs.c__picolcd_flash_erase64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_debugfs.c__picolcd_flash_erase64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { i32 }
%struct.picolcd_pending = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@REPORT_MEMORY = common dso_local global i64 0, align 8
@REPORT_BL_ERASE_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.picolcd_data*, i32, i32*)* @_picolcd_flash_erase64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_picolcd_flash_erase64(%struct.picolcd_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.picolcd_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.picolcd_pending*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.picolcd_data* %0, %struct.picolcd_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* @EIO, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 63
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %73

21:                                               ; preds = %3
  %22 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @_picolcd_flash_setaddr(%struct.picolcd_data* %22, i32* %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %28 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.picolcd_pending* @picolcd_send_and_wait(i32 %29, i32 %30, i32* %31, i32 %32)
  store %struct.picolcd_pending* %33, %struct.picolcd_pending** %8, align 8
  %34 = load %struct.picolcd_pending*, %struct.picolcd_pending** %8, align 8
  %35 = icmp ne %struct.picolcd_pending* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.picolcd_pending*, %struct.picolcd_pending** %8, align 8
  %38 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %21
  br label %69

42:                                               ; preds = %36
  %43 = load %struct.picolcd_pending*, %struct.picolcd_pending** %8, align 8
  %44 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REPORT_MEMORY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.picolcd_pending*, %struct.picolcd_pending** %8, align 8
  %52 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REPORT_BL_ERASE_MEMORY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %50, %42
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %60 = load %struct.picolcd_pending*, %struct.picolcd_pending** %8, align 8
  %61 = getelementptr inbounds %struct.picolcd_pending, %struct.picolcd_pending* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @memcmp(i32* %59, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %69

67:                                               ; preds = %58
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %67, %50
  br label %69

69:                                               ; preds = %68, %66, %41
  %70 = load %struct.picolcd_pending*, %struct.picolcd_pending** %8, align 8
  %71 = call i32 @kfree(%struct.picolcd_pending* %70)
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %69, %18
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i32 @_picolcd_flash_setaddr(%struct.picolcd_data*, i32*, i32) #1

declare dso_local %struct.picolcd_pending* @picolcd_send_and_wait(i32, i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.picolcd_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
