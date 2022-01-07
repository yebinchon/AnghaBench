; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i32, %struct.vb2_buffer**, i64, %struct.vb2_threadio_data* }
%struct.vb2_buffer = type { i64, i32, i32 }
%struct.vb2_threadio_data = type { i64, i32, i64 (%struct.vb2_buffer.0*, i32)* }
%struct.vb2_buffer.0 = type opaque

@wait_finish = common dso_local global i32 0, align 4
@wait_prepare = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"file io: vb2_dqbuf result: %d\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vb2_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca %struct.vb2_threadio_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vb2_buffer*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.vb2_queue*
  store %struct.vb2_queue* %11, %struct.vb2_queue** %3, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %13 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %12, i32 0, i32 4
  %14 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %13, align 8
  store %struct.vb2_threadio_data* %14, %struct.vb2_threadio_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %19, %1
  %27 = call i32 (...) @set_freezable()
  br label %28

28:                                               ; preds = %136, %26
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %33 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %32, i32 0, i32 2
  %34 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %34, i64 %37
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %38, align 8
  store %struct.vb2_buffer* %39, %struct.vb2_buffer** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %6, align 4
  br label %72

42:                                               ; preds = %28
  %43 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %44 = load i32, i32* @wait_finish, align 4
  %45 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %46 = call i32 @call_void_qop(%struct.vb2_queue* %43, i32 %44, %struct.vb2_queue* %45)
  %47 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %48 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %53 = call i32 @vb2_core_dqbuf(%struct.vb2_queue* %52, i32* %7, i32* null, i32 0)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %56 = load i32, i32* @wait_prepare, align 4
  %57 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %58 = call i32 @call_void_qop(%struct.vb2_queue* %55, i32 %56, %struct.vb2_queue* %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dprintk(i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 2
  %66 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %66, i64 %68
  %70 = load %struct.vb2_buffer*, %struct.vb2_buffer** %69, align 8
  store %struct.vb2_buffer* %70, %struct.vb2_buffer** %9, align 8
  br label %71

71:                                               ; preds = %63, %54
  br label %72

72:                                               ; preds = %71, %31
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %77 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %72
  br label %137

81:                                               ; preds = %75
  %82 = call i32 (...) @try_to_freeze()
  %83 = load %struct.vb2_buffer*, %struct.vb2_buffer** %9, align 8
  %84 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VB2_BUF_STATE_ERROR, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %90 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %89, i32 0, i32 2
  %91 = load i64 (%struct.vb2_buffer.0*, i32)*, i64 (%struct.vb2_buffer.0*, i32)** %90, align 8
  %92 = load %struct.vb2_buffer*, %struct.vb2_buffer** %9, align 8
  %93 = bitcast %struct.vb2_buffer* %92 to %struct.vb2_buffer.0*
  %94 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %95 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 %91(%struct.vb2_buffer.0* %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %137

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %81
  %102 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %103 = load i32, i32* @wait_finish, align 4
  %104 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %105 = call i32 @call_void_qop(%struct.vb2_queue* %102, i32 %103, %struct.vb2_queue* %104)
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = call i32 (...) @ktime_get_ns()
  %110 = load %struct.vb2_buffer*, %struct.vb2_buffer** %9, align 8
  %111 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %101
  %113 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %114 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %119 = load %struct.vb2_buffer*, %struct.vb2_buffer** %9, align 8
  %120 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @vb2_core_qbuf(%struct.vb2_queue* %118, i32 %121, i32* null, i32* null)
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %117, %112
  %124 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %125 = load i32, i32* @wait_prepare, align 4
  %126 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %127 = call i32 @call_void_qop(%struct.vb2_queue* %124, i32 %125, %struct.vb2_queue* %126)
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %123
  %131 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %132 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %123
  br label %137

136:                                              ; preds = %130
  br label %28

137:                                              ; preds = %135, %99, %80
  br label %138

138:                                              ; preds = %142, %137
  %139 = call i32 (...) @kthread_should_stop()
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %144 = call i32 @set_current_state(i32 %143)
  %145 = call i32 (...) @schedule()
  br label %138

146:                                              ; preds = %138
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @call_void_qop(%struct.vb2_queue*, i32, %struct.vb2_queue*) #1

declare dso_local i32 @vb2_core_dqbuf(%struct.vb2_queue*, i32*, i32*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_core_qbuf(%struct.vb2_queue*, i32, i32*, i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
