; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_write_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_write_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.brcm_message*, i64, i64, i8*, i64, i8*, i8*)* @flexrm_spu_write_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @flexrm_spu_write_descs(%struct.brcm_message* %0, i64 %1, i64 %2, i8* %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.brcm_message*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.scatterlist*, align 8
  %20 = alloca %struct.scatterlist*, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i64 0, i64* %16, align 8
  %21 = load i8*, i8** %11, align 8
  store i8* %21, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %22 = load %struct.brcm_message*, %struct.brcm_message** %8, align 8
  %23 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  store %struct.scatterlist* %25, %struct.scatterlist** %19, align 8
  %26 = load %struct.brcm_message*, %struct.brcm_message** %8, align 8
  %27 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  store %struct.scatterlist* %29, %struct.scatterlist** %20, align 8
  br label %30

30:                                               ; preds = %125, %7
  %31 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %32 = icmp ne %struct.scatterlist* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %35 = icmp ne %struct.scatterlist* %34, null
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ true, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %126

38:                                               ; preds = %36
  %39 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %40 = icmp ne %struct.scatterlist* %39, null
  br i1 %40, label %41, label %73

41:                                               ; preds = %38
  %42 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %43 = call i32 @sg_dma_len(%struct.scatterlist* %42)
  %44 = and i32 %43, 15
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %48 = call i32 @sg_dma_address(%struct.scatterlist* %47)
  %49 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %50 = call i32 @sg_dma_len(%struct.scatterlist* %49)
  %51 = call i32 @flexrm_src_desc(i32 %48, i32 %50)
  store i32 %51, i32* %15, align 4
  br label %59

52:                                               ; preds = %41
  %53 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %54 = call i32 @sg_dma_address(%struct.scatterlist* %53)
  %55 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %56 = call i32 @sg_dma_len(%struct.scatterlist* %55)
  %57 = udiv i32 %56, 16
  %58 = call i32 @flexrm_msrc_desc(i32 %54, i32 %57)
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %52, %46
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @flexrm_enqueue_desc(i64 %60, i64 %61, i64 %62, i32 %63, i8** %11, i64* %12, i8* %64, i8* %65)
  %67 = load i64, i64* %16, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %16, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %70 = call i32 @sg_dma_len(%struct.scatterlist* %69)
  store i32 %70, i32* %18, align 4
  %71 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %72 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %71)
  store %struct.scatterlist* %72, %struct.scatterlist** %19, align 8
  br label %75

73:                                               ; preds = %38
  %74 = load i32, i32* @UINT_MAX, align 4
  store i32 %74, i32* %18, align 4
  br label %75

75:                                               ; preds = %73, %59
  br label %76

76:                                               ; preds = %122, %75
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %81 = icmp ne %struct.scatterlist* %80, null
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i1 [ false, %76 ], [ %81, %79 ]
  br i1 %83, label %84, label %125

84:                                               ; preds = %82
  %85 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %86 = call i32 @sg_dma_len(%struct.scatterlist* %85)
  %87 = and i32 %86, 15
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %91 = call i32 @sg_dma_address(%struct.scatterlist* %90)
  %92 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %93 = call i32 @sg_dma_len(%struct.scatterlist* %92)
  %94 = call i32 @flexrm_dst_desc(i32 %91, i32 %93)
  store i32 %94, i32* %15, align 4
  br label %102

95:                                               ; preds = %84
  %96 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %97 = call i32 @sg_dma_address(%struct.scatterlist* %96)
  %98 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %99 = call i32 @sg_dma_len(%struct.scatterlist* %98)
  %100 = udiv i32 %99, 16
  %101 = call i32 @flexrm_mdst_desc(i32 %97, i32 %100)
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %95, %89
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @flexrm_enqueue_desc(i64 %103, i64 %104, i64 %105, i32 %106, i8** %11, i64* %12, i8* %107, i8* %108)
  %110 = load i64, i64* %16, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %16, align 8
  %112 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %113 = call i32 @sg_dma_len(%struct.scatterlist* %112)
  %114 = load i32, i32* %18, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %118 = call i32 @sg_dma_len(%struct.scatterlist* %117)
  %119 = load i32, i32* %18, align 4
  %120 = sub i32 %119, %118
  store i32 %120, i32* %18, align 4
  br label %122

121:                                              ; preds = %102
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %121, %116
  %123 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  %124 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %123)
  store %struct.scatterlist* %124, %struct.scatterlist** %20, align 8
  br label %76

125:                                              ; preds = %82
  br label %30

126:                                              ; preds = %36
  %127 = load i8*, i8** %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @flexrm_null_desc(i32 %131)
  %133 = call i32 @flexrm_write_desc(i8* %127, i32 %132)
  %134 = call i32 (...) @wmb()
  %135 = load i8*, i8** %17, align 8
  %136 = call i32 @flexrm_flip_header_toggle(i8* %135)
  %137 = load i8*, i8** %11, align 8
  ret i8* %137
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @flexrm_src_desc(i32, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @flexrm_msrc_desc(i32, i32) #1

declare dso_local i32 @flexrm_enqueue_desc(i64, i64, i64, i32, i8**, i64*, i8*, i8*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @flexrm_dst_desc(i32, i32) #1

declare dso_local i32 @flexrm_mdst_desc(i32, i32) #1

declare dso_local i32 @flexrm_write_desc(i8*, i32) #1

declare dso_local i32 @flexrm_null_desc(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @flexrm_flip_header_toggle(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
