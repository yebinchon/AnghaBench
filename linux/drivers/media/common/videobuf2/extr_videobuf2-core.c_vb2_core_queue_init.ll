; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VB2_MEMORY_UNKNOWN = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_core_queue_init(%struct.vb2_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_queue*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %5 = icmp ne %struct.vb2_queue* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %68, label %10

10:                                               ; preds = %1
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 12
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %68, label %19

19:                                               ; preds = %10
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 15
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %19
  %29 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %30 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %28
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %39 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %37
  %47 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %48 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %47, i32 0, i32 12
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %46
  %58 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %59 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %58, i32 0, i32 12
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57, %46, %37, %28, %19, %10, %1
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %139

71:                                               ; preds = %57
  %72 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %73 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %78 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi i1 [ false, %71 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i64 @WARN_ON(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %139

90:                                               ; preds = %82
  %91 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %92 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %91, i32 0, i32 9
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %95 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %94, i32 0, i32 8
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %98 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %97, i32 0, i32 7
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %101 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %100, i32 0, i32 6
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %104 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %103, i32 0, i32 5
  %105 = call i32 @init_waitqueue_head(i32* %104)
  %106 = load i32, i32* @VB2_MEMORY_UNKNOWN, align 4
  %107 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %108 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %110 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %90
  %114 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %115 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %114, i32 0, i32 0
  store i32 4, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %90
  %117 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %118 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %123 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %124 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %138

125:                                              ; preds = %116
  %126 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %127 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %137 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %121
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %87, %68
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
