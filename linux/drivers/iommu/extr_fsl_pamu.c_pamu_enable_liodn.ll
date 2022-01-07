; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_enable_liodn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_enable_liodn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paace = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid primary paace entry\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PPAACE_AF_WSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"liodn %d not configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAACE_AF_V = common dso_local global i32 0, align 4
@PAACE_V_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pamu_enable_liodn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.paace*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.paace* @pamu_get_ppaace(i32 %5)
  store %struct.paace* %6, %struct.paace** %4, align 8
  %7 = load %struct.paace*, %struct.paace** %4, align 8
  %8 = icmp ne %struct.paace* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.paace*, %struct.paace** %4, align 8
  %15 = getelementptr inbounds %struct.paace, %struct.paace* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PPAACE_AF_WSE, align 4
  %18 = call i32 @get_bf(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %13
  %26 = call i32 (...) @mb()
  %27 = load %struct.paace*, %struct.paace** %4, align 8
  %28 = getelementptr inbounds %struct.paace, %struct.paace* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PAACE_AF_V, align 4
  %31 = load i32, i32* @PAACE_V_VALID, align 4
  %32 = call i32 @set_bf(i32 %29, i32 %30, i32 %31)
  %33 = call i32 (...) @mb()
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %20, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.paace* @pamu_get_ppaace(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @get_bf(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @set_bf(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
