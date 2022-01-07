; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_misc.c_pvrdma_page_dir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pvrdma_page_dir = type { i64, i64, i8**, i8**, i32*, i32 }

@PVRDMA_PAGE_DIR_MAX_PAGES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_page_dir_init(%struct.pvrdma_dev* %0, %struct.pvrdma_page_dir* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvrdma_dev*, align 8
  %7 = alloca %struct.pvrdma_page_dir*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %6, align 8
  store %struct.pvrdma_page_dir* %1, %struct.pvrdma_page_dir** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @PVRDMA_PAGE_DIR_MAX_PAGES, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %157

18:                                               ; preds = %4
  %19 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %20 = call i32 @memset(%struct.pvrdma_page_dir* %19, i32 0, i32 48)
  %21 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %22 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %27 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %26, i32 0, i32 5
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @dma_alloc_coherent(i32* %24, i32 %25, i32* %27, i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %32 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %34 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %18
  br label %151

38:                                               ; preds = %18
  %39 = load i64, i64* %8, align 8
  %40 = sub nsw i64 %39, 1
  %41 = call i64 @PVRDMA_PAGE_DIR_TABLE(i64 %40)
  %42 = add nsw i64 %41, 1
  %43 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %44 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %46 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kcalloc(i64 %47, i32 8, i32 %48)
  %50 = bitcast i8* %49 to i8**
  %51 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %52 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %51, i32 0, i32 3
  store i8** %50, i8*** %52, align 8
  %53 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %54 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %53, i32 0, i32 3
  %55 = load i8**, i8*** %54, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %38
  br label %151

58:                                               ; preds = %38
  store i64 0, i64* %10, align 8
  br label %59

59:                                               ; preds = %92, %58
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %62 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %59
  %66 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %67 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %72 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @dma_alloc_coherent(i32* %69, i32 %70, i32* %75, i32 %76)
  %78 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %79 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %78, i32 0, i32 3
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  store i8* %77, i8** %82, align 8
  %83 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %84 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %83, i32 0, i32 3
  %85 = load i8**, i8*** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %65
  br label %151

91:                                               ; preds = %65
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %10, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %10, align 8
  br label %59

95:                                               ; preds = %59
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %98 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %150

101:                                              ; preds = %95
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @kcalloc(i64 %102, i32 8, i32 %103)
  %105 = bitcast i8* %104 to i8**
  %106 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %107 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %106, i32 0, i32 2
  store i8** %105, i8*** %107, align 8
  %108 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %109 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = icmp ne i8** %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %101
  br label %151

113:                                              ; preds = %101
  store i64 0, i64* %10, align 8
  br label %114

114:                                              ; preds = %146, %113
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %117 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %114
  %121 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %122 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i8* @dma_alloc_coherent(i32* %124, i32 %125, i32* %11, i32 %126)
  %128 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %129 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %128, i32 0, i32 2
  %130 = load i8**, i8*** %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  store i8* %127, i8** %132, align 8
  %133 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %134 = getelementptr inbounds %struct.pvrdma_page_dir, %struct.pvrdma_page_dir* %133, i32 0, i32 2
  %135 = load i8**, i8*** %134, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %120
  br label %151

141:                                              ; preds = %120
  %142 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @pvrdma_page_dir_insert_dma(%struct.pvrdma_page_dir* %142, i64 %143, i32 %144)
  br label %146

146:                                              ; preds = %141
  %147 = load i64, i64* %10, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %10, align 8
  br label %114

149:                                              ; preds = %114
  br label %150

150:                                              ; preds = %149, %95
  store i32 0, i32* %5, align 4
  br label %157

151:                                              ; preds = %140, %112, %90, %57, %37
  %152 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %153 = load %struct.pvrdma_page_dir*, %struct.pvrdma_page_dir** %7, align 8
  %154 = call i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev* %152, %struct.pvrdma_page_dir* %153)
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %151, %150, %15
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @memset(%struct.pvrdma_page_dir*, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @PVRDMA_PAGE_DIR_TABLE(i64) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @pvrdma_page_dir_insert_dma(%struct.pvrdma_page_dir*, i64, i32) #1

declare dso_local i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev*, %struct.pvrdma_page_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
