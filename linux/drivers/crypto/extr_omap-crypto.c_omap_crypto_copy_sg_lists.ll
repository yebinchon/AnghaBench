; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-crypto.c_omap_crypto_copy_sg_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-crypto.c_omap_crypto_copy_sg_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i32 }

@OMAP_CRYPTO_FORCE_SINGLE_ENTRY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.scatterlist**, %struct.scatterlist*, i32)* @omap_crypto_copy_sg_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_crypto_copy_sg_lists(i32 %0, i32 %1, %struct.scatterlist** %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist**, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.scatterlist** %2, %struct.scatterlist*** %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %17 = call i32 @sg_nents(%struct.scatterlist* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @OMAP_CRYPTO_FORCE_SINGLE_ENTRY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.scatterlist* @kmalloc_array(i32 %23, i32 8, i32 %24)
  store %struct.scatterlist* %25, %struct.scatterlist** %10, align 8
  %26 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %27 = icmp ne %struct.scatterlist* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %89

31:                                               ; preds = %22
  %32 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @sg_init_table(%struct.scatterlist* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %5
  %36 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %36, %struct.scatterlist** %13, align 8
  br label %37

37:                                               ; preds = %81, %35
  %38 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %38, align 8
  %40 = icmp ne %struct.scatterlist* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i1 [ false, %37 ], [ %43, %41 ]
  br i1 %45, label %46, label %86

46:                                               ; preds = %44
  %47 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %48 = load %struct.scatterlist*, %struct.scatterlist** %47, align 8
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* %14, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %64 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %65 = load %struct.scatterlist*, %struct.scatterlist** %64, align 8
  %66 = call i32 @sg_page(%struct.scatterlist* %65)
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %68, align 8
  %70 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sg_set_page(%struct.scatterlist* %63, i32 %66, i32 %67, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %77 = call i32 @sg_mark_end(%struct.scatterlist* %76)
  br label %78

78:                                               ; preds = %75, %59
  %79 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %80 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %79)
  store %struct.scatterlist* %80, %struct.scatterlist** %13, align 8
  br label %81

81:                                               ; preds = %78, %56
  %82 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %83 = load %struct.scatterlist*, %struct.scatterlist** %82, align 8
  %84 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %83)
  %85 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  store %struct.scatterlist* %84, %struct.scatterlist** %85, align 8
  br label %37

86:                                               ; preds = %44
  %87 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %88 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  store %struct.scatterlist* %87, %struct.scatterlist** %88, align 8
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %28
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
