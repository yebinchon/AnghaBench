; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_prepare_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_prepare_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32 }
%struct.s5p_hash_reqctx = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@BUFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @s5p_hash_prepare_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_prepare_request(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5p_hash_reqctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %14 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request* %13)
  store %struct.s5p_hash_reqctx* %14, %struct.s5p_hash_reqctx** %6, align 8
  %15 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %16 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %22 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %28 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %32 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %34 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %221

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %86

41:                                               ; preds = %38
  %42 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %43 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BUFLEN, align 4
  %46 = call i64 @IS_ALIGNED(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %86, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @BUFLEN, align 4
  %50 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %51 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BUFLEN, align 4
  %54 = srem i32 %52, %53
  %55 = sub nsw i32 %49, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %48
  %62 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %63 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %62, i32 0, i32 8
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %66 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %64, %68
  %70 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %71 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @scatterwalk_map_and_copy(i64 %69, i32 %72, i32 0, i32 %73, i32 0)
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %77 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %85 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %89

86:                                               ; preds = %41, %38
  %87 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %88 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %87, i32 0, i32 3
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %61
  %90 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %91 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %96 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %95, i32 0, i32 7
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %101 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %104 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memcpy(i64 %99, i64 %102, i32 %105)
  br label %107

107:                                              ; preds = %94, %89
  %108 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %109 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 0, i32* %9, align 4
  br label %149

114:                                              ; preds = %107
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @BUFLEN, align 4
  %117 = call i64 @IS_ALIGNED(i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @BUFLEN, align 4
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %130

123:                                              ; preds = %114
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @BUFLEN, align 4
  %126 = sub nsw i32 %125, 1
  %127 = and i32 %124, %126
  %128 = load i32, i32* %8, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %123, %119
  %131 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %132 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %9, align 4
  %136 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %137 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %140 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %143 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @scatterwalk_map_and_copy(i64 %138, i32 %141, i32 %146, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %130, %113
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @BUFLEN, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %149
  %154 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %155 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %156 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %9, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @s5p_hash_prepare_sgs(%struct.s5p_hash_reqctx* %154, i32 %157, i32 %160, i32 %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %3, align 4
  br label %221

167:                                              ; preds = %153
  br label %210

168:                                              ; preds = %149
  %169 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %170 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %168
  %178 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %179 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %178, i32 0, i32 7
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %184 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @scatterwalk_map_and_copy(i64 %182, i32 %185, i32 0, i32 %186, i32 0)
  br label %188

188:                                              ; preds = %177, %168
  %189 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %190 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @sg_init_table(i32 %191, i32 1)
  %193 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %194 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %197 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %196, i32 0, i32 7
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @sg_set_buf(i32 %195, i64 %200, i32 %201)
  %203 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %204 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %207 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %206, i32 0, i32 6
  store i32 %205, i32* %207, align 8
  %208 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %209 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %208, i32 0, i32 4
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %188, %167
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %213 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %210
  %217 = load i32, i32* %8, align 4
  %218 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %219 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %216, %210
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %165, %37
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @s5p_hash_prepare_sgs(%struct.s5p_hash_reqctx*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @sg_set_buf(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
