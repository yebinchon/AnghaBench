; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_alloc_ioctx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_alloc_ioctx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_ioctx = type { i32, i32 }
%struct.srpt_device = type { i32 }
%struct.kmem_cache = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.srpt_ioctx** (%struct.srpt_device*, i32, i32, %struct.kmem_cache*, i32, i32)* @srpt_alloc_ioctx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.srpt_ioctx** @srpt_alloc_ioctx_ring(%struct.srpt_device* %0, i32 %1, i32 %2, %struct.kmem_cache* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.srpt_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmem_cache*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.srpt_ioctx**, align 8
  %14 = alloca i32, align 4
  store %struct.srpt_device* %0, %struct.srpt_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.kmem_cache* %3, %struct.kmem_cache** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br label %22

22:                                               ; preds = %18, %6
  %23 = phi i1 [ false, %6 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.srpt_ioctx** @kvmalloc_array(i32 %26, i32 8, i32 %27)
  store %struct.srpt_ioctx** %28, %struct.srpt_ioctx*** %13, align 8
  %29 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %13, align 8
  %30 = icmp ne %struct.srpt_ioctx** %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %91

32:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %69, %32
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %33
  %38 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.kmem_cache*, %struct.kmem_cache** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call %struct.srpt_ioctx* @srpt_alloc_ioctx(%struct.srpt_device* %38, i32 %39, %struct.kmem_cache* %40, i32 %41)
  %43 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.srpt_ioctx*, %struct.srpt_ioctx** %43, i64 %45
  store %struct.srpt_ioctx* %42, %struct.srpt_ioctx** %46, align 8
  %47 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.srpt_ioctx*, %struct.srpt_ioctx** %47, i64 %49
  %51 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %50, align 8
  %52 = icmp ne %struct.srpt_ioctx* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  br label %73

54:                                               ; preds = %37
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.srpt_ioctx*, %struct.srpt_ioctx** %56, i64 %58
  %60 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %59, align 8
  %61 = getelementptr inbounds %struct.srpt_ioctx, %struct.srpt_ioctx* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %13, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.srpt_ioctx*, %struct.srpt_ioctx** %63, i64 %65
  %67 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %66, align 8
  %68 = getelementptr inbounds %struct.srpt_ioctx, %struct.srpt_ioctx* %67, i32 0, i32 1
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %33

72:                                               ; preds = %33
  br label %91

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %78, %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %14, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %80 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.srpt_ioctx*, %struct.srpt_ioctx** %80, i64 %82
  %84 = load %struct.srpt_ioctx*, %struct.srpt_ioctx** %83, align 8
  %85 = load %struct.kmem_cache*, %struct.kmem_cache** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @srpt_free_ioctx(%struct.srpt_device* %79, %struct.srpt_ioctx* %84, %struct.kmem_cache* %85, i32 %86)
  br label %74

88:                                               ; preds = %74
  %89 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %13, align 8
  %90 = call i32 @kvfree(%struct.srpt_ioctx** %89)
  store %struct.srpt_ioctx** null, %struct.srpt_ioctx*** %13, align 8
  br label %91

91:                                               ; preds = %88, %72, %31
  %92 = load %struct.srpt_ioctx**, %struct.srpt_ioctx*** %13, align 8
  ret %struct.srpt_ioctx** %92
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.srpt_ioctx** @kvmalloc_array(i32, i32, i32) #1

declare dso_local %struct.srpt_ioctx* @srpt_alloc_ioctx(%struct.srpt_device*, i32, %struct.kmem_cache*, i32) #1

declare dso_local i32 @srpt_free_ioctx(%struct.srpt_device*, %struct.srpt_ioctx*, %struct.kmem_cache*, i32) #1

declare dso_local i32 @kvfree(%struct.srpt_ioctx**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
