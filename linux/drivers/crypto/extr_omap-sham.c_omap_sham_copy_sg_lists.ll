; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_sg_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_sg_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_reqctx = type { i32, i32, %struct.TYPE_2__*, i64, %struct.scatterlist* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scatterlist = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FLAGS_SGS_ALLOCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_sham_reqctx*, %struct.scatterlist*, i32, i32)* @omap_sham_copy_sg_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_copy_sg_lists(%struct.omap_sham_reqctx* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_sham_reqctx*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.omap_sham_reqctx* %0, %struct.omap_sham_reqctx** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %15 = call i32 @sg_nents(%struct.scatterlist* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %17 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %20 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.scatterlist* @kmalloc_array(i32 %27, i32 8, i32 %28)
  %30 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %31 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %30, i32 0, i32 4
  store %struct.scatterlist* %29, %struct.scatterlist** %31, align 8
  %32 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %33 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %32, i32 0, i32 4
  %34 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %35 = icmp ne %struct.scatterlist* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %143

39:                                               ; preds = %26
  %40 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %41 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %40, i32 0, i32 4
  %42 = load %struct.scatterlist*, %struct.scatterlist** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @sg_init_table(%struct.scatterlist* %42, i32 %43)
  %45 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %46 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %45, i32 0, i32 4
  %47 = load %struct.scatterlist*, %struct.scatterlist** %46, align 8
  store %struct.scatterlist* %47, %struct.scatterlist** %11, align 8
  %48 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %49 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %51 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %39
  %55 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %56 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %57 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %62 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sg_set_buf(%struct.scatterlist* %55, i32 %60, i32 %63)
  %65 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %66 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %65)
  store %struct.scatterlist* %66, %struct.scatterlist** %11, align 8
  %67 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %68 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %54, %39
  br label %72

72:                                               ; preds = %131, %71
  %73 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %74 = icmp ne %struct.scatterlist* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  br i1 %79, label %80, label %134

80:                                               ; preds = %78
  %81 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %82 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %90 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %96, %88
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i32, i32* %13, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %112 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %113 = call i32 @sg_page(%struct.scatterlist* %112)
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %116 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @sg_set_page(%struct.scatterlist* %111, i32 %113, i32 %114, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %107
  %122 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %123 = call i32 @sg_mark_end(%struct.scatterlist* %122)
  br label %124

124:                                              ; preds = %121, %107
  %125 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %126 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %125)
  store %struct.scatterlist* %126, %struct.scatterlist** %11, align 8
  %127 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %128 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %124, %104
  %132 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %133 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %132)
  store %struct.scatterlist* %133, %struct.scatterlist** %7, align 8
  br label %72

134:                                              ; preds = %78
  %135 = load i32, i32* @FLAGS_SGS_ALLOCED, align 4
  %136 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %137 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = call i32 @set_bit(i32 %135, i32* %139)
  %141 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %142 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %134, %36
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
