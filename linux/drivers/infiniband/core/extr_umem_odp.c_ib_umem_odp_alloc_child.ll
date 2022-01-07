; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem_odp.c_ib_umem_odp_alloc_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem_odp.c_ib_umem_odp_alloc_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem_odp = type { i32, %struct.ib_umem, i32 }
%struct.ib_umem = type { i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_umem_odp* @ib_umem_odp_alloc_child(%struct.ib_umem_odp* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ib_umem_odp*, align 8
  %5 = alloca %struct.ib_umem_odp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ib_umem_odp*, align 8
  %9 = alloca %struct.ib_umem*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_umem_odp* %0, %struct.ib_umem_odp** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %5, align 8
  %12 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ib_umem_odp* @ERR_PTR(i32 %21)
  store %struct.ib_umem_odp* %22, %struct.ib_umem_odp** %4, align 8
  br label %73

23:                                               ; preds = %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ib_umem_odp* @kzalloc(i32 48, i32 %24)
  store %struct.ib_umem_odp* %25, %struct.ib_umem_odp** %8, align 8
  %26 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %8, align 8
  %27 = icmp ne %struct.ib_umem_odp* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.ib_umem_odp* @ERR_PTR(i32 %30)
  store %struct.ib_umem_odp* %31, %struct.ib_umem_odp** %4, align 8
  br label %73

32:                                               ; preds = %23
  %33 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %8, align 8
  %34 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %33, i32 0, i32 1
  store %struct.ib_umem* %34, %struct.ib_umem** %9, align 8
  %35 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %5, align 8
  %36 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ib_umem*, %struct.ib_umem** %9, align 8
  %40 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.ib_umem*, %struct.ib_umem** %9, align 8
  %43 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.ib_umem*, %struct.ib_umem** %9, align 8
  %46 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %5, align 8
  %48 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ib_umem*, %struct.ib_umem** %9, align 8
  %52 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %5, align 8
  %54 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ib_umem*, %struct.ib_umem** %9, align 8
  %58 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %8, align 8
  %61 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %8, align 8
  %63 = call i32 @ib_init_umem_odp(%struct.ib_umem_odp* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %32
  %67 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %8, align 8
  %68 = call i32 @kfree(%struct.ib_umem_odp* %67)
  %69 = load i32, i32* %10, align 4
  %70 = call %struct.ib_umem_odp* @ERR_PTR(i32 %69)
  store %struct.ib_umem_odp* %70, %struct.ib_umem_odp** %4, align 8
  br label %73

71:                                               ; preds = %32
  %72 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %8, align 8
  store %struct.ib_umem_odp* %72, %struct.ib_umem_odp** %4, align 8
  br label %73

73:                                               ; preds = %71, %66, %28, %19
  %74 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %4, align 8
  ret %struct.ib_umem_odp* %74
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ib_umem_odp* @ERR_PTR(i32) #1

declare dso_local %struct.ib_umem_odp* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_init_umem_odp(%struct.ib_umem_odp*) #1

declare dso_local i32 @kfree(%struct.ib_umem_odp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
