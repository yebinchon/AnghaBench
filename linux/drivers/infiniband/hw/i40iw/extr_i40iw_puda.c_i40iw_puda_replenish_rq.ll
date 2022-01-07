; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_replenish_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_replenish_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_rsrc = type { i64, i32, i32 }
%struct.i40iw_puda_buf = type { i32 }

@I40IW_ERR_list_empty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_puda_rsrc*, i32)* @i40iw_puda_replenish_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_puda_replenish_rq(%struct.i40iw_puda_rsrc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_puda_rsrc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40iw_puda_buf*, align 8
  store %struct.i40iw_puda_rsrc* %0, %struct.i40iw_puda_rsrc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %10 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  store %struct.i40iw_puda_buf* null, %struct.i40iw_puda_buf** %8, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %18 = call %struct.i40iw_puda_buf* @i40iw_puda_get_bufpool(%struct.i40iw_puda_rsrc* %17)
  store %struct.i40iw_puda_buf* %18, %struct.i40iw_puda_buf** %8, align 8
  %19 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %8, align 8
  %20 = icmp ne %struct.i40iw_puda_buf* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @I40IW_ERR_list_empty, align 4
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %16
  %24 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %25 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %26 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @i40iw_puda_post_recvbuf(%struct.i40iw_puda_rsrc* %24, i32 %27, %struct.i40iw_puda_buf* %28, i32 %29)
  %31 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %32 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %36 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %34, %37
  %39 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %40 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %42 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %23
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %12

48:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.i40iw_puda_buf* @i40iw_puda_get_bufpool(%struct.i40iw_puda_rsrc*) #1

declare dso_local i32 @i40iw_puda_post_recvbuf(%struct.i40iw_puda_rsrc*, i32, %struct.i40iw_puda_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
