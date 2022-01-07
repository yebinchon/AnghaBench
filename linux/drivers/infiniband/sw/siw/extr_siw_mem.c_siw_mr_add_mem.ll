; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_mr_add_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_mr_add_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_mr = type { %struct.TYPE_2__, %struct.siw_mem* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.siw_mem = type { i32, i32, i32, %struct.ib_pd*, i8*, i8*, %struct.siw_device*, i64, i8* }
%struct.siw_device = type { i32 }
%struct.ib_pd = type { i32 }
%struct.xa_limit = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IWARP_ACCESS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_mr_add_mem(%struct.siw_mr* %0, %struct.ib_pd* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.siw_mr*, align 8
  %9 = alloca %struct.ib_pd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.siw_device*, align 8
  %15 = alloca %struct.siw_mem*, align 8
  %16 = alloca %struct.xa_limit, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.siw_mr* %0, %struct.siw_mr** %8, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.siw_device* @to_siw_dev(i32 %21)
  store %struct.siw_device* %22, %struct.siw_device** %14, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.siw_mem* @kzalloc(i32 64, i32 %23)
  store %struct.siw_mem* %24, %struct.siw_mem** %15, align 8
  %25 = call i32 @XA_LIMIT(i32 1, i32 16777215)
  %26 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %16, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %28 = icmp ne %struct.siw_mem* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %91

32:                                               ; preds = %6
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %35 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %37 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.siw_device*, %struct.siw_device** %14, align 8
  %39 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %40 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %39, i32 0, i32 6
  store %struct.siw_device* %38, %struct.siw_device** %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %43 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %46 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %48 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %49 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %48, i32 0, i32 3
  store %struct.ib_pd* %47, %struct.ib_pd** %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @IWARP_ACCESS_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %54 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %56 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %55, i32 0, i32 2
  %57 = call i32 @kref_init(i32* %56)
  %58 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %59 = load %struct.siw_mr*, %struct.siw_mr** %8, align 8
  %60 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %59, i32 0, i32 1
  store %struct.siw_mem* %58, %struct.siw_mem** %60, align 8
  %61 = call i32 @get_random_bytes(i32* %18, i32 4)
  %62 = load i32, i32* %18, align 4
  %63 = and i32 %62, 16777215
  store i32 %63, i32* %18, align 4
  %64 = load %struct.siw_device*, %struct.siw_device** %14, align 8
  %65 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %64, i32 0, i32 0
  %66 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %16, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @xa_alloc_cyclic(i32* %65, i32* %17, %struct.siw_mem* %66, i32 %69, i32* %18, i32 %67)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %32
  %73 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %74 = call i32 @kfree(%struct.siw_mem* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %91

77:                                               ; preds = %32
  %78 = load i32, i32* %17, align 4
  %79 = shl i32 %78, 8
  %80 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %81 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %83 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.siw_mr*, %struct.siw_mr** %8, align 8
  %86 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.siw_mr*, %struct.siw_mr** %8, align 8
  %89 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %84, i32* %90, align 8
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %77, %72, %29
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local %struct.siw_mem* @kzalloc(i32, i32) #1

declare dso_local i32 @XA_LIMIT(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i64 @xa_alloc_cyclic(i32*, i32*, %struct.siw_mem*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.siw_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
