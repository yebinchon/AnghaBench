; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_test_signaled_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_test_signaled_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32, i32, i32 }
%struct.dma_resv_list = type { i32, i32* }
%struct.dma_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_resv_test_signaled_rcu(%struct.dma_resv* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_resv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_resv_list*, align 8
  %10 = alloca %struct.dma_fence*, align 8
  %11 = alloca %struct.dma_fence*, align 8
  store %struct.dma_resv* %0, %struct.dma_resv** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 (...) @rcu_read_lock()
  br label %13

13:                                               ; preds = %91, %84, %66, %50, %2
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %15 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %14, i32 0, i32 0
  %16 = call i32 @read_seqcount_begin(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %13
  %20 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %21 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @rcu_dereference(i32 %22)
  %24 = bitcast i8* %23 to %struct.dma_resv_list*
  store %struct.dma_resv_list* %24, %struct.dma_resv_list** %9, align 8
  %25 = load %struct.dma_resv_list*, %struct.dma_resv_list** %9, align 8
  %26 = icmp ne %struct.dma_resv_list* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.dma_resv_list*, %struct.dma_resv_list** %9, align 8
  %29 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %19
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load %struct.dma_resv_list*, %struct.dma_resv_list** %9, align 8
  %38 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @rcu_dereference(i32 %43)
  %45 = bitcast i8* %44 to %struct.dma_fence*
  store %struct.dma_fence* %45, %struct.dma_fence** %10, align 8
  %46 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %47 = call i32 @dma_resv_test_signaled_single(%struct.dma_fence* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %13

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %60

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %32

60:                                               ; preds = %54, %32
  %61 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %62 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @read_seqcount_retry(i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %13

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %13
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %68
  %72 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %73 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @rcu_dereference(i32 %74)
  %76 = bitcast i8* %75 to %struct.dma_fence*
  store %struct.dma_fence* %76, %struct.dma_fence** %11, align 8
  %77 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %78 = icmp ne %struct.dma_fence* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %71
  %80 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %81 = call i32 @dma_resv_test_signaled_single(%struct.dma_fence* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %13

85:                                               ; preds = %79
  %86 = load %struct.dma_resv*, %struct.dma_resv** %3, align 8
  %87 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %86, i32 0, i32 0
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @read_seqcount_retry(i32* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %13

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %68
  %95 = call i32 (...) @rcu_read_unlock()
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @dma_resv_test_signaled_single(%struct.dma_fence*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
