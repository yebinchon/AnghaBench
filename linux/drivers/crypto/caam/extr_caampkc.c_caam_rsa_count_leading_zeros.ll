; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_count_leading_zeros.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_count_leading_zeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.sg_mapping_iter = type { i32, i32, i64* }

@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32)* @caam_rsa_count_leading_zeros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_rsa_count_leading_zeros(%struct.scatterlist* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sg_mapping_iter, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sg_nents_for_len(%struct.scatterlist* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %80

22:                                               ; preds = %3
  %23 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %8, %struct.scatterlist* %23, i32 %24, i32 %27)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %61, %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i64*, i64** %13, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ult i32 %41, %42
  br label %44

44:                                               ; preds = %40, %36, %33
  %45 = phi i1 [ false, %36 ], [ false, %33 ], [ %43, %40 ]
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %11, align 4
  %51 = load i64*, i64** %13, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %13, align 8
  br label %33

53:                                               ; preds = %44
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64*, i64** %13, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %70

61:                                               ; preds = %56, %53
  %62 = call i32 @sg_miter_next(%struct.sg_mapping_iter* %8)
  %63 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %8, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  store i64* %64, i64** %13, align 8
  %65 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %29

70:                                               ; preds = %60, %29
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %8, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %8)
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub i32 %77, %78
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %70, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
