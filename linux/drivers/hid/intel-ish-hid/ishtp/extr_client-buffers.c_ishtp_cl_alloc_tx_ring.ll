; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client-buffers.c_ishtp_cl_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client-buffers.c_ishtp_cl_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32, %struct.TYPE_10__*, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.ishtp_cl_tx_ring = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error in allocating Tx pool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_cl_alloc_tx_ring(%struct.ishtp_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ishtp_cl_tx_ring*, align 8
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %3, align 8
  %8 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %9 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %17 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %64, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %21 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %18
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ishtp_cl_tx_ring* @kzalloc(i32 8, i32 %25)
  store %struct.ishtp_cl_tx_ring* %26, %struct.ishtp_cl_tx_ring** %7, align 8
  %27 = load %struct.ishtp_cl_tx_ring*, %struct.ishtp_cl_tx_ring** %7, align 8
  %28 = icmp ne %struct.ishtp_cl_tx_ring* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %68

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @kmalloc(i64 %31, i32 %32)
  %34 = load %struct.ishtp_cl_tx_ring*, %struct.ishtp_cl_tx_ring** %7, align 8
  %35 = getelementptr inbounds %struct.ishtp_cl_tx_ring, %struct.ishtp_cl_tx_ring* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ishtp_cl_tx_ring*, %struct.ishtp_cl_tx_ring** %7, align 8
  %38 = getelementptr inbounds %struct.ishtp_cl_tx_ring, %struct.ishtp_cl_tx_ring* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load %struct.ishtp_cl_tx_ring*, %struct.ishtp_cl_tx_ring** %7, align 8
  %44 = call i32 @kfree(%struct.ishtp_cl_tx_ring* %43)
  br label %68

45:                                               ; preds = %30
  %46 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %47 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %46, i32 0, i32 2
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.ishtp_cl_tx_ring*, %struct.ishtp_cl_tx_ring** %7, align 8
  %51 = getelementptr inbounds %struct.ishtp_cl_tx_ring, %struct.ishtp_cl_tx_ring* %50, i32 0, i32 0
  %52 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %53 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = call i32 @list_add_tail(i32* %51, i32* %54)
  %56 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %57 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %61 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %60, i32 0, i32 2
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %18

67:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %78

68:                                               ; preds = %42, %29
  %69 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %70 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %75 = call i32 @ishtp_cl_free_tx_ring(%struct.ishtp_cl* %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %68, %67
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.ishtp_cl_tx_ring* @kzalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.ishtp_cl_tx_ring*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ishtp_cl_free_tx_ring(%struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
