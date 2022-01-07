; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_ch_param_set_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_ch_param_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%union.chan_param_mem = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ipu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"mx3 ipu: unimplemented pixel format %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.chan_param_mem*, i32, i32, i32, i32)* @ipu_ch_param_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_ch_param_set_size(%union.chan_param_mem* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %union.chan_param_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %union.chan_param_mem* %0, %union.chan_param_mem** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %16 = bitcast %union.chan_param_mem* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %21 = bitcast %union.chan_param_mem* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = ashr i32 %24, 8
  %26 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %27 = bitcast %union.chan_param_mem* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %32 = bitcast %union.chan_param_mem* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %322 [
    i32 138, label %35
    i32 137, label %48
    i32 134, label %61
    i32 141, label %95
    i32 136, label %129
    i32 139, label %163
    i32 140, label %163
    i32 142, label %163
    i32 133, label %200
    i32 135, label %200
    i32 132, label %237
    i32 130, label %250
    i32 131, label %250
    i32 128, label %274
    i32 129, label %298
  ]

35:                                               ; preds = %5
  %36 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %37 = bitcast %union.chan_param_mem* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i32 3, i32* %38, align 4
  %39 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %40 = bitcast %union.chan_param_mem* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  store i32 7, i32* %41, align 4
  %42 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %43 = bitcast %union.chan_param_mem* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 6
  store i32 31, i32* %44, align 4
  %45 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %46 = bitcast %union.chan_param_mem* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  store i32 2, i32* %47, align 4
  br label %326

48:                                               ; preds = %5
  %49 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %50 = bitcast %union.chan_param_mem* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  store i32 0, i32* %51, align 4
  %52 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %53 = bitcast %union.chan_param_mem* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  store i32 7, i32* %54, align 4
  %55 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %56 = bitcast %union.chan_param_mem* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 6
  store i32 7, i32* %57, align 4
  %58 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %59 = bitcast %union.chan_param_mem* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 7
  store i32 2, i32* %60, align 4
  br label %326

61:                                               ; preds = %5
  %62 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %63 = bitcast %union.chan_param_mem* %62 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 2, i32* %64, align 4
  %65 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %66 = bitcast %union.chan_param_mem* %65 to %struct.TYPE_5__*
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 4, i32* %67, align 4
  %68 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %69 = bitcast %union.chan_param_mem* %68 to %struct.TYPE_5__*
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 15, i32* %70, align 4
  %71 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %72 = bitcast %union.chan_param_mem* %71 to %struct.TYPE_5__*
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i32 2, i32* %73, align 4
  %74 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %75 = bitcast %union.chan_param_mem* %74 to %struct.TYPE_5__*
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  store i32 0, i32* %76, align 4
  %77 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %78 = bitcast %union.chan_param_mem* %77 to %struct.TYPE_5__*
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 5
  store i32 5, i32* %79, align 4
  %80 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %81 = bitcast %union.chan_param_mem* %80 to %struct.TYPE_5__*
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 6
  store i32 11, i32* %82, align 4
  %83 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %84 = bitcast %union.chan_param_mem* %83 to %struct.TYPE_5__*
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 7
  store i32 16, i32* %85, align 4
  %86 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %87 = bitcast %union.chan_param_mem* %86 to %struct.TYPE_5__*
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 8
  store i32 4, i32* %88, align 4
  %89 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %90 = bitcast %union.chan_param_mem* %89 to %struct.TYPE_5__*
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 9
  store i32 5, i32* %91, align 4
  %92 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %93 = bitcast %union.chan_param_mem* %92 to %struct.TYPE_5__*
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 10
  store i32 4, i32* %94, align 4
  br label %326

95:                                               ; preds = %5
  %96 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %97 = bitcast %union.chan_param_mem* %96 to %struct.TYPE_5__*
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %100 = bitcast %union.chan_param_mem* %99 to %struct.TYPE_5__*
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 4, i32* %101, align 4
  %102 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %103 = bitcast %union.chan_param_mem* %102 to %struct.TYPE_5__*
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i32 7, i32* %104, align 4
  %105 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %106 = bitcast %union.chan_param_mem* %105 to %struct.TYPE_5__*
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  store i32 2, i32* %107, align 4
  %108 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %109 = bitcast %union.chan_param_mem* %108 to %struct.TYPE_5__*
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  store i32 0, i32* %110, align 4
  %111 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %112 = bitcast %union.chan_param_mem* %111 to %struct.TYPE_5__*
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 5
  store i32 8, i32* %113, align 4
  %114 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %115 = bitcast %union.chan_param_mem* %114 to %struct.TYPE_5__*
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 6
  store i32 16, i32* %116, align 4
  %117 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %118 = bitcast %union.chan_param_mem* %117 to %struct.TYPE_5__*
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 7
  store i32 24, i32* %119, align 4
  %120 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %121 = bitcast %union.chan_param_mem* %120 to %struct.TYPE_5__*
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 8
  store i32 7, i32* %122, align 4
  %123 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %124 = bitcast %union.chan_param_mem* %123 to %struct.TYPE_5__*
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 9
  store i32 7, i32* %125, align 4
  %126 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %127 = bitcast %union.chan_param_mem* %126 to %struct.TYPE_5__*
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 10
  store i32 7, i32* %128, align 4
  br label %326

129:                                              ; preds = %5
  %130 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %131 = bitcast %union.chan_param_mem* %130 to %struct.TYPE_5__*
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 4
  %133 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %134 = bitcast %union.chan_param_mem* %133 to %struct.TYPE_5__*
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32 4, i32* %135, align 4
  %136 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %137 = bitcast %union.chan_param_mem* %136 to %struct.TYPE_5__*
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store i32 7, i32* %138, align 4
  %139 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %140 = bitcast %union.chan_param_mem* %139 to %struct.TYPE_5__*
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  store i32 2, i32* %141, align 4
  %142 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %143 = bitcast %union.chan_param_mem* %142 to %struct.TYPE_5__*
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 4
  store i32 16, i32* %144, align 4
  %145 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %146 = bitcast %union.chan_param_mem* %145 to %struct.TYPE_5__*
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  store i32 8, i32* %147, align 4
  %148 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %149 = bitcast %union.chan_param_mem* %148 to %struct.TYPE_5__*
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 6
  store i32 0, i32* %150, align 4
  %151 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %152 = bitcast %union.chan_param_mem* %151 to %struct.TYPE_5__*
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 7
  store i32 24, i32* %153, align 4
  %154 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %155 = bitcast %union.chan_param_mem* %154 to %struct.TYPE_5__*
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 8
  store i32 7, i32* %156, align 4
  %157 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %158 = bitcast %union.chan_param_mem* %157 to %struct.TYPE_5__*
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 9
  store i32 7, i32* %159, align 4
  %160 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %161 = bitcast %union.chan_param_mem* %160 to %struct.TYPE_5__*
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 10
  store i32 7, i32* %162, align 4
  br label %326

163:                                              ; preds = %5, %5, %5
  %164 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %165 = bitcast %union.chan_param_mem* %164 to %struct.TYPE_5__*
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  store i32 0, i32* %166, align 4
  %167 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %168 = bitcast %union.chan_param_mem* %167 to %struct.TYPE_5__*
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i32 4, i32* %169, align 4
  %170 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %171 = bitcast %union.chan_param_mem* %170 to %struct.TYPE_5__*
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  store i32 7, i32* %172, align 4
  %173 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %174 = bitcast %union.chan_param_mem* %173 to %struct.TYPE_5__*
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  store i32 2, i32* %175, align 4
  %176 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %177 = bitcast %union.chan_param_mem* %176 to %struct.TYPE_5__*
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 4
  store i32 8, i32* %178, align 4
  %179 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %180 = bitcast %union.chan_param_mem* %179 to %struct.TYPE_5__*
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 5
  store i32 16, i32* %181, align 4
  %182 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %183 = bitcast %union.chan_param_mem* %182 to %struct.TYPE_5__*
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 6
  store i32 24, i32* %184, align 4
  %185 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %186 = bitcast %union.chan_param_mem* %185 to %struct.TYPE_5__*
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 7
  store i32 0, i32* %187, align 4
  %188 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %189 = bitcast %union.chan_param_mem* %188 to %struct.TYPE_5__*
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 8
  store i32 7, i32* %190, align 4
  %191 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %192 = bitcast %union.chan_param_mem* %191 to %struct.TYPE_5__*
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 9
  store i32 7, i32* %193, align 4
  %194 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %195 = bitcast %union.chan_param_mem* %194 to %struct.TYPE_5__*
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 10
  store i32 7, i32* %196, align 4
  %197 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %198 = bitcast %union.chan_param_mem* %197 to %struct.TYPE_5__*
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 11
  store i32 7, i32* %199, align 4
  br label %326

200:                                              ; preds = %5, %5
  %201 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %202 = bitcast %union.chan_param_mem* %201 to %struct.TYPE_5__*
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 4
  %204 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %205 = bitcast %union.chan_param_mem* %204 to %struct.TYPE_5__*
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  store i32 4, i32* %206, align 4
  %207 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %208 = bitcast %union.chan_param_mem* %207 to %struct.TYPE_5__*
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  store i32 7, i32* %209, align 4
  %210 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %211 = bitcast %union.chan_param_mem* %210 to %struct.TYPE_5__*
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 3
  store i32 2, i32* %212, align 4
  %213 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %214 = bitcast %union.chan_param_mem* %213 to %struct.TYPE_5__*
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 4
  store i32 24, i32* %215, align 4
  %216 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %217 = bitcast %union.chan_param_mem* %216 to %struct.TYPE_5__*
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 5
  store i32 16, i32* %218, align 4
  %219 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %220 = bitcast %union.chan_param_mem* %219 to %struct.TYPE_5__*
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 6
  store i32 8, i32* %221, align 4
  %222 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %223 = bitcast %union.chan_param_mem* %222 to %struct.TYPE_5__*
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 7
  store i32 0, i32* %224, align 4
  %225 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %226 = bitcast %union.chan_param_mem* %225 to %struct.TYPE_5__*
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 8
  store i32 7, i32* %227, align 4
  %228 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %229 = bitcast %union.chan_param_mem* %228 to %struct.TYPE_5__*
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 9
  store i32 7, i32* %230, align 4
  %231 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %232 = bitcast %union.chan_param_mem* %231 to %struct.TYPE_5__*
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 10
  store i32 7, i32* %233, align 4
  %234 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %235 = bitcast %union.chan_param_mem* %234 to %struct.TYPE_5__*
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 11
  store i32 7, i32* %236, align 4
  br label %326

237:                                              ; preds = %5
  %238 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %239 = bitcast %union.chan_param_mem* %238 to %struct.TYPE_5__*
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  store i32 2, i32* %240, align 4
  %241 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %242 = bitcast %union.chan_param_mem* %241 to %struct.TYPE_5__*
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  store i32 6, i32* %243, align 4
  %244 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %245 = bitcast %union.chan_param_mem* %244 to %struct.TYPE_5__*
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  store i32 7, i32* %246, align 4
  %247 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %248 = bitcast %union.chan_param_mem* %247 to %struct.TYPE_5__*
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 3
  store i32 2, i32* %249, align 4
  br label %326

250:                                              ; preds = %5, %5
  %251 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %252 = bitcast %union.chan_param_mem* %251 to %struct.TYPE_5__*
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  store i32 3, i32* %253, align 4
  %254 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %255 = bitcast %union.chan_param_mem* %254 to %struct.TYPE_5__*
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  store i32 3, i32* %256, align 4
  %257 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %258 = bitcast %union.chan_param_mem* %257 to %struct.TYPE_5__*
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 2
  store i32 7, i32* %259, align 4
  %260 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %261 = bitcast %union.chan_param_mem* %260 to %struct.TYPE_5__*
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 3
  store i32 2, i32* %262, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %9, align 4
  %265 = mul nsw i32 %263, %264
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = sdiv i32 %267, 4
  %269 = add nsw i32 %266, %268
  store i32 %269, i32* %12, align 4
  %270 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @ipu_ch_param_set_plane_offset(%union.chan_param_mem* %270, i32 %271, i32 %272)
  br label %326

274:                                              ; preds = %5
  %275 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %276 = bitcast %union.chan_param_mem* %275 to %struct.TYPE_5__*
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  store i32 3, i32* %277, align 4
  %278 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %279 = bitcast %union.chan_param_mem* %278 to %struct.TYPE_5__*
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  store i32 2, i32* %280, align 4
  %281 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %282 = bitcast %union.chan_param_mem* %281 to %struct.TYPE_5__*
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 2
  store i32 7, i32* %283, align 4
  %284 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %285 = bitcast %union.chan_param_mem* %284 to %struct.TYPE_5__*
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 3
  store i32 2, i32* %286, align 4
  %287 = load i32, i32* %10, align 4
  %288 = load i32, i32* %9, align 4
  %289 = mul nsw i32 %287, %288
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* %12, align 4
  %292 = sdiv i32 %291, 2
  %293 = add nsw i32 %290, %292
  store i32 %293, i32* %11, align 4
  %294 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* %12, align 4
  %297 = call i32 @ipu_ch_param_set_plane_offset(%union.chan_param_mem* %294, i32 %295, i32 %296)
  br label %326

298:                                              ; preds = %5
  %299 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %300 = bitcast %union.chan_param_mem* %299 to %struct.TYPE_5__*
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  store i32 3, i32* %301, align 4
  %302 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %303 = bitcast %union.chan_param_mem* %302 to %struct.TYPE_5__*
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 1
  store i32 2, i32* %304, align 4
  %305 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %306 = bitcast %union.chan_param_mem* %305 to %struct.TYPE_5__*
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 2
  store i32 7, i32* %307, align 4
  %308 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %309 = bitcast %union.chan_param_mem* %308 to %struct.TYPE_5__*
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 3
  store i32 2, i32* %310, align 4
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %9, align 4
  %313 = mul nsw i32 %311, %312
  store i32 %313, i32* %11, align 4
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* %11, align 4
  %316 = sdiv i32 %315, 2
  %317 = add nsw i32 %314, %316
  store i32 %317, i32* %12, align 4
  %318 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %319 = load i32, i32* %11, align 4
  %320 = load i32, i32* %12, align 4
  %321 = call i32 @ipu_ch_param_set_plane_offset(%union.chan_param_mem* %318, i32 %319, i32 %320)
  br label %326

322:                                              ; preds = %5
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ipu_data, i32 0, i32 0), align 4
  %324 = load i32, i32* %7, align 4
  %325 = call i32 @dev_err(i32 %323, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %322, %298, %274, %250, %237, %200, %163, %129, %95, %61, %48, %35
  %327 = load %union.chan_param_mem*, %union.chan_param_mem** %6, align 8
  %328 = bitcast %union.chan_param_mem* %327 to %struct.TYPE_4__*
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 8
  store i32 1, i32* %329, align 4
  ret void
}

declare dso_local i32 @ipu_ch_param_set_plane_offset(%union.chan_param_mem*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
