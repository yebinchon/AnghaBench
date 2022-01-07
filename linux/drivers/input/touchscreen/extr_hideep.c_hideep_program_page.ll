; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_program_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_program_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@HIDEEP_NVM_PAGE_SIZE = common dso_local global i32 0, align 4
@HIDEEP_PERASE = common dso_local global i32 0, align 4
@HIDEEP_WRONLY = common dso_local global i32 0, align 4
@HIDEEP_FLASH_PIO_SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hideep_ts*, i32, i32*, i64)* @hideep_program_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_program_page(%struct.hideep_ts* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hideep_ts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hideep_ts* %0, %struct.hideep_ts** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %13 = call i32 @hideep_check_status(%struct.hideep_ts* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %76

19:                                               ; preds = %4
  %20 = load i32, i32* @HIDEEP_NVM_PAGE_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = call i32 @SET_FLASH_PIO(i32 0)
  %26 = call i32 @SET_FLASH_PIO(i32 1)
  %27 = load i32, i32* @HIDEEP_PERASE, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @SET_PIO_SIG(i32 %29, i32 -1)
  %31 = call i32 @SET_FLASH_PIO(i32 0)
  %32 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %33 = call i32 @hideep_check_status(%struct.hideep_ts* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %76

39:                                               ; preds = %19
  %40 = call i32 @SET_FLASH_PIO(i32 1)
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @HIDEEP_WRONLY, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @SET_PIO_SIG(i32 %47, i32 %48)
  %50 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %51 = load i32, i32* @HIDEEP_FLASH_PIO_SIG, align 4
  %52 = load i32, i32* @HIDEEP_WRONLY, align 4
  %53 = or i32 %51, %52
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @hideep_pgm_w_mem(%struct.hideep_ts* %50, i32 %53, i32* %54, i64 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub i64 %58, 1
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @SET_PIO_SIG(i32 124, i32 %63)
  %65 = call i32 @SET_FLASH_PIO(i32 0)
  %66 = call i32 @usleep_range(i32 1000, i32 1100)
  %67 = load %struct.hideep_ts*, %struct.hideep_ts** %6, align 8
  %68 = call i32 @hideep_check_status(%struct.hideep_ts* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %39
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %76

74:                                               ; preds = %39
  %75 = call i32 (...) @SET_FLASH_HWCONTROL()
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %71, %36, %16
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @hideep_check_status(%struct.hideep_ts*) #1

declare dso_local i32 @SET_FLASH_PIO(i32) #1

declare dso_local i32 @SET_PIO_SIG(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @hideep_pgm_w_mem(%struct.hideep_ts*, i32, i32*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @SET_FLASH_HWCONTROL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
