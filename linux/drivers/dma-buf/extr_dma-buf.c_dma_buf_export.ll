; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.dma_buf = type { i32, i32, i32, %struct.file*, %struct.dma_resv*, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_5__*, i64 }
%struct.file = type { i32 }
%struct.dma_resv = type { i32 }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.dma_buf_export_info = type { i32, i32, i32, i32, %struct.TYPE_5__*, i64, %struct.dma_resv* }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FMODE_LSEEK = common dso_local global i32 0, align 4
@db_list = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_buf* @dma_buf_export(%struct.dma_buf_export_info* %0) #0 {
  %2 = alloca %struct.dma_buf*, align 8
  %3 = alloca %struct.dma_buf_export_info*, align 8
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.dma_resv*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dma_buf_export_info* %0, %struct.dma_buf_export_info** %3, align 8
  %9 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %10 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %9, i32 0, i32 6
  %11 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  store %struct.dma_resv* %11, %struct.dma_resv** %5, align 8
  store i64 96, i64* %7, align 8
  %12 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %13 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %12, i32 0, i32 6
  %14 = load %struct.dma_resv*, %struct.dma_resv** %13, align 8
  %15 = icmp ne %struct.dma_resv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, 4
  store i64 %18, i64* %7, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %24 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %29 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %34 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %33, i32 0, i32 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %41 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %40, i32 0, i32 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %48 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %47, i32 0, i32 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %46, %39, %32, %27, %22
  %55 = phi i1 [ true, %39 ], [ true, %32 ], [ true, %27 ], [ true, %22 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.dma_buf* @ERR_PTR(i32 %61)
  store %struct.dma_buf* %62, %struct.dma_buf** %2, align 8
  br label %179

63:                                               ; preds = %54
  %64 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %65 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @try_module_get(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.dma_buf* @ERR_PTR(i32 %71)
  store %struct.dma_buf* %72, %struct.dma_buf** %2, align 8
  br label %179

73:                                               ; preds = %63
  %74 = load i64, i64* %7, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.dma_buf* @kzalloc(i64 %74, i32 %75)
  store %struct.dma_buf* %76, %struct.dma_buf** %4, align 8
  %77 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %78 = icmp ne %struct.dma_buf* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %172

82:                                               ; preds = %73
  %83 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %84 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %87 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %86, i32 0, i32 12
  store i64 %85, i64* %87, align 8
  %88 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %89 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %88, i32 0, i32 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %92 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %91, i32 0, i32 11
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %92, align 8
  %93 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %94 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %97 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 4
  %98 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %99 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %102 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 8
  %103 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %104 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %107 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 4
  %108 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %109 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %108, i32 0, i32 7
  %110 = call i32 @init_waitqueue_head(i32* %109)
  %111 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %112 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %111, i32 0, i32 7
  %113 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %114 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i32* %112, i32** %115, align 8
  %116 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %117 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  store i32* %112, i32** %118, align 8
  %119 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %120 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %123 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  %125 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %126 = icmp ne %struct.dma_resv* %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %82
  %128 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %129 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %128, i64 1
  %130 = bitcast %struct.dma_buf* %129 to %struct.dma_resv*
  store %struct.dma_resv* %130, %struct.dma_resv** %5, align 8
  %131 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %132 = call i32 @dma_resv_init(%struct.dma_resv* %131)
  br label %133

133:                                              ; preds = %127, %82
  %134 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %135 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %136 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %135, i32 0, i32 4
  store %struct.dma_resv* %134, %struct.dma_resv** %136, align 8
  %137 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %138 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %139 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call %struct.file* @dma_buf_getfile(%struct.dma_buf* %137, i32 %140)
  store %struct.file* %141, %struct.file** %6, align 8
  %142 = load %struct.file*, %struct.file** %6, align 8
  %143 = call i64 @IS_ERR(%struct.file* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load %struct.file*, %struct.file** %6, align 8
  %147 = call i32 @PTR_ERR(%struct.file* %146)
  store i32 %147, i32* %8, align 4
  br label %169

148:                                              ; preds = %133
  %149 = load i32, i32* @FMODE_LSEEK, align 4
  %150 = load %struct.file*, %struct.file** %6, align 8
  %151 = getelementptr inbounds %struct.file, %struct.file* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.file*, %struct.file** %6, align 8
  %155 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %156 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %155, i32 0, i32 3
  store %struct.file* %154, %struct.file** %156, align 8
  %157 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %158 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %157, i32 0, i32 2
  %159 = call i32 @mutex_init(i32* %158)
  %160 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %161 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %160, i32 0, i32 1
  %162 = call i32 @INIT_LIST_HEAD(i32* %161)
  %163 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @db_list, i32 0, i32 0))
  %164 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %165 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %164, i32 0, i32 0
  %166 = call i32 @list_add(i32* %165, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @db_list, i32 0, i32 1))
  %167 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @db_list, i32 0, i32 0))
  %168 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  store %struct.dma_buf* %168, %struct.dma_buf** %2, align 8
  br label %179

169:                                              ; preds = %145
  %170 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %171 = call i32 @kfree(%struct.dma_buf* %170)
  br label %172

172:                                              ; preds = %169, %79
  %173 = load %struct.dma_buf_export_info*, %struct.dma_buf_export_info** %3, align 8
  %174 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @module_put(i32 %175)
  %177 = load i32, i32* %8, align 4
  %178 = call %struct.dma_buf* @ERR_PTR(i32 %177)
  store %struct.dma_buf* %178, %struct.dma_buf** %2, align 8
  br label %179

179:                                              ; preds = %172, %148, %69, %59
  %180 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  ret %struct.dma_buf* %180
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.dma_buf* @ERR_PTR(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.dma_buf* @kzalloc(i64, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dma_resv_init(%struct.dma_resv*) #1

declare dso_local %struct.file* @dma_buf_getfile(%struct.dma_buf*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.dma_buf*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
