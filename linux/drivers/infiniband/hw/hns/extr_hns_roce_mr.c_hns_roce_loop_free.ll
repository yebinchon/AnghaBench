; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_loop_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_loop_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i32, i32*, i32*, i32**, i32*, i32** }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"not support: mhop_num=%d, err_loop_index=%d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32)* @hns_roce_loop_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_loop_free(%struct.hns_roce_dev* %0, %struct.hns_roce_mr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_mr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_mr* %1, %struct.hns_roce_mr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %11, align 8
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = add nsw i32 %23, %24
  %26 = shl i32 1, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %28 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %106

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %106

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %102, %37
  %39 = load i32, i32* %15, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %105

41:                                               ; preds = %38
  %42 = load %struct.device*, %struct.device** %11, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %45 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %44, i32 0, i32 3
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %52 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dma_free_coherent(%struct.device* %42, i32 %43, i32* %50, i32 %57)
  store i32 0, i32* %16, align 4
  br label %59

59:                                               ; preds = %98, %41
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @BA_BYTE_LEN, align 4
  %63 = sdiv i32 %61, %62
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %101

65:                                               ; preds = %59
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %101

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* @BA_BYTE_LEN, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %14, align 8
  %83 = load %struct.device*, %struct.device** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %86 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %85, i32 0, i32 5
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %92 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dma_free_coherent(%struct.device* %83, i32 %84, i32* %90, i32 %96)
  br label %98

98:                                               ; preds = %74
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %59

101:                                              ; preds = %73, %59
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %15, align 4
  br label %38

105:                                              ; preds = %38
  br label %215

106:                                              ; preds = %34, %5
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %174

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %174

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %170, %112
  %116 = load i32, i32* %15, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %173

118:                                              ; preds = %115
  %119 = load %struct.device*, %struct.device** %11, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %122 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %121, i32 0, i32 3
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %129 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dma_free_coherent(%struct.device* %119, i32 %120, i32* %127, i32 %134)
  store i32 0, i32* %16, align 4
  br label %136

136:                                              ; preds = %166, %118
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @BA_BYTE_LEN, align 4
  %140 = sdiv i32 %138, %139
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %169

142:                                              ; preds = %136
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %13, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* @BA_BYTE_LEN, align 4
  %147 = sdiv i32 %145, %146
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %14, align 8
  %151 = load %struct.device*, %struct.device** %11, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %154 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %153, i32 0, i32 5
  %155 = load i32**, i32*** %154, align 8
  %156 = load i64, i64* %14, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %160 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dma_free_coherent(%struct.device* %151, i32 %152, i32* %158, i32 %164)
  br label %166

166:                                              ; preds = %142
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %16, align 4
  br label %136

169:                                              ; preds = %136
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %15, align 4
  br label %115

173:                                              ; preds = %115
  br label %214

174:                                              ; preds = %109, %106
  %175 = load i32, i32* %12, align 4
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %177, label %208

177:                                              ; preds = %174
  %178 = load i32, i32* %8, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %208

180:                                              ; preds = %177
  %181 = load i32, i32* %15, align 4
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %183

183:                                              ; preds = %204, %180
  %184 = load i32, i32* %15, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %183
  %187 = load %struct.device*, %struct.device** %11, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %190 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %189, i32 0, i32 3
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %197 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @dma_free_coherent(%struct.device* %187, i32 %188, i32* %195, i32 %202)
  br label %204

204:                                              ; preds = %186
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %15, align 4
  br label %183

207:                                              ; preds = %183
  br label %213

208:                                              ; preds = %177, %174
  %209 = load %struct.device*, %struct.device** %11, align 8
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @dev_warn(%struct.device* %209, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %210, i32 %211)
  br label %229

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %173
  br label %215

215:                                              ; preds = %214, %105
  %216 = load %struct.device*, %struct.device** %11, align 8
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %219 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %222 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @dma_free_coherent(%struct.device* %216, i32 %217, i32* %220, i32 %223)
  %225 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %226 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %225, i32 0, i32 1
  store i32* null, i32** %226, align 8
  %227 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %228 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %227, i32 0, i32 0
  store i32 0, i32* %228, align 8
  br label %229

229:                                              ; preds = %215, %208
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
