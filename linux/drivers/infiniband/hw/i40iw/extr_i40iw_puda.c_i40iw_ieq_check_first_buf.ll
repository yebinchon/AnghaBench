; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_check_first_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_check_first_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_buf = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_puda_buf*, i64)* @i40iw_ieq_check_first_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_ieq_check_first_buf(%struct.i40iw_puda_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.i40iw_puda_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.i40iw_puda_buf* %0, %struct.i40iw_puda_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %7 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %14 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %19 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %39

23:                                               ; preds = %11
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %26 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %33 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %38 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %22, %23, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
