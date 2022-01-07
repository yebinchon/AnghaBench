; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_sg_to_link_tbl_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_sg_to_link_tbl_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.talitos_ptr = type { i32 }

@DESC_PTR_LNKTBL_RET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32, i32, i32, %struct.talitos_ptr*)* @sg_to_link_tbl_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_to_link_tbl_offset(%struct.scatterlist* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.talitos_ptr* %5) #0 {
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.talitos_ptr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.talitos_ptr* %5, %struct.talitos_ptr** %12, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  br label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ %23, %22 ]
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %117, %24
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %34 = icmp ne %struct.scatterlist* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %13, align 4
  %38 = icmp ne i32 %36, 0
  br label %39

39:                                               ; preds = %35, %32, %29
  %40 = phi i1 [ false, %32 ], [ false, %29 ], [ %38, %35 ]
  br i1 %40, label %41, label %120

41:                                               ; preds = %39
  %42 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %43 = call i32 @sg_dma_len(%struct.scatterlist* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %117

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %58, %51
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %60
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load %struct.talitos_ptr*, %struct.talitos_ptr** %12, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %68, i64 %70
  %72 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %73 = call i64 @sg_dma_address(%struct.scatterlist* %72)
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %71, i64 %76, i32 %77, i32 0)
  %79 = load %struct.talitos_ptr*, %struct.talitos_ptr** %12, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %79, i64 %81
  %83 = call i32 @to_talitos_ptr_ext_set(%struct.talitos_ptr* %82, i32 0, i32 0)
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %16, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %67, %63, %60
  %93 = load %struct.talitos_ptr*, %struct.talitos_ptr** %12, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %93, i64 %95
  %97 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %98 = call i64 @sg_dma_address(%struct.scatterlist* %97)
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %96, i64 %101, i32 %102, i32 0)
  %104 = load %struct.talitos_ptr*, %struct.talitos_ptr** %12, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %104, i64 %106
  %108 = call i32 @to_talitos_ptr_ext_set(%struct.talitos_ptr* %107, i32 0, i32 0)
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %15, align 4
  %113 = sub i32 %112, %111
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub i32 %115, %114
  store i32 %116, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %92, %47
  %118 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %119 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %118)
  store %struct.scatterlist* %119, %struct.scatterlist** %7, align 8
  br label %29

120:                                              ; preds = %39
  %121 = load i32, i32* %14, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load %struct.talitos_ptr*, %struct.talitos_ptr** %12, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %124, i64 %126
  %128 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %127, i64 -1
  %129 = load i32, i32* @DESC_PTR_LNKTBL_RET, align 4
  %130 = call i32 @to_talitos_ptr_ext_set(%struct.talitos_ptr* %128, i32 %129, i32 0)
  br label %131

131:                                              ; preds = %123, %120
  %132 = load i32, i32* %14, align 4
  ret i32 %132
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @to_talitos_ptr(%struct.talitos_ptr*, i64, i32, i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @to_talitos_ptr_ext_set(%struct.talitos_ptr*, i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
