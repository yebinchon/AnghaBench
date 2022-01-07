; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_dmac = type { i32 }
%struct._xfer_spec = type { i32 }
%struct._arg_LPEND = type { i32, i32, i32, i8* }

@ALWAYS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_dmac*, i32, i32*, i64*, %struct._xfer_spec*)* @_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_loop(%struct.pl330_dmac* %0, i32 %1, i32* %2, i64* %3, %struct._xfer_spec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pl330_dmac*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct._xfer_spec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct._arg_LPEND, align 8
  store %struct.pl330_dmac* %0, %struct.pl330_dmac** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct._xfer_spec* %4, %struct._xfer_spec** %11, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct._xfer_spec*, %struct._xfer_spec** %11, align 8
  %31 = call i32 @_bursts(%struct.pl330_dmac* %27, i32 %28, i32* %29, %struct._xfer_spec* %30, i32 1)
  store i32 %31, i32* %6, align 4
  br label %185

32:                                               ; preds = %5
  %33 = load i64*, i64** %10, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %34, 65536
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  store i32 256, i32* %19, align 4
  store i32 256, i32* %18, align 4
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %19, align 4
  %40 = zext i32 %39 to i64
  %41 = udiv i64 %38, %40
  %42 = load i32, i32* %18, align 4
  %43 = zext i32 %42 to i64
  %44 = udiv i64 %41, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  br label %62

46:                                               ; preds = %32
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %48, 256
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  store i32 256, i32* %19, align 4
  %51 = load i64*, i64** %10, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %19, align 4
  %54 = zext i32 %53 to i64
  %55 = udiv i64 %52, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %18, align 4
  store i32 1, i32* %12, align 4
  br label %61

57:                                               ; preds = %46
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %12, align 4
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @_emit_LP(i32 1, i32* %63, i32 0, i32 0)
  store i32 %64, i32* %14, align 4
  %65 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct._xfer_spec*, %struct._xfer_spec** %11, align 8
  %68 = call i32 @_bursts(%struct.pl330_dmac* %65, i32 1, i32* %66, %struct._xfer_spec* %67, i32 1)
  store i32 %68, i32* %16, align 4
  %69 = load i8*, i8** @ALWAYS, align 8
  %70 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 3
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @_emit_LPEND(i32 1, i32* %74, %struct._arg_LPEND* %22)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %62
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 %79, 2
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = mul nsw i32 %81, 2
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %78, %62
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 255, %86
  %88 = load i32, i32* %16, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %13, align 4
  br label %97

95:                                               ; preds = %83
  %96 = load i32, i32* %12, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @_emit_LP(i32 %102, i32* %106, i32 0, i32 %107)
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  store i32 %111, i32* %20, align 4
  br label %112

112:                                              ; preds = %101, %97
  %113 = load i32, i32* %8, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @_emit_LP(i32 %113, i32* %117, i32 1, i32 %118)
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %21, align 4
  %123 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load %struct._xfer_spec*, %struct._xfer_spec** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @_bursts(%struct.pl330_dmac* %123, i32 %124, i32* %128, %struct._xfer_spec* %129, i32 %130)
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %17, align 4
  %134 = load i8*, i8** @ALWAYS, align 8
  %135 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 3
  store i8* %134, i8** %135, align 8
  %136 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 1
  store i32 1, i32* %137, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %21, align 4
  %140 = sub i32 %138, %139
  %141 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 2
  store i32 %140, i32* %141, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = call i32 @_emit_LPEND(i32 %142, i32* %146, %struct._arg_LPEND* %22)
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %112
  %153 = load i8*, i8** @ALWAYS, align 8
  %154 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 3
  store i8* %153, i8** %154, align 8
  %155 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 1
  store i32 0, i32* %156, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %20, align 4
  %159 = sub i32 %157, %158
  %160 = getelementptr inbounds %struct._arg_LPEND, %struct._arg_LPEND* %22, i32 0, i32 2
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = call i32 @_emit_LPEND(i32 %161, i32* %165, %struct._arg_LPEND* %22)
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %17, align 4
  br label %169

169:                                              ; preds = %152, %112
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %12, align 4
  %172 = mul i32 %170, %171
  %173 = zext i32 %172 to i64
  %174 = load i64*, i64** %10, align 8
  store i64 %173, i64* %174, align 8
  %175 = load i32, i32* %18, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %169
  %178 = load i32, i32* %18, align 4
  %179 = zext i32 %178 to i64
  %180 = load i64*, i64** %10, align 8
  %181 = load i64, i64* %180, align 8
  %182 = mul i64 %181, %179
  store i64 %182, i64* %180, align 8
  br label %183

183:                                              ; preds = %177, %169
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %183, %26
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i32 @_bursts(%struct.pl330_dmac*, i32, i32*, %struct._xfer_spec*, i32) #1

declare dso_local i32 @_emit_LP(i32, i32*, i32, i32) #1

declare dso_local i32 @_emit_LPEND(i32, i32*, %struct._arg_LPEND*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
