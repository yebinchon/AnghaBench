; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dma.c_via_cmdbuf_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dma.c_via_cmdbuf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32*, i8*, i64, i64, i64 }

@HC_SubA_HAGPBstL = common dso_local global i32 0, align 4
@HC_SubA_HAGPBendL = common dso_local global i32 0, align 4
@HC_SubA_HAGPCMNT = common dso_local global i32 0, align 4
@HC_HAGPBpID_PAUSE = common dso_local global i32 0, align 4
@VIA_REG_TRANSET = common dso_local global i32 0, align 4
@HC_ParaType_PreCR = common dso_local global i32 0, align 4
@VIA_REG_TRANSPACE = common dso_local global i32 0, align 4
@HC_HAGPCMNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @via_cmdbuf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_cmdbuf_start(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = add nsw i32 %18, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @HC_SubA_HAGPBstL, align 4
  %31 = shl i32 %30, 24
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 16777215
  %34 = or i32 %31, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @HC_SubA_HAGPBendL, align 4
  %36 = shl i32 %35, 24
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 16777215
  %39 = or i32 %36, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @HC_SubA_HAGPCMNT, align 4
  %41 = shl i32 %40, 24
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 24
  %44 = or i32 %41, %43
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, -16777216
  %47 = lshr i32 %46, 16
  %48 = or i32 %44, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = load i32, i32* @HC_HAGPBpID_PAUSE, align 4
  %51 = call i64 @via_align_cmd(%struct.TYPE_6__* %49, i32 %50, i32 0, i32* %4, i32* %3, i32 1)
  %52 = sub nsw i64 %51, 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 6
  store i64 %52, i64* %54, align 8
  %55 = call i32 (...) @via_flush_write_combine()
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load volatile i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = load i32, i32* @VIA_REG_TRANSET, align 4
  %63 = load i32, i32* @HC_ParaType_PreCR, align 4
  %64 = shl i32 %63, 16
  %65 = call i32 @via_write(%struct.TYPE_6__* %61, i32 %62, i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @via_write(%struct.TYPE_6__* %66, i32 %67, i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @via_write(%struct.TYPE_6__* %70, i32 %71, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @via_write(%struct.TYPE_6__* %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @via_write(%struct.TYPE_6__* %78, i32 %79, i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @via_write(%struct.TYPE_6__* %82, i32 %83, i32 %84)
  %86 = call i32 (...) @wmb()
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @HC_HAGPCMNT_MASK, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @via_write(%struct.TYPE_6__* %87, i32 %88, i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %95 = call i32 @via_read(%struct.TYPE_6__* %93, i32 %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  store i32 10000000, i32* %13, align 4
  br label %98

98:                                               ; preds = %109, %1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = call i32 @via_read(%struct.TYPE_6__* %99, i32 1052)
  %101 = and i32 %100, -2147483648
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %13, align 4
  %106 = icmp ne i32 %104, 0
  br label %107

107:                                              ; preds = %103, %98
  %108 = phi i1 [ false, %98 ], [ %106, %103 ]
  br i1 %108, label %109, label %110

109:                                              ; preds = %107
  br label %98

110:                                              ; preds = %107
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %12, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = ptrtoint i8* %118 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %124, %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %129, %134
  %136 = add nsw i64 %135, 4
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  ret void
}

declare dso_local i64 @via_align_cmd(%struct.TYPE_6__*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @via_flush_write_combine(...) #1

declare dso_local i32 @via_write(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @via_read(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
