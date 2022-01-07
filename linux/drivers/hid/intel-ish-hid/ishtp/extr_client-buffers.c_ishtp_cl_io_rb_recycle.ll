; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client-buffers.c_ishtp_cl_io_rb_recycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client-buffers.c_ishtp_cl_io_rb_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_rb = type { i32, %struct.ishtp_cl* }
%struct.ishtp_cl = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_cl_io_rb_recycle(%struct.ishtp_cl_rb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl_rb*, align 8
  %4 = alloca %struct.ishtp_cl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ishtp_cl_rb* %0, %struct.ishtp_cl_rb** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %3, align 8
  %8 = icmp ne %struct.ishtp_cl_rb* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %3, align 8
  %11 = getelementptr inbounds %struct.ishtp_cl_rb, %struct.ishtp_cl_rb* %10, i32 0, i32 1
  %12 = load %struct.ishtp_cl*, %struct.ishtp_cl** %11, align 8
  %13 = icmp ne %struct.ishtp_cl* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %9
  %18 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %3, align 8
  %19 = getelementptr inbounds %struct.ishtp_cl_rb, %struct.ishtp_cl_rb* %18, i32 0, i32 1
  %20 = load %struct.ishtp_cl*, %struct.ishtp_cl** %19, align 8
  store %struct.ishtp_cl* %20, %struct.ishtp_cl** %4, align 8
  %21 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %22 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %21, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %3, align 8
  %26 = getelementptr inbounds %struct.ishtp_cl_rb, %struct.ishtp_cl_rb* %25, i32 0, i32 0
  %27 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %28 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* %26, i32* %29)
  %31 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %32 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %31, i32 0, i32 1
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %36 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %17
  %40 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %41 = call i32 @ishtp_cl_read_start(%struct.ishtp_cl* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %17
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ishtp_cl_read_start(%struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
