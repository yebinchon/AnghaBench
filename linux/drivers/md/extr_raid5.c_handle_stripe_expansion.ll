; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_stripe_expansion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_stripe_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32 }
%struct.stripe_head = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.async_submit_ctl = type { i32 }

@STRIPE_EXPAND_SOURCE = common dso_local global i32 0, align 4
@STRIPE_EXPANDING = common dso_local global i32 0, align 4
@R5_Expanded = common dso_local global i32 0, align 4
@STRIPE_SIZE = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@STRIPE_EXPAND_READY = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*)* @handle_stripe_expansion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stripe_expansion(%struct.r5conf* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stripe_head*, align 8
  %10 = alloca %struct.async_submit_ctl, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %4, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  %13 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %14 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* @STRIPE_EXPAND_SOURCE, align 4
  %18 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %19 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %18, i32 0, i32 3
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %164, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %24 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %167

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %30 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %163

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %163

39:                                               ; preds = %33
  %40 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @raid5_compute_blocknr(%struct.stripe_head* %40, i32 %41, i32 1)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @raid5_compute_sector(%struct.r5conf* %43, i32 %44, i32 0, i32* %7, i32* null)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf* %46, i32 %47, i32 0, i32 1, i32 1)
  store %struct.stripe_head* %48, %struct.stripe_head** %9, align 8
  %49 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %50 = icmp eq %struct.stripe_head* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %164

52:                                               ; preds = %39
  %53 = load i32, i32* @STRIPE_EXPANDING, align 4
  %54 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %55 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %54, i32 0, i32 3
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load i32, i32* @R5_Expanded, align 4
  %60 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %61 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i64 @test_bit(i32 %59, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58, %52
  %70 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %71 = call i32 @raid5_release_stripe(%struct.stripe_head* %70)
  br label %164

72:                                               ; preds = %58
  %73 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %74 = call i32 @init_async_submit(%struct.async_submit_ctl* %10, i32 0, %struct.dma_async_tx_descriptor* %73, i32* null, i32* null, i32* null)
  %75 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %76 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %84 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @STRIPE_SIZE, align 4
  %92 = call %struct.dma_async_tx_descriptor* @async_memcpy(i32 %82, i32 %90, i32 0, i32 0, i32 %91, %struct.async_submit_ctl* %10)
  store %struct.dma_async_tx_descriptor* %92, %struct.dma_async_tx_descriptor** %6, align 8
  %93 = load i32, i32* @R5_Expanded, align 4
  %94 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %95 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @set_bit(i32 %93, i32* %100)
  %102 = load i32, i32* @R5_UPTODATE, align 4
  %103 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %104 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %103, i32 0, i32 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = call i32 @set_bit(i32 %102, i32* %109)
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %142, %72
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %114 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %111
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %120 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %117
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %126 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load i32, i32* @R5_Expanded, align 4
  %131 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %132 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %131, i32 0, i32 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = call i64 @test_bit(i32 %130, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %129
  br label %145

141:                                              ; preds = %129, %123, %117
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %111

145:                                              ; preds = %140, %111
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %148 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load i32, i32* @STRIPE_EXPAND_READY, align 4
  %153 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %154 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %153, i32 0, i32 3
  %155 = call i32 @set_bit(i32 %152, i32* %154)
  %156 = load i32, i32* @STRIPE_HANDLE, align 4
  %157 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %158 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %157, i32 0, i32 3
  %159 = call i32 @set_bit(i32 %156, i32* %158)
  br label %160

160:                                              ; preds = %151, %145
  %161 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %162 = call i32 @raid5_release_stripe(%struct.stripe_head* %161)
  br label %163

163:                                              ; preds = %160, %33, %27
  br label %164

164:                                              ; preds = %163, %69, %51
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %21

167:                                              ; preds = %21
  %168 = call i32 @async_tx_quiesce(%struct.dma_async_tx_descriptor** %6)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @raid5_compute_blocknr(%struct.stripe_head*, i32, i32) #1

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, i32*) #1

declare dso_local %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf*, i32, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @init_async_submit(%struct.async_submit_ctl*, i32, %struct.dma_async_tx_descriptor*, i32*, i32*, i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_memcpy(i32, i32, i32, i32, i32, %struct.async_submit_ctl*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @async_tx_quiesce(%struct.dma_async_tx_descriptor**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
