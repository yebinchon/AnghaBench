; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_tear_down_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_tear_down_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi41_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.cppi41_dd* }
%struct.cppi41_dd = type { i32, i32, %struct.TYPE_2__, i64, %struct.cppi41_desc* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cppi41_desc = type { i32 }
%struct.dmaengine_result = type { i32 }

@GCR_CHAN_ENABLE = common dso_local global i32 0, align 4
@GCR_STARV_RETRY = common dso_local global i32 0, align 4
@GCR_DESC_TYPE_HOST = common dso_local global i32 0, align 4
@GCR_TEARDOWN = common dso_local global i32 0, align 4
@DESC_TYPE = common dso_local global i32 0, align 4
@DESC_TYPE_TEARD = common dso_local global i32 0, align 4
@TD_DESC_IS_RX = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DMA_TRANS_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cppi41_channel*)* @cppi41_tear_down_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppi41_tear_down_chan(%struct.cppi41_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cppi41_channel*, align 8
  %4 = alloca %struct.dmaengine_result, align 4
  %5 = alloca %struct.cppi41_dd*, align 8
  %6 = alloca %struct.cppi41_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cppi41_channel* %0, %struct.cppi41_channel** %3, align 8
  %11 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %12 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %11, i32 0, i32 11
  %13 = load %struct.cppi41_dd*, %struct.cppi41_dd** %12, align 8
  store %struct.cppi41_dd* %13, %struct.cppi41_dd** %5, align 8
  %14 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %15 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %14, i32 0, i32 4
  %16 = load %struct.cppi41_desc*, %struct.cppi41_desc** %15, align 8
  store %struct.cppi41_desc* %16, %struct.cppi41_desc** %6, align 8
  %17 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %18 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cppi41_desc*, %struct.cppi41_desc** %6, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.cppi41_desc, %struct.cppi41_desc* %20, i64 %21
  store %struct.cppi41_desc* %22, %struct.cppi41_desc** %6, align 8
  %23 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %24 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %27 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %36 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %88, label %39

39:                                               ; preds = %1
  %40 = load %struct.cppi41_desc*, %struct.cppi41_desc** %6, align 8
  %41 = call i32 @cppi41_compute_td_desc(%struct.cppi41_desc* %40)
  %42 = call i32 (...) @__iowmb()
  store i32 -5, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %48 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %51 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @QMGR_QUEUE_D(i32 %53)
  %55 = add nsw i64 %49, %54
  %56 = call i32 @cppi_writel(i32 %46, i64 %55)
  %57 = load i32, i32* @GCR_CHAN_ENABLE, align 4
  store i32 %57, i32* %7, align 4
  %58 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %59 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %58, i32 0, i32 10
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %39
  %63 = load i32, i32* @GCR_STARV_RETRY, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @GCR_DESC_TYPE_HOST, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %70 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %62, %39
  %76 = load i32, i32* @GCR_TEARDOWN, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %81 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @cppi_writel(i32 %79, i64 %82)
  %84 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %85 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %87 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %86, i32 0, i32 1
  store i32 500, i32* %87, align 4
  br label %88

88:                                               ; preds = %75, %1
  %89 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %90 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %95 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %175, label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %100 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %101 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @cppi41_pop_desc(%struct.cppi41_dd* %99, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %98
  %108 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %109 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %108, i32 0, i32 10
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %114 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %115 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @cppi41_pop_desc(%struct.cppi41_dd* %113, i32 %116)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %112, %107, %98
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %121 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %126 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %125, i32 0, i32 3
  store i32 1, i32* %126, align 4
  br label %174

127:                                              ; preds = %118
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %167

131:                                              ; preds = %127
  %132 = call i32 (...) @__iormb()
  %133 = load %struct.cppi41_desc*, %struct.cppi41_desc** %6, align 8
  %134 = getelementptr inbounds %struct.cppi41_desc, %struct.cppi41_desc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @DESC_TYPE, align 4
  %138 = ashr i32 %136, %137
  %139 = load i32, i32* @DESC_TYPE_TEARD, align 4
  %140 = icmp ne i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @WARN_ON(i32 %141)
  %143 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %144 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %143, i32 0, i32 10
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %131
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @TD_DESC_IS_RX, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  br label %153

153:                                              ; preds = %147, %131
  %154 = phi i1 [ false, %131 ], [ %152, %147 ]
  %155 = zext i1 %154 to i32
  %156 = call i32 @WARN_ON(i32 %155)
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %157, 31
  %159 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %160 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %158, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @WARN_ON(i32 %163)
  %165 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %166 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %165, i32 0, i32 2
  store i32 1, i32* %166, align 8
  br label %173

167:                                              ; preds = %127
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 @WARN_ON_ONCE(i32 1)
  br label %172

172:                                              ; preds = %170, %167
  br label %173

173:                                              ; preds = %172, %153
  br label %174

174:                                              ; preds = %173, %124
  br label %175

175:                                              ; preds = %174, %93
  %176 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %177 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 4
  %180 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %181 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %193, label %184

184:                                              ; preds = %175
  %185 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %186 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = call i32 @udelay(i32 1)
  %191 = load i32, i32* @EAGAIN, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %2, align 4
  br label %244

193:                                              ; preds = %184, %175
  %194 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %195 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = call i32 @WARN_ON(i32 %199)
  %201 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %202 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %225, label %205

205:                                              ; preds = %193
  %206 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %207 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %208 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @cppi41_pop_desc(%struct.cppi41_dd* %206, i32 %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %205
  %214 = load %struct.cppi41_dd*, %struct.cppi41_dd** %5, align 8
  %215 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %216 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @cppi41_pop_desc(%struct.cppi41_dd* %214, i32 %217)
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %213, %205
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = call i32 @WARN_ON(i32 %223)
  br label %225

225:                                              ; preds = %219, %193
  %226 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %227 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %226, i32 0, i32 0
  store i32 0, i32* %227, align 8
  %228 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %229 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %228, i32 0, i32 2
  store i32 0, i32* %229, align 8
  %230 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %231 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %230, i32 0, i32 3
  store i32 0, i32* %231, align 4
  %232 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %233 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %232, i32 0, i32 9
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @cppi_writel(i32 0, i64 %234)
  %236 = load i32, i32* @DMA_TRANS_ABORTED, align 4
  %237 = getelementptr inbounds %struct.dmaengine_result, %struct.dmaengine_result* %4, i32 0, i32 0
  store i32 %236, i32* %237, align 4
  %238 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %239 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %238, i32 0, i32 8
  %240 = call i32 @dma_cookie_complete(i32* %239)
  %241 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %242 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %241, i32 0, i32 8
  %243 = call i32 @dmaengine_desc_get_callback_invoke(i32* %242, %struct.dmaengine_result* %4)
  store i32 0, i32* %2, align 4
  br label %244

244:                                              ; preds = %225, %189
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @cppi41_compute_td_desc(%struct.cppi41_desc*) #1

declare dso_local i32 @__iowmb(...) #1

declare dso_local i32 @cppi_writel(i32, i64) #1

declare dso_local i64 @QMGR_QUEUE_D(i32) #1

declare dso_local i32 @cppi41_pop_desc(%struct.cppi41_dd*, i32) #1

declare dso_local i32 @__iormb(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dma_cookie_complete(i32*) #1

declare dso_local i32 @dmaengine_desc_get_callback_invoke(i32*, %struct.dmaengine_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
