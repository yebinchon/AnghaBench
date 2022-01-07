; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_disable_spaace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_disable_spaace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paace = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid liodn entry\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PAACE_AF_V = common dso_local global i32 0, align 4
@PAACE_V_INVALID = common dso_local global i32 0, align 4
@PAACE_AF_AP = common dso_local global i32 0, align 4
@PAACE_AP_PERMS_DENIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pamu_disable_spaace(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.paace*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.paace* @pamu_get_ppaace(i32 %7)
  store %struct.paace* %8, %struct.paace** %6, align 8
  %9 = load %struct.paace*, %struct.paace** %6, align 8
  %10 = icmp ne %struct.paace* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.paace*, %struct.paace** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub nsw i64 %20, 1
  %22 = call %struct.paace* @pamu_get_spaace(%struct.paace* %19, i64 %21)
  store %struct.paace* %22, %struct.paace** %6, align 8
  %23 = load %struct.paace*, %struct.paace** %6, align 8
  %24 = icmp ne %struct.paace* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %18
  %29 = load %struct.paace*, %struct.paace** %6, align 8
  %30 = getelementptr inbounds %struct.paace, %struct.paace* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PAACE_AF_V, align 4
  %33 = load i32, i32* @PAACE_V_INVALID, align 4
  %34 = call i32 @set_bf(i32 %31, i32 %32, i32 %33)
  br label %42

35:                                               ; preds = %15
  %36 = load %struct.paace*, %struct.paace** %6, align 8
  %37 = getelementptr inbounds %struct.paace, %struct.paace* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PAACE_AF_AP, align 4
  %40 = load i32, i32* @PAACE_AP_PERMS_DENIED, align 4
  %41 = call i32 @set_bf(i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %28
  %43 = call i32 (...) @mb()
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %25, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.paace* @pamu_get_ppaace(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.paace* @pamu_get_spaace(%struct.paace*, i64) #1

declare dso_local i32 @set_bf(i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
