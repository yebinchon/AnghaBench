; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_update_paace_stash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_update_paace_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paace = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid liodn entry\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PAACE_IA_CID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pamu_update_paace_stash(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.paace*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.paace* @pamu_get_ppaace(i32 %9)
  store %struct.paace* %10, %struct.paace** %8, align 8
  %11 = load %struct.paace*, %struct.paace** %8, align 8
  %12 = icmp ne %struct.paace* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.paace*, %struct.paace** %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call %struct.paace* @pamu_get_spaace(%struct.paace* %21, i64 %23)
  store %struct.paace* %24, %struct.paace** %8, align 8
  %25 = load %struct.paace*, %struct.paace** %8, align 8
  %26 = icmp ne %struct.paace* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %39

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %17
  %32 = load %struct.paace*, %struct.paace** %8, align 8
  %33 = getelementptr inbounds %struct.paace, %struct.paace* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PAACE_IA_CID, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @set_bf(i32 %34, i32 %35, i64 %36)
  %38 = call i32 (...) @mb()
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %27, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.paace* @pamu_get_ppaace(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.paace* @pamu_get_spaace(%struct.paace*, i64) #1

declare dso_local i32 @set_bf(i32, i32, i64) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
