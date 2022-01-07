; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_copy_fences.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_copy_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32, i32, i32 }
%struct.dma_resv_list = type { i32, i32*, i32 }
%struct.dma_fence = type { i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_resv_copy_fences(%struct.dma_resv* %0, %struct.dma_resv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_resv*, align 8
  %5 = alloca %struct.dma_resv*, align 8
  %6 = alloca %struct.dma_resv_list*, align 8
  %7 = alloca %struct.dma_resv_list*, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %0, %struct.dma_resv** %4, align 8
  store %struct.dma_resv* %1, %struct.dma_resv** %5, align 8
  %13 = load %struct.dma_resv*, %struct.dma_resv** %4, align 8
  %14 = call i32 @dma_resv_assert_held(%struct.dma_resv* %13)
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %17 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dma_resv_list* @rcu_dereference(i32 %18)
  store %struct.dma_resv_list* %19, %struct.dma_resv_list** %6, align 8
  br label %20

20:                                               ; preds = %82, %49, %2
  %21 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %22 = icmp ne %struct.dma_resv_list* %21, null
  br i1 %22, label %23, label %116

23:                                               ; preds = %20
  %24 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %25 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = call i32 (...) @rcu_read_unlock()
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.dma_resv_list* @dma_resv_list_alloc(i32 %28)
  store %struct.dma_resv_list* %29, %struct.dma_resv_list** %7, align 8
  %30 = load %struct.dma_resv_list*, %struct.dma_resv_list** %7, align 8
  %31 = icmp ne %struct.dma_resv_list* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %152

35:                                               ; preds = %23
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %38 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.dma_resv_list* @rcu_dereference(i32 %39)
  store %struct.dma_resv_list* %40, %struct.dma_resv_list** %6, align 8
  %41 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %42 = icmp ne %struct.dma_resv_list* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %45 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %35
  %50 = load %struct.dma_resv_list*, %struct.dma_resv_list** %7, align 8
  %51 = call i32 @kfree(%struct.dma_resv_list* %50)
  br label %20

52:                                               ; preds = %43
  %53 = load %struct.dma_resv_list*, %struct.dma_resv_list** %7, align 8
  %54 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %112, %52
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %58 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %115

61:                                               ; preds = %55
  %62 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %63 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.dma_resv_list* @rcu_dereference(i32 %68)
  %70 = bitcast %struct.dma_resv_list* %69 to %struct.dma_fence*
  store %struct.dma_fence* %70, %struct.dma_fence** %12, align 8
  %71 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %72 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %73 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %72, i32 0, i32 2
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %112

77:                                               ; preds = %61
  %78 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %79 = bitcast %struct.dma_fence* %78 to %struct.dma_resv_list*
  %80 = call i32 @dma_fence_get_rcu(%struct.dma_resv_list* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %77
  %83 = load %struct.dma_resv_list*, %struct.dma_resv_list** %7, align 8
  %84 = call i32 @dma_resv_list_free(%struct.dma_resv_list* %83)
  %85 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %86 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.dma_resv_list* @rcu_dereference(i32 %87)
  store %struct.dma_resv_list* %88, %struct.dma_resv_list** %6, align 8
  br label %20

89:                                               ; preds = %77
  %90 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %91 = bitcast %struct.dma_fence* %90 to %struct.dma_resv_list*
  %92 = call i64 @dma_fence_is_signaled(%struct.dma_resv_list* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %96 = bitcast %struct.dma_fence* %95 to %struct.dma_resv_list*
  %97 = call i32 @dma_fence_put(%struct.dma_resv_list* %96)
  br label %112

98:                                               ; preds = %89
  %99 = load %struct.dma_resv_list*, %struct.dma_resv_list** %7, align 8
  %100 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.dma_resv_list*, %struct.dma_resv_list** %7, align 8
  %103 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %110 = bitcast %struct.dma_fence* %109 to %struct.dma_resv_list*
  %111 = call i32 @rcu_assign_pointer(i32 %108, %struct.dma_resv_list* %110)
  br label %112

112:                                              ; preds = %98, %94, %76
  %113 = load i32, i32* %10, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %55

115:                                              ; preds = %55
  br label %117

116:                                              ; preds = %20
  store %struct.dma_resv_list* null, %struct.dma_resv_list** %7, align 8
  br label %117

117:                                              ; preds = %116, %115
  %118 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %119 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %118, i32 0, i32 2
  %120 = call %struct.dma_resv_list* @dma_fence_get_rcu_safe(i32* %119)
  %121 = bitcast %struct.dma_resv_list* %120 to %struct.dma_fence*
  store %struct.dma_fence* %121, %struct.dma_fence** %9, align 8
  %122 = call i32 (...) @rcu_read_unlock()
  %123 = load %struct.dma_resv*, %struct.dma_resv** %4, align 8
  %124 = call %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv* %123)
  store %struct.dma_resv_list* %124, %struct.dma_resv_list** %6, align 8
  %125 = load %struct.dma_resv*, %struct.dma_resv** %4, align 8
  %126 = call %struct.dma_resv_list* @dma_resv_get_excl(%struct.dma_resv* %125)
  %127 = bitcast %struct.dma_resv_list* %126 to %struct.dma_fence*
  store %struct.dma_fence* %127, %struct.dma_fence** %8, align 8
  %128 = call i32 (...) @preempt_disable()
  %129 = load %struct.dma_resv*, %struct.dma_resv** %4, align 8
  %130 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %129, i32 0, i32 0
  %131 = call i32 @write_seqcount_begin(i32* %130)
  %132 = load %struct.dma_resv*, %struct.dma_resv** %4, align 8
  %133 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %136 = bitcast %struct.dma_fence* %135 to %struct.dma_resv_list*
  %137 = call i32 @RCU_INIT_POINTER(i32 %134, %struct.dma_resv_list* %136)
  %138 = load %struct.dma_resv*, %struct.dma_resv** %4, align 8
  %139 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.dma_resv_list*, %struct.dma_resv_list** %7, align 8
  %142 = call i32 @RCU_INIT_POINTER(i32 %140, %struct.dma_resv_list* %141)
  %143 = load %struct.dma_resv*, %struct.dma_resv** %4, align 8
  %144 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %143, i32 0, i32 0
  %145 = call i32 @write_seqcount_end(i32* %144)
  %146 = call i32 (...) @preempt_enable()
  %147 = load %struct.dma_resv_list*, %struct.dma_resv_list** %6, align 8
  %148 = call i32 @dma_resv_list_free(%struct.dma_resv_list* %147)
  %149 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %150 = bitcast %struct.dma_fence* %149 to %struct.dma_resv_list*
  %151 = call i32 @dma_fence_put(%struct.dma_resv_list* %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %117, %32
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @dma_resv_assert_held(%struct.dma_resv*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dma_resv_list* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.dma_resv_list* @dma_resv_list_alloc(i32) #1

declare dso_local i32 @kfree(%struct.dma_resv_list*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dma_fence_get_rcu(%struct.dma_resv_list*) #1

declare dso_local i32 @dma_resv_list_free(%struct.dma_resv_list*) #1

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_resv_list*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_resv_list*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.dma_resv_list*) #1

declare dso_local %struct.dma_resv_list* @dma_fence_get_rcu_safe(i32*) #1

declare dso_local %struct.dma_resv_list* @dma_resv_get_list(%struct.dma_resv*) #1

declare dso_local %struct.dma_resv_list* @dma_resv_get_excl(%struct.dma_resv*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.dma_resv_list*) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
