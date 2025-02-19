; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_get_dsm_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_get_dsm_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAR_DSM_FUNC_DRHD = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8**)* @dmar_get_dsm_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_get_dsm_handle(i8* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8**, i8*** %9, align 8
  store i8** %11, i8*** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @DMAR_DSM_FUNC_DRHD, align 4
  %14 = call i64 @dmar_detect_dsm(i8* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8**, i8*** %10, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @AE_OK, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i64 @dmar_detect_dsm(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
