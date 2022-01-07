; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_hw_links_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_hw_links_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32, i64*, %struct.TYPE_2__**, %struct.scatterlist*, i32, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.scatterlist = type { i32, i32 }
%struct.sahara_sha_reqctx = type { i32, %struct.scatterlist* }

@.str = private unnamed_addr constant [28 x i8] c"Invalid numbers of src SG.\0A\00", align 1
@SAHARA_MAX_HW_LINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"not enough hw links (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sahara_dev*, %struct.sahara_sha_reqctx*, i32)* @sahara_sha_hw_links_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_sha_hw_links_create(%struct.sahara_dev* %0, %struct.sahara_sha_reqctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sahara_dev*, align 8
  %6 = alloca %struct.sahara_sha_reqctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sahara_dev* %0, %struct.sahara_dev** %5, align 8
  store %struct.sahara_sha_reqctx* %1, %struct.sahara_sha_reqctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %6, align 8
  %12 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %11, i32 0, i32 1
  %13 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %14 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %15 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %14, i32 0, i32 3
  store %struct.scatterlist* %13, %struct.scatterlist** %15, align 8
  %16 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %17 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %16, i32 0, i32 3
  %18 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %19 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %6, align 8
  %20 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sg_nents_for_len(%struct.scatterlist* %18, i32 %21)
  %23 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %24 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %26 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %31 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %35 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %4, align 4
  br label %155

37:                                               ; preds = %3
  %38 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %39 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @SAHARA_MAX_HW_LINK, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %46 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %49 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %53 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %155

59:                                               ; preds = %37
  %60 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %61 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %60, i32 0, i32 3
  %62 = load %struct.scatterlist*, %struct.scatterlist** %61, align 8
  store %struct.scatterlist* %62, %struct.scatterlist** %8, align 8
  %63 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %64 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %67 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %66, i32 0, i32 3
  %68 = load %struct.scatterlist*, %struct.scatterlist** %67, align 8
  %69 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %70 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = call i32 @dma_map_sg(i32 %65, %struct.scatterlist* %68, i64 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %59
  %78 = load i32, i32* @EFAULT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %155

80:                                               ; preds = %59
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %150, %80
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %85 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp ult i32 %83, %88
  br i1 %89, label %90, label %153

90:                                               ; preds = %82
  %91 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %92 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %95 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %96, i64 %98
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i32 %93, i32* %101, align 4
  %102 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %103 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %106 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %107, i64 %109
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 %104, i32* %112, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %115 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %116, %117
  %119 = sub nsw i32 %118, 1
  %120 = icmp eq i32 %113, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %90
  %122 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %123 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %124, i64 %126
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %149

130:                                              ; preds = %90
  %131 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %132 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %140 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %141, i64 %143
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i64 %138, i64* %146, align 8
  %147 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %148 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %147)
  store %struct.scatterlist* %148, %struct.scatterlist** %8, align 8
  br label %149

149:                                              ; preds = %130, %121
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %82

153:                                              ; preds = %82
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %77, %44, %29
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
