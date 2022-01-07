; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client-buffers.c_ishtp_cl_alloc_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client-buffers.c_ishtp_cl_alloc_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ishtp_cl_rb = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error in allocating Rx buffers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_cl_alloc_rx_ring(%struct.ishtp_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ishtp_cl_rb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %3, align 8
  %9 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %10 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %53, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %20 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %25 = call %struct.ishtp_cl_rb* @ishtp_io_rb_init(%struct.ishtp_cl* %24)
  store %struct.ishtp_cl_rb* %25, %struct.ishtp_cl_rb** %6, align 8
  %26 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %6, align 8
  %27 = icmp ne %struct.ishtp_cl_rb* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %57

31:                                               ; preds = %23
  %32 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %6, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ishtp_io_rb_alloc_buf(%struct.ishtp_cl_rb* %32, i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %57

38:                                               ; preds = %31
  %39 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %40 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %39, i32 0, i32 2
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %6, align 8
  %44 = getelementptr inbounds %struct.ishtp_cl_rb, %struct.ishtp_cl_rb* %43, i32 0, i32 0
  %45 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %46 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %44, i32* %47)
  %49 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %50 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %49, i32 0, i32 2
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %38
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %17

56:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %66

57:                                               ; preds = %37, %28
  %58 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %59 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %64 = call i32 @ishtp_cl_free_rx_ring(%struct.ishtp_cl* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %57, %56
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ishtp_cl_rb* @ishtp_io_rb_init(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_io_rb_alloc_buf(%struct.ishtp_cl_rb*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ishtp_cl_free_rx_ring(%struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
