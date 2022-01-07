; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_alloc_fastreg_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_alloc_fastreg_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_conn = type { i32, %struct.iser_fr_pool, %struct.iser_device* }
%struct.iser_fr_pool = type { i64, i32, i32, i32 }
%struct.iser_device = type { i32 }
%struct.iser_fr_desc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_alloc_fastreg_pool(%struct.ib_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iser_device*, align 8
  %9 = alloca %struct.iser_fr_pool*, align 8
  %10 = alloca %struct.iser_fr_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_conn* %0, %struct.ib_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %14 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %13, i32 0, i32 2
  %15 = load %struct.iser_device*, %struct.iser_device** %14, align 8
  store %struct.iser_device* %15, %struct.iser_device** %8, align 8
  %16 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %17 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %16, i32 0, i32 1
  store %struct.iser_fr_pool* %17, %struct.iser_fr_pool** %9, align 8
  %18 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %19 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %22 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %25 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %28 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %64, %3
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  %35 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  %36 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %39 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.iser_fr_desc* @iser_create_fastreg_desc(%struct.iser_device* %34, i32 %37, i32 %40, i32 %41)
  store %struct.iser_fr_desc* %42, %struct.iser_fr_desc** %10, align 8
  %43 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %10, align 8
  %44 = call i64 @IS_ERR(%struct.iser_fr_desc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %10, align 8
  %48 = call i32 @PTR_ERR(%struct.iser_fr_desc* %47)
  store i32 %48, i32* %12, align 4
  br label %68

49:                                               ; preds = %33
  %50 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %10, align 8
  %51 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %50, i32 0, i32 1
  %52 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %53 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %52, i32 0, i32 2
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %10, align 8
  %56 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %55, i32 0, i32 0
  %57 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %58 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %61 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %29

67:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %72

68:                                               ; preds = %46
  %69 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %70 = call i32 @iser_free_fastreg_pool(%struct.ib_conn* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %67
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.iser_fr_desc* @iser_create_fastreg_desc(%struct.iser_device*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.iser_fr_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.iser_fr_desc*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iser_free_fastreg_pool(%struct.ib_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
