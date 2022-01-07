; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-api.c_cec_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-api.c_cec_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cec_fh* }
%struct.cec_fh = type { i64, i64, i32, %struct.cec_adapter* }
%struct.cec_adapter = type { i64, i32, i64 }
%struct.poll_table_struct = type { i32 }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@CEC_MAX_MSG_TX_QUEUE_SZ = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @cec_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.cec_fh*, align 8
  %7 = alloca %struct.cec_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.cec_fh*, %struct.cec_fh** %10, align 8
  store %struct.cec_fh* %11, %struct.cec_fh** %6, align 8
  %12 = load %struct.cec_fh*, %struct.cec_fh** %6, align 8
  %13 = getelementptr inbounds %struct.cec_fh, %struct.cec_fh* %12, i32 0, i32 3
  %14 = load %struct.cec_adapter*, %struct.cec_adapter** %13, align 8
  store %struct.cec_adapter* %14, %struct.cec_adapter** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = load %struct.cec_fh*, %struct.cec_fh** %6, align 8
  %17 = getelementptr inbounds %struct.cec_fh, %struct.cec_fh* %16, i32 0, i32 2
  %18 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %19 = call i32 @poll_wait(%struct.file* %15, i32* %17, %struct.poll_table_struct* %18)
  %20 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %21 = call i32 @cec_is_registered(%struct.cec_adapter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EPOLLERR, align 4
  %25 = load i32, i32* @EPOLLHUP, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %32 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CEC_MAX_MSG_TX_QUEUE_SZ, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* @EPOLLOUT, align 4
  %43 = load i32, i32* @EPOLLWRNORM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %35, %27
  %48 = load %struct.cec_fh*, %struct.cec_fh** %6, align 8
  %49 = getelementptr inbounds %struct.cec_fh, %struct.cec_fh* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @EPOLLIN, align 4
  %54 = load i32, i32* @EPOLLRDNORM, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.cec_fh*, %struct.cec_fh** %6, align 8
  %60 = getelementptr inbounds %struct.cec_fh, %struct.cec_fh* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @EPOLLPRI, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @cec_is_registered(%struct.cec_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
