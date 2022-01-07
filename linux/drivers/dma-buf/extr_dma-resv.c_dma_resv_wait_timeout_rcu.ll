; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_wait_timeout_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_wait_timeout_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32, i32, i32 }
%struct.dma_fence = type { i32 }
%struct.dma_resv_list = type { i32, i32* }

@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dma_resv_wait_timeout_rcu(%struct.dma_resv* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.dma_resv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dma_resv_list*, align 8
  %15 = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %0, %struct.dma_resv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  br label %21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ 1, %20 ]
  store i64 %22, i64* %12, align 8
  br label %23

23:                                               ; preds = %148, %144, %124, %21
  store i32 0, i32* %11, align 4
  %24 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %25 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %24, i32 0, i32 0
  %26 = call i32 @read_seqcount_begin(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = call i32 (...) @rcu_read_lock()
  store i32 -1, i32* %13, align 4
  %28 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %29 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @rcu_dereference(i32 %30)
  %32 = bitcast i8* %31 to %struct.dma_fence*
  store %struct.dma_fence* %32, %struct.dma_fence** %9, align 8
  %33 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %34 = icmp ne %struct.dma_fence* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %23
  %36 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %37 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %38 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %37, i32 0, i32 0
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %35
  %42 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %43 = call i32 @dma_fence_get_rcu(%struct.dma_fence* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %148

46:                                               ; preds = %41
  %47 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %48 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %52 = call i32 @dma_fence_put(%struct.dma_fence* %51)
  store %struct.dma_fence* null, %struct.dma_fence** %9, align 8
  br label %53

53:                                               ; preds = %50, %46
  br label %55

54:                                               ; preds = %35, %23
  store %struct.dma_fence* null, %struct.dma_fence** %9, align 8
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %114

58:                                               ; preds = %55
  %59 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %60 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @rcu_dereference(i32 %61)
  %63 = bitcast i8* %62 to %struct.dma_resv_list*
  store %struct.dma_resv_list* %63, %struct.dma_resv_list** %14, align 8
  %64 = load %struct.dma_resv_list*, %struct.dma_resv_list** %14, align 8
  %65 = icmp ne %struct.dma_resv_list* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.dma_resv_list*, %struct.dma_resv_list** %14, align 8
  %68 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %58
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %110, %70
  %72 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %73 = icmp ne %struct.dma_fence* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ult i32 %75, %76
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  br i1 %79, label %80, label %113

80:                                               ; preds = %78
  %81 = load %struct.dma_resv_list*, %struct.dma_resv_list** %14, align 8
  %82 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @rcu_dereference(i32 %87)
  %89 = bitcast i8* %88 to %struct.dma_fence*
  store %struct.dma_fence* %89, %struct.dma_fence** %15, align 8
  %90 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %91 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %92 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %91, i32 0, i32 0
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %110

96:                                               ; preds = %80
  %97 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %98 = call i32 @dma_fence_get_rcu(%struct.dma_fence* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  br label %148

101:                                              ; preds = %96
  %102 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %103 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %107 = call i32 @dma_fence_put(%struct.dma_fence* %106)
  br label %110

108:                                              ; preds = %101
  %109 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  store %struct.dma_fence* %109, %struct.dma_fence** %9, align 8
  br label %113

110:                                              ; preds = %105, %95
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %71

113:                                              ; preds = %108, %78
  br label %114

114:                                              ; preds = %113, %55
  %115 = call i32 (...) @rcu_read_unlock()
  %116 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %117 = icmp ne %struct.dma_fence* %116, null
  br i1 %117, label %118, label %146

118:                                              ; preds = %114
  %119 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %120 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %119, i32 0, i32 0
  %121 = load i32, i32* %10, align 4
  %122 = call i64 @read_seqcount_retry(i32* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %126 = call i32 @dma_fence_put(%struct.dma_fence* %125)
  br label %23

127:                                              ; preds = %118
  %128 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i64, i64* %12, align 8
  %131 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %128, i32 %129, i64 %130)
  store i64 %131, i64* %12, align 8
  %132 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %133 = call i32 @dma_fence_put(%struct.dma_fence* %132)
  %134 = load i64, i64* %12, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %127
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* %11, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %23

145:                                              ; preds = %139, %136, %127
  br label %146

146:                                              ; preds = %145, %114
  %147 = load i64, i64* %12, align 8
  ret i64 %147

148:                                              ; preds = %100, %45
  %149 = call i32 (...) @rcu_read_unlock()
  br label %23
}

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dma_fence_get_rcu(%struct.dma_fence*) #1

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
