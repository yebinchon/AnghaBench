; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_free_subwins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_free_subwins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paace = type { i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid liodn entry\0A\00", align 1
@PPAACE_AF_MW = common dso_local global i32 0, align 4
@PAACE_IA_WCE = common dso_local global i32 0, align 4
@spaace_pool = common dso_local global i32 0, align 4
@spaact = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pamu_free_subwins(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.paace*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.paace* @pamu_get_ppaace(i32 %6)
  store %struct.paace* %7, %struct.paace** %3, align 8
  %8 = load %struct.paace*, %struct.paace** %3, align 8
  %9 = icmp ne %struct.paace* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.paace*, %struct.paace** %3, align 8
  %14 = getelementptr inbounds %struct.paace, %struct.paace* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PPAACE_AF_MW, align 4
  %17 = call i32 @get_bf(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %12
  %20 = load %struct.paace*, %struct.paace** %3, align 8
  %21 = getelementptr inbounds %struct.paace, %struct.paace* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAACE_IA_WCE, align 4
  %24 = call i32 @get_bf(i32 %22, i32 %23)
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = shl i64 1, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 16
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @spaace_pool, align 4
  %35 = load i32*, i32** @spaact, align 8
  %36 = load %struct.paace*, %struct.paace** %3, align 8
  %37 = getelementptr inbounds %struct.paace, %struct.paace* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = ptrtoint i32* %39 to i64
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @gen_pool_free(i32 %34, i64 %40, i32 %41)
  %43 = load %struct.paace*, %struct.paace** %3, align 8
  %44 = getelementptr inbounds %struct.paace, %struct.paace* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PPAACE_AF_MW, align 4
  %47 = call i32 @set_bf(i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %10, %19, %12
  ret void
}

declare dso_local %struct.paace* @pamu_get_ppaace(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @get_bf(i32, i32) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

declare dso_local i32 @set_bf(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
