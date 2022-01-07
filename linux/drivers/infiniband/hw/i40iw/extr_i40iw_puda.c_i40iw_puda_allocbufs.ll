; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_allocbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_allocbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_rsrc = type { i64, i64, %struct.i40iw_puda_buf*, i32, i32, i32 }
%struct.i40iw_puda_buf = type { %struct.i40iw_puda_buf* }

@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_puda_rsrc*, i64)* @i40iw_puda_allocbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_puda_allocbufs(%struct.i40iw_puda_rsrc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_puda_rsrc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40iw_puda_buf*, align 8
  %8 = alloca %struct.i40iw_puda_buf*, align 8
  store %struct.i40iw_puda_rsrc* %0, %struct.i40iw_puda_rsrc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %56, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %15 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.i40iw_puda_buf* @i40iw_puda_alloc_buf(i32 %16, i32 %19)
  store %struct.i40iw_puda_buf* %20, %struct.i40iw_puda_buf** %7, align 8
  %21 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %7, align 8
  %22 = icmp ne %struct.i40iw_puda_buf* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %25 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %13
  %30 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %31 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %7, align 8
  %32 = call i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc* %30, %struct.i40iw_puda_buf* %31)
  %33 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %34 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %38 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %37, i32 0, i32 2
  %39 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %38, align 8
  %40 = icmp ne %struct.i40iw_puda_buf* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %7, align 8
  %43 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %44 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %43, i32 0, i32 2
  store %struct.i40iw_puda_buf* %42, %struct.i40iw_puda_buf** %44, align 8
  br label %55

45:                                               ; preds = %29
  %46 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %47 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %46, i32 0, i32 2
  %48 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %47, align 8
  store %struct.i40iw_puda_buf* %48, %struct.i40iw_puda_buf** %8, align 8
  %49 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %7, align 8
  %50 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %51 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %50, i32 0, i32 2
  store %struct.i40iw_puda_buf* %49, %struct.i40iw_puda_buf** %51, align 8
  %52 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %8, align 8
  %53 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %7, align 8
  %54 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %53, i32 0, i32 0
  store %struct.i40iw_puda_buf* %52, %struct.i40iw_puda_buf** %54, align 8
  br label %55

55:                                               ; preds = %45, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %9

59:                                               ; preds = %9
  %60 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %61 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %4, align 8
  %64 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %23
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.i40iw_puda_buf* @i40iw_puda_alloc_buf(i32, i32) #1

declare dso_local i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc*, %struct.i40iw_puda_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
