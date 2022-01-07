; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_align_sgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_align_sgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i32 }
%struct.omap_sham_reqctx = type { i32, i32, %struct.scatterlist* }

@ZONE_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32, i32, %struct.omap_sham_reqctx*)* @omap_sham_align_sgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_align_sgs(%struct.scatterlist* %0, i32 %1, i32 %2, i32 %3, %struct.omap_sham_reqctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap_sham_reqctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.omap_sham_reqctx* %4, %struct.omap_sham_reqctx** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %18, %struct.scatterlist** %15, align 8
  %19 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %11, align 8
  %20 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %17, align 4
  %22 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %23 = icmp ne %struct.scatterlist* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %24, %5
  store i32 0, i32* %6, align 4
  br label %151

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @DIV_ROUND_UP(i32 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %16, align 4
  br label %54

47:                                               ; preds = %38
  %48 = load i32, i32* %16, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = sdiv i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %58, %54
  br label %60

60:                                               ; preds = %124, %59
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %65 = icmp ne %struct.scatterlist* %64, null
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i1 [ false, %60 ], [ %65, %63 ]
  br i1 %67, label %68, label %125

68:                                               ; preds = %66
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %73 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %68
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = call i32 @IS_ALIGNED(i32 %81, i32 4)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  br label %125

85:                                               ; preds = %76
  %86 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %87 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %17, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @IS_ALIGNED(i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  store i32 0, i32* %13, align 4
  br label %125

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %68
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %101 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %8, align 4
  store i32 0, i32* %17, align 4
  br label %111

111:                                              ; preds = %107, %99
  br label %118

112:                                              ; preds = %96
  %113 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %114 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %112, %111
  %119 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %120 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %119)
  store %struct.scatterlist* %120, %struct.scatterlist** %15, align 8
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 0, i32* %14, align 4
  br label %125

124:                                              ; preds = %118
  br label %60

125:                                              ; preds = %123, %94, %84, %66
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %11, align 8
  %130 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @omap_sham_copy_sgs(%struct.omap_sham_reqctx* %129, %struct.scatterlist* %130, i32 %131, i32 %132)
  store i32 %133, i32* %6, align 4
  br label %151

134:                                              ; preds = %125
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %11, align 8
  %139 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @omap_sham_copy_sg_lists(%struct.omap_sham_reqctx* %138, %struct.scatterlist* %139, i32 %140, i32 %141)
  store i32 %142, i32* %6, align 4
  br label %151

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %11, align 8
  %147 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %149 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %11, align 8
  %150 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %149, i32 0, i32 2
  store %struct.scatterlist* %148, %struct.scatterlist** %150, align 8
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %144, %137, %128, %32
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @omap_sham_copy_sgs(%struct.omap_sham_reqctx*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @omap_sham_copy_sg_lists(%struct.omap_sham_reqctx*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
