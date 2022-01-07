; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_register_workfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_queue_register_workfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_qreg = type { i64, %struct.spu_queue* }
%struct.spu_queue = type { i32, i32 }

@CWQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @spu_queue_register_workfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spu_queue_register_workfn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spu_qreg*, align 8
  %4 = alloca %struct.spu_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.spu_qreg*
  store %struct.spu_qreg* %8, %struct.spu_qreg** %3, align 8
  %9 = load %struct.spu_qreg*, %struct.spu_qreg** %3, align 8
  %10 = getelementptr inbounds %struct.spu_qreg, %struct.spu_qreg* %9, i32 0, i32 1
  %11 = load %struct.spu_queue*, %struct.spu_queue** %10, align 8
  store %struct.spu_queue* %11, %struct.spu_queue** %4, align 8
  %12 = load %struct.spu_qreg*, %struct.spu_qreg** %3, align 8
  %13 = getelementptr inbounds %struct.spu_qreg, %struct.spu_qreg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.spu_queue*, %struct.spu_queue** %4, align 8
  %17 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__pa(i32 %18)
  %20 = load i32, i32* @CWQ_NUM_ENTRIES, align 4
  %21 = load %struct.spu_queue*, %struct.spu_queue** %4, align 8
  %22 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %21, i32 0, i32 0
  %23 = call i64 @sun4v_ncs_qconf(i64 %15, i32 %19, i32 %20, i32* %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.spu_queue*, %struct.spu_queue** %4, align 8
  %28 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sun4v_ncs_sethead_marker(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub nsw i64 0, %35
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i64 [ %36, %34 ], [ 0, %37 ]
  ret i64 %39
}

declare dso_local i64 @sun4v_ncs_qconf(i64, i32, i32, i32*) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @sun4v_ncs_sethead_marker(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
