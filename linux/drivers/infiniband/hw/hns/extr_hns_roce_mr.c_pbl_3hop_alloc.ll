; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_pbl_3hop_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_pbl_3hop_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i32, i32, i8**, i8**, i8***, i8**, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, %struct.hns_roce_mr*, i32)* @pbl_3hop_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbl_3hop_alloc(%struct.hns_roce_dev* %0, i32 %1, %struct.hns_roce_mr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hns_roce_mr* %2, %struct.hns_roce_mr** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %23, 8
  %25 = add nsw i32 %22, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %9, align 4
  %28 = sdiv i32 %27, 8
  %29 = sdiv i32 %26, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %30, i32 8, i32 %31)
  %33 = bitcast i8* %32 to i8**
  %34 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %35 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %34, i32 0, i32 2
  store i8** %33, i8*** %35, align 8
  %36 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %37 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %225

43:                                               ; preds = %4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kcalloc(i32 %44, i32 8, i32 %45)
  %47 = bitcast i8* %46 to i8**
  %48 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %49 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %48, i32 0, i32 3
  store i8** %47, i8*** %49, align 8
  %50 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %51 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %216

55:                                               ; preds = %43
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %197, %55
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sdiv i32 %58, 8
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %200

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %65 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %64, i32 0, i32 5
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @dma_alloc_coherent(%struct.device* %62, i32 %63, i8** %69, i32 %70)
  %72 = bitcast i8* %71 to i8**
  %73 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %74 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %73, i32 0, i32 4
  %75 = load i8***, i8**** %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8**, i8*** %75, i64 %77
  store i8** %72, i8*** %78, align 8
  %79 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %80 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %79, i32 0, i32 4
  %81 = load i8***, i8**** %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8**, i8*** %81, i64 %83
  %85 = load i8**, i8*** %84, align 8
  %86 = icmp ne i8** %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %61
  %88 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %89 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @hns_roce_loop_free(%struct.hns_roce_dev* %88, %struct.hns_roce_mr* %89, i32 1, i32 %90, i32 0)
  br label %209

92:                                               ; preds = %61
  %93 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %94 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %93, i32 0, i32 5
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %101 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %100, i32 0, i32 6
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %99, i8** %105, align 8
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %189, %92
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sdiv i32 %108, 8
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %192

111:                                              ; preds = %106
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %9, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sdiv i32 %114, 8
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %111
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %16, align 4
  br label %133

124:                                              ; preds = %111
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %9, align 4
  %127 = sdiv i32 %126, 8
  %128 = mul nsw i32 %125, %127
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %12, align 4
  %131 = sub nsw i32 %129, %130
  %132 = mul nsw i32 %131, 8
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %124, %122
  %134 = load %struct.device*, %struct.device** %10, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %137 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %136, i32 0, i32 2
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i8* @dma_alloc_coherent(%struct.device* %134, i32 %135, i8** %141, i32 %142)
  %144 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %145 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %144, i32 0, i32 3
  %146 = load i8**, i8*** %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  store i8* %143, i8** %149, align 8
  %150 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %151 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %150, i32 0, i32 3
  %152 = load i8**, i8*** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %133
  %159 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %160 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @hns_roce_loop_free(%struct.hns_roce_dev* %159, %struct.hns_roce_mr* %160, i32 2, i32 %161, i32 %162)
  br label %209

164:                                              ; preds = %133
  %165 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %166 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %165, i32 0, i32 2
  %167 = load i8**, i8*** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %173 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %172, i32 0, i32 4
  %174 = load i8***, i8**** %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8**, i8*** %174, i64 %176
  %178 = load i8**, i8*** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  store i8* %171, i8** %181, align 8
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %164
  store i32 1, i32* %11, align 4
  br label %192

188:                                              ; preds = %164
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %18, align 4
  br label %106

192:                                              ; preds = %187, %106
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %200

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  br label %56

200:                                              ; preds = %195, %56
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  %203 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %204 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %18, align 4
  %206 = add nsw i32 %205, 1
  %207 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %208 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  store i32 0, i32* %5, align 4
  br label %225

209:                                              ; preds = %158, %87
  %210 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %211 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %210, i32 0, i32 3
  %212 = load i8**, i8*** %211, align 8
  %213 = call i32 @kfree(i8** %212)
  %214 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %215 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %214, i32 0, i32 3
  store i8** null, i8*** %215, align 8
  br label %216

216:                                              ; preds = %209, %54
  %217 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %218 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %217, i32 0, i32 2
  %219 = load i8**, i8*** %218, align 8
  %220 = call i32 @kfree(i8** %219)
  %221 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %222 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %221, i32 0, i32 2
  store i8** null, i8*** %222, align 8
  %223 = load i32, i32* @ENOMEM, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %216, %200, %40
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i8**, i32) #1

declare dso_local i32 @hns_roce_loop_free(%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
