; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_buf = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i32, i8* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_buf_alloc(%struct.hns_roce_dev* %0, i32 %1, i32 %2, %struct.hns_roce_buf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_roce_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.hns_roce_buf* %3, %struct.hns_roce_buf** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %14, align 8
  %20 = load i32, i32* %11, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %5
  %26 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %27 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @get_order(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %16, align 4
  br label %42

36:                                               ; preds = %25
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* %16, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %36, %35
  %43 = load i32, i32* %16, align 4
  %44 = shl i32 1, %43
  %45 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %46 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %49 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.device*, %struct.device** %14, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @dma_alloc_coherent(%struct.device* %50, i32 %51, i32* %13, i32 %52)
  %54 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %55 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i8* %53, i8** %56, align 8
  %57 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %58 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %42
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %170

65:                                               ; preds = %42
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %68 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %79, %65
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %73 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 1, %74
  %76 = sub nsw i32 %75, 1
  %77 = and i32 %71, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %81 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %85 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 2
  store i32 %87, i32* %85, align 4
  br label %70

88:                                               ; preds = %70
  br label %162

89:                                               ; preds = %5
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %90, %91
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %15, align 4
  %95 = sdiv i32 %93, %94
  %96 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %97 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %99 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %102 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %105 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %107 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call %struct.TYPE_4__* @kcalloc(i32 %108, i32 16, i32 %109)
  %111 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %112 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %111, i32 0, i32 3
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %112, align 8
  %113 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %114 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %113, i32 0, i32 3
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %89
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %170

120:                                              ; preds = %89
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %158, %120
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %124 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %161

127:                                              ; preds = %121
  %128 = load %struct.device*, %struct.device** %14, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @dma_alloc_coherent(%struct.device* %128, i32 %129, i32* %13, i32 %130)
  %132 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %133 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %132, i32 0, i32 3
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  store i8* %131, i8** %138, align 8
  %139 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %140 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %139, i32 0, i32 3
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %127
  br label %163

149:                                              ; preds = %127
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %152 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %151, i32 0, i32 3
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i32 %150, i32* %157, align 8
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %121

161:                                              ; preds = %121
  br label %162

162:                                              ; preds = %161, %88
  store i32 0, i32* %6, align 4
  br label %170

163:                                              ; preds = %148
  %164 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %10, align 8
  %167 = call i32 @hns_roce_buf_free(%struct.hns_roce_dev* %164, i32 %165, %struct.hns_roce_buf* %166)
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %163, %162, %117, %62
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @hns_roce_buf_free(%struct.hns_roce_dev*, i32, %struct.hns_roce_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
