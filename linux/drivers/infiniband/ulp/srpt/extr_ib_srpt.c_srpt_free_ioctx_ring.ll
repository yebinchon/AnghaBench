; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_free_ioctx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_free_ioctx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_ioctx = type { i32 }
%struct.srpt_device = type { i32 }
%struct.kmem_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srpt_ioctx**, %struct.srpt_device*, i32, %struct.kmem_cache*, i32)* @srpt_free_ioctx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_free_ioctx_ring(%struct.srpt_ioctx** %0, %struct.srpt_device* %1, i32 %2, %struct.kmem_cache* %3, i32 %4) #0 {
  %6 = alloca %struct.srpt_ioctx**, align 8
  %7 = alloca %struct.srpt_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kmem_cache*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.srpt_ioctx** %0, %struct.srpt_ioctx*** %6, align 8
  store %struct.srpt_device* %1, %struct.srpt_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.kmem_cache* %3, %struct.kmem_cache** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %6, align 8
  %13 = icmp ne %struct.srpt_ioctx** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  br label %36

15:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %22 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.srpt_ioctx*, %struct.srpt_ioctx** %22, i64 %24
  %26 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %25, align 8
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @srpt_free_ioctx(%struct.srpt_device* %21, %struct.srpt_ioctx* %26, %struct.kmem_cache* %27, i32 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %6, align 8
  %35 = call i32 @kvfree(%struct.srpt_ioctx** %34)
  br label %36

36:                                               ; preds = %33, %14
  ret void
}

declare dso_local i32 @srpt_free_ioctx(%struct.srpt_device*, %struct.srpt_ioctx*, %struct.kmem_cache*, i32) #1

declare dso_local i32 @kvfree(%struct.srpt_ioctx**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
