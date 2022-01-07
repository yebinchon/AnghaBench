; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_open_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___ib_open_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { void (%struct.ib_event*, i8*)*, %struct.TYPE_2__*, i32, i32, i32, i8*, i32, %struct.ib_qp* }
%struct.ib_event = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.ib_event.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.ib_qp*, void (%struct.ib_event.0*, i8*)*, i8*)* @__ib_open_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @__ib_open_qp(%struct.ib_qp* %0, void (%struct.ib_event.0*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca void (%struct.ib_event.0*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store void (%struct.ib_event.0*, i8*)* %1, void (%struct.ib_event.0*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ib_qp* @kzalloc(i32 56, i32 %11)
  store %struct.ib_qp* %12, %struct.ib_qp** %8, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %14 = icmp ne %struct.ib_qp* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ib_qp* @ERR_PTR(i32 %17)
  store %struct.ib_qp* %18, %struct.ib_qp** %4, align 8
  br label %82

19:                                               ; preds = %3
  %20 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 7
  store %struct.ib_qp* %20, %struct.ib_qp** %22, align 8
  %23 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %25 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @ib_open_shared_qp_security(%struct.ib_qp* %23, %struct.TYPE_2__* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %32 = call i32 @kfree(%struct.ib_qp* %31)
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.ib_qp* @ERR_PTR(i32 %33)
  store %struct.ib_qp* %34, %struct.ib_qp** %4, align 8
  br label %82

35:                                               ; preds = %19
  %36 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %37 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %38 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %37, i32 0, i32 7
  store %struct.ib_qp* %36, %struct.ib_qp** %38, align 8
  %39 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %40 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %39, i32 0, i32 6
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %43 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %46 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %45, i32 0, i32 1
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %46, align 8
  %47 = load void (%struct.ib_event.0*, i8*)*, void (%struct.ib_event.0*, i8*)** %6, align 8
  %48 = bitcast void (%struct.ib_event.0*, i8*)* %47 to void (%struct.ib_event*, i8*)*
  %49 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %50 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %49, i32 0, i32 0
  store void (%struct.ib_event*, i8*)* %48, void (%struct.ib_event*, i8*)** %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %53 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %55 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %58 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %60 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %63 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %65 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %71 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %70, i32 0, i32 2
  %72 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %73 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %72, i32 0, i32 2
  %74 = call i32 @list_add(i32* %71, i32* %73)
  %75 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %76 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  store %struct.ib_qp* %81, %struct.ib_qp** %4, align 8
  br label %82

82:                                               ; preds = %35, %30, %15
  %83 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  ret %struct.ib_qp* %83
}

declare dso_local %struct.ib_qp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

declare dso_local i32 @ib_open_shared_qp_security(%struct.ib_qp*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.ib_qp*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
