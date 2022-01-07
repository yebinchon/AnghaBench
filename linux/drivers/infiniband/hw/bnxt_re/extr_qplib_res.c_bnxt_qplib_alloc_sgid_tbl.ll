; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_sgid_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_sgid_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32 }
%struct.bnxt_qplib_sgid_tbl = type { i32*, i32*, i32*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_qplib_res*, %struct.bnxt_qplib_sgid_tbl*, i32)* @bnxt_qplib_alloc_sgid_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_qplib_alloc_sgid_tbl(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_sgid_tbl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_res*, align 8
  %6 = alloca %struct.bnxt_qplib_sgid_tbl*, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %5, align 8
  store %struct.bnxt_qplib_sgid_tbl* %1, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kcalloc(i32 %8, i32 4, i32 %9)
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %13 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %15 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %83

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kcalloc(i32 %22, i32 4, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %27 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %29 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %74

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 8, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %39 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %41 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %67

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i32 %46, i32 4, i32 %47)
  %49 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %50 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %52 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %60

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %59 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %4, align 4
  br label %83

60:                                               ; preds = %55
  %61 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %62 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %66 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %60, %44
  %68 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %69 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %73 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %32
  %75 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %76 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @kfree(i32* %77)
  %79 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %6, align 8
  %80 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %74, %56, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
