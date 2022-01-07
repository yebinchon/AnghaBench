; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_get_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_get_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ldb = type { i8**, i32, i8** }

@.str = private unnamed_addr constant [5 x i8] c"di%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"di%d_pll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_ldb*, i32)* @imx_ldb_get_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ldb_get_clk(%struct.imx_ldb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_ldb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  store %struct.imx_ldb* %0, %struct.imx_ldb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @snprintf(i8* %7, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %11 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %14 = call i8* @devm_clk_get(i32 %12, i8* %13)
  %15 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %16 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %15, i32 0, i32 2
  %17 = load i8**, i8*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  store i8* %14, i8** %20, align 8
  %21 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %22 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %21, i32 0, i32 2
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %32 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %2
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @snprintf(i8* %40, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %44 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %47 = call i8* @devm_clk_get(i32 %45, i8* %46)
  %48 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %49 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %47, i8** %53, align 8
  %54 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %55 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR_OR_ZERO(i8* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %39, %30
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
