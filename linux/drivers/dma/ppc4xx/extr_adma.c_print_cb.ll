; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_print_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_print_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dma_cdb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xor_cb = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [131 x i8] c"CDB at %p [%d]:\0A\09 attr 0x%02x opc 0x%02x cnt 0x%08x\0A\09 sg1u 0x%08x sg1l 0x%08x\0A\09 sg2u 0x%08x sg2l 0x%08x\0A\09 sg3u 0x%08x sg3l 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [108 x i8] c"CB at %p [%d]:\0A\09 cbc 0x%08x cbbc 0x%08x cbs 0x%08x\0A\09 cbtah 0x%08x cbtal 0x%08x\0A\09 cblah 0x%08x cblal 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\09 ops[%2d]: h 0x%08x l 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_chan*, i8*)* @print_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cb(%struct.ppc440spe_adma_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.ppc440spe_adma_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dma_cdb*, align 8
  %6 = alloca %struct.xor_cb*, align 8
  %7 = alloca i32, align 4
  store %struct.ppc440spe_adma_chan* %0, %struct.ppc440spe_adma_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %138 [
    i32 0, label %13
    i32 1, label %13
    i32 2, label %57
  ]

13:                                               ; preds = %2, %2
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.dma_cdb*
  store %struct.dma_cdb* %15, %struct.dma_cdb** %5, align 8
  %16 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %17 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %23 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %26 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %29 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %33 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %37 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %41 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %45 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %49 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %53 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str, i64 0, i64 0), %struct.dma_cdb* %16, i32 %21, i32 %24, i32 %27, i32 %31, i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55)
  br label %138

57:                                               ; preds = %2
  %58 = load i8*, i8** %4, align 8
  %59 = bitcast i8* %58 to %struct.xor_cb*
  store %struct.xor_cb* %59, %struct.xor_cb** %6, align 8
  %60 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %61 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %62 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %67 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %70 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %73 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %76 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %79 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %82 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %85 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0), %struct.xor_cb* %60, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %134, %57
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 16
  br i1 %90, label %91, label %137

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %96 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %94
  %105 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %106 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %104
  br label %134

115:                                              ; preds = %104, %94, %91
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %118 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.xor_cb*, %struct.xor_cb** %6, align 8
  %126 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %124, i32 %132)
  br label %134

134:                                              ; preds = %115, %114
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %88

137:                                              ; preds = %88
  br label %138

138:                                              ; preds = %2, %137, %13
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
