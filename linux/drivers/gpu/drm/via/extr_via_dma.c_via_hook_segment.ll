; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dma.c_via_hook_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dma.c_via_hook_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i8*, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"Paused at incorrect address. 0x%08x, 0x%08x 0x%08x\0A\00", align 1
@VIA_REG_TRANSET = common dso_local global i32 0, align 4
@HC_ParaType_PreCR = common dso_local global i32 0, align 4
@VIA_REG_TRANSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @via_hook_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_hook_segment(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  store i32 0, i32* %9, align 4
  %18 = call i32 (...) @via_flush_write_combine()
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = call i32 @via_get_dma(%struct.TYPE_6__* %19)
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = load volatile i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %11, align 8
  store volatile i32 %25, i32* %26, align 4
  %27 = call i32 (...) @via_flush_write_combine()
  %28 = load i32*, i32** %11, align 8
  %29 = load volatile i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %35 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %46, %51
  %53 = add nsw i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = call i32 @via_get_dma(%struct.TYPE_6__* %55)
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %14, align 4
  store i32 10000000, i32* %10, align 4
  br label %69

69:                                               ; preds = %85, %4
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %10, align 4
  %75 = icmp ne i32 %73, 0
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %78, label %97

78:                                               ; preds = %76
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = call i32 @via_read(%struct.TYPE_6__* %79, i32 1052)
  %81 = and i32 %80, -2147483648
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %97

85:                                               ; preds = %78
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  store i32 %96, i32* %14, align 4
  br label %69

97:                                               ; preds = %84, %76
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = call i32 @via_read(%struct.TYPE_6__* %98, i32 1052)
  %100 = and i32 %99, -2147483648
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %162

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %162, label %106

106:                                              ; preds = %103
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  store i32 %117, i32* %14, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %14, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %106
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = ashr i32 %130, 1
  %132 = icmp slt i32 %127, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %135, i32 %138)
  br label %161

140:                                              ; preds = %126, %106
  %141 = load i32, i32* %14, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %140
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = load i32, i32* @VIA_REG_TRANSET, align 4
  %146 = load i32, i32* @HC_ParaType_PreCR, align 4
  %147 = shl i32 %146, 16
  %148 = call i32 @via_write(%struct.TYPE_6__* %144, i32 %145, i32 %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @via_write(%struct.TYPE_6__* %149, i32 %150, i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @via_write(%struct.TYPE_6__* %153, i32 %154, i32 %155)
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %159 = call i32 @via_read(%struct.TYPE_6__* %157, i32 %158)
  br label %160

160:                                              ; preds = %143, %140
  br label %161

161:                                              ; preds = %160, %133
  br label %162

162:                                              ; preds = %161, %103, %97
  %163 = load i32, i32* %9, align 4
  ret i32 %163
}

declare dso_local i32 @via_flush_write_combine(...) #1

declare dso_local i32 @via_get_dma(%struct.TYPE_6__*) #1

declare dso_local i32 @via_read(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32) #1

declare dso_local i32 @via_write(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
