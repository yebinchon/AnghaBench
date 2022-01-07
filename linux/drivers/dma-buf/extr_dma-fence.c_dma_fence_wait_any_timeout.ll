; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence.c_dma_fence_wait_any_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence.c_dma_fence_wait_any_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.default_wait_cb = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@dma_fence_default_wait_cb = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dma_fence_wait_any_timeout(%struct.dma_fence** %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_fence**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.default_wait_cb*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence** %0, %struct.dma_fence*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i64, i64* %10, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %18 = icmp ne %struct.dma_fence** %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %10, align 8
  %24 = icmp slt i64 %23, 0
  br label %25

25:                                               ; preds = %22, %19, %5
  %26 = phi i1 [ true, %19 ], [ true, %5 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %6, align 8
  br label %168

33:                                               ; preds = %25
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %42, i64 %44
  %46 = load %struct.dma_fence*, %struct.dma_fence** %45, align 8
  %47 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  store i64 1, i64* %6, align 8
  br label %168

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %14, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %37

60:                                               ; preds = %37
  store i64 0, i64* %6, align 8
  br label %168

61:                                               ; preds = %33
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.default_wait_cb* @kcalloc(i32 %62, i32 8, i32 %63)
  store %struct.default_wait_cb* %64, %struct.default_wait_cb** %12, align 8
  %65 = load %struct.default_wait_cb*, %struct.default_wait_cb** %12, align 8
  %66 = icmp eq %struct.default_wait_cb* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i64, i64* @ENOMEM, align 8
  %69 = sub nsw i64 0, %68
  store i64 %69, i64* %13, align 8
  br label %164

70:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %104, %70
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %71
  %76 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %76, i64 %78
  %80 = load %struct.dma_fence*, %struct.dma_fence** %79, align 8
  store %struct.dma_fence* %80, %struct.dma_fence** %15, align 8
  %81 = load i32, i32* @current, align 4
  %82 = load %struct.default_wait_cb*, %struct.default_wait_cb** %12, align 8
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %82, i64 %84
  %86 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 4
  %87 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %88 = load %struct.default_wait_cb*, %struct.default_wait_cb** %12, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %88, i64 %90
  %92 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %91, i32 0, i32 0
  %93 = load i32, i32* @dma_fence_default_wait_cb, align 4
  %94 = call i64 @dma_fence_add_callback(%struct.dma_fence* %87, i32* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %75
  %97 = load i32*, i32** %11, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %14, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %96
  br label %146

103:                                              ; preds = %75
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %71

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %142, %107
  %109 = load i64, i64* %13, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %116 = call i32 @set_current_state(i32 %115)
  br label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %119 = call i32 @set_current_state(i32 %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = call i64 @dma_fence_test_signaled_any(%struct.dma_fence** %121, i32 %122, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %143

127:                                              ; preds = %120
  %128 = load i64, i64* %13, align 8
  %129 = call i64 @schedule_timeout(i64 %128)
  store i64 %129, i64* %13, align 8
  %130 = load i64, i64* %13, align 8
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* @current, align 4
  %137 = call i64 @signal_pending(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i64, i64* @ERESTARTSYS, align 8
  %141 = sub nsw i64 0, %140
  store i64 %141, i64* %13, align 8
  br label %142

142:                                              ; preds = %139, %135, %132, %127
  br label %108

143:                                              ; preds = %126, %108
  %144 = load i32, i32* @TASK_RUNNING, align 4
  %145 = call i32 @__set_current_state(i32 %144)
  br label %146

146:                                              ; preds = %143, %102
  br label %147

147:                                              ; preds = %151, %146
  %148 = load i32, i32* %14, align 4
  %149 = add i32 %148, -1
  store i32 %149, i32* %14, align 4
  %150 = icmp ugt i32 %148, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %153 = load i32, i32* %14, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %152, i64 %154
  %156 = load %struct.dma_fence*, %struct.dma_fence** %155, align 8
  %157 = load %struct.default_wait_cb*, %struct.default_wait_cb** %12, align 8
  %158 = load i32, i32* %14, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %157, i64 %159
  %161 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %160, i32 0, i32 0
  %162 = call i32 @dma_fence_remove_callback(%struct.dma_fence* %156, i32* %161)
  br label %147

163:                                              ; preds = %147
  br label %164

164:                                              ; preds = %163, %67
  %165 = load %struct.default_wait_cb*, %struct.default_wait_cb** %12, align 8
  %166 = call i32 @kfree(%struct.default_wait_cb* %165)
  %167 = load i64, i64* %13, align 8
  store i64 %167, i64* %6, align 8
  br label %168

168:                                              ; preds = %164, %60, %55, %30
  %169 = load i64, i64* %6, align 8
  ret i64 %169
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local %struct.default_wait_cb* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @dma_fence_test_signaled_any(%struct.dma_fence**, i32, i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @dma_fence_remove_callback(%struct.dma_fence*, i32*) #1

declare dso_local i32 @kfree(%struct.default_wait_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
