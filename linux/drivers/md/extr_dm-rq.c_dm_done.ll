; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_7__*, %struct.dm_rq_target_io* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.dm_rq_target_io = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)* }

@BLK_STS_TARGET = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@REQ_OP_WRITE_SAME = common dso_local global i64 0, align 8
@REQ_OP_WRITE_ZEROES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"unimplemented target endio return value: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32, i32)* @dm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_done(%struct.request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_rq_target_io*, align 8
  %9 = alloca i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 130, i32* %7, align 4
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 1
  %12 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %11, align 8
  store %struct.dm_rq_target_io* %12, %struct.dm_rq_target_io** %8, align 8
  store i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)* null, i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)** %9, align 8
  %13 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %14 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %19 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)*, i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)** %23, align 8
  store i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)* %24, i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %17
  %28 = load i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)*, i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)** %9, align 8
  %29 = icmp ne i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)*, i32 (%struct.TYPE_8__*, %struct.request*, i32, i32*)** %9, align 8
  %32 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %33 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load %struct.request*, %struct.request** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %38 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %37, i32 0, i32 1
  %39 = call i32 %31(%struct.TYPE_8__* %34, %struct.request* %35, i32 %36, i32* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %27, %17
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BLK_STS_TARGET, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %41
  %49 = load %struct.request*, %struct.request** %4, align 8
  %50 = call i64 @req_op(%struct.request* %49)
  %51 = load i64, i64* @REQ_OP_DISCARD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.request*, %struct.request** %4, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %63 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @disable_discard(i32 %64)
  br label %104

66:                                               ; preds = %53, %48
  %67 = load %struct.request*, %struct.request** %4, align 8
  %68 = call i64 @req_op(%struct.request* %67)
  %69 = load i64, i64* @REQ_OP_WRITE_SAME, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.request*, %struct.request** %4, align 8
  %73 = getelementptr inbounds %struct.request, %struct.request* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %71
  %80 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %81 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @disable_write_same(i32 %82)
  br label %103

84:                                               ; preds = %71, %66
  %85 = load %struct.request*, %struct.request** %4, align 8
  %86 = call i64 @req_op(%struct.request* %85)
  %87 = load i64, i64* @REQ_OP_WRITE_ZEROES, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.request*, %struct.request** %4, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %89
  %98 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %99 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @disable_write_zeroes(i32 %100)
  br label %102

102:                                              ; preds = %97, %89, %84
  br label %103

103:                                              ; preds = %102, %79
  br label %104

104:                                              ; preds = %103, %61
  br label %105

105:                                              ; preds = %104, %41
  %106 = load i32, i32* %7, align 4
  switch i32 %106, label %118 [
    i32 130, label %107
    i32 129, label %111
    i32 128, label %112
    i32 131, label %115
  ]

107:                                              ; preds = %105
  %108 = load %struct.request*, %struct.request** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @dm_end_request(%struct.request* %108, i32 %109)
  br label %122

111:                                              ; preds = %105
  br label %122

112:                                              ; preds = %105
  %113 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %114 = call i32 @dm_requeue_original_request(%struct.dm_rq_target_io* %113, i32 0)
  br label %122

115:                                              ; preds = %105
  %116 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %117 = call i32 @dm_requeue_original_request(%struct.dm_rq_target_io* %116, i32 1)
  br label %122

118:                                              ; preds = %105
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @DMWARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = call i32 (...) @BUG()
  br label %122

122:                                              ; preds = %111, %118, %115, %112, %107
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local i32 @disable_discard(i32) #1

declare dso_local i32 @disable_write_same(i32) #1

declare dso_local i32 @disable_write_zeroes(i32) #1

declare dso_local i32 @dm_end_request(%struct.request*, i32) #1

declare dso_local i32 @dm_requeue_original_request(%struct.dm_rq_target_io*, i32) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
