; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_alloc_fmr_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_alloc_fmr_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_conn = type { %struct.iser_fr_pool, %struct.iser_device* }
%struct.iser_fr_pool = type { i32, i32 }
%struct.iser_device = type { i32 }
%struct.iser_page_vec = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.ib_fmr_pool*, %struct.iser_page_vec* }
%struct.ib_fmr_pool = type { i32 }
%struct.iser_fr_desc = type { i32, %struct.TYPE_2__, i32* }
%struct.ib_fmr_pool_param = type { i32, i32, i32, i32, i32*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SHIFT_4K = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"FMR allocation failed, err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_alloc_fmr_pool(%struct.ib_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iser_device*, align 8
  %9 = alloca %struct.iser_fr_pool*, align 8
  %10 = alloca %struct.iser_page_vec*, align 8
  %11 = alloca %struct.iser_fr_desc*, align 8
  %12 = alloca %struct.ib_fmr_pool*, align 8
  %13 = alloca %struct.ib_fmr_pool_param, align 8
  %14 = alloca i32, align 4
  store %struct.ib_conn* %0, %struct.ib_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %16 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %15, i32 0, i32 1
  %17 = load %struct.iser_device*, %struct.iser_device** %16, align 8
  store %struct.iser_device* %17, %struct.iser_device** %8, align 8
  %18 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %19 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %18, i32 0, i32 0
  store %struct.iser_fr_pool* %19, %struct.iser_fr_pool** %9, align 8
  %20 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %21 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %20, i32 0, i32 0
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %24 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.iser_page_vec* @kzalloc(i32 32, i32 %26)
  %28 = bitcast %struct.iser_page_vec* %27 to %struct.iser_fr_desc*
  store %struct.iser_fr_desc* %28, %struct.iser_fr_desc** %11, align 8
  %29 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %11, align 8
  %30 = icmp ne %struct.iser_fr_desc* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %104

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = add i64 32, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.iser_page_vec* @kmalloc(i32 %39, i32 %40)
  store %struct.iser_page_vec* %41, %struct.iser_page_vec** %10, align 8
  %42 = load %struct.iser_page_vec*, %struct.iser_page_vec** %10, align 8
  %43 = icmp ne %struct.iser_page_vec* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  br label %99

47:                                               ; preds = %34
  %48 = load %struct.iser_page_vec*, %struct.iser_page_vec** %10, align 8
  %49 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %48, i64 1
  %50 = bitcast %struct.iser_page_vec* %49 to i32*
  %51 = load %struct.iser_page_vec*, %struct.iser_page_vec** %10, align 8
  %52 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* @SHIFT_4K, align 4
  %54 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %13, i32 0, i32 6
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %13, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = mul i32 %57, 2
  %59 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %13, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %13, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %13, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %13, i32 0, i32 4
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %65 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %13, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  %71 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.ib_fmr_pool* @ib_create_fmr_pool(i32 %72, %struct.ib_fmr_pool_param* %13)
  store %struct.ib_fmr_pool* %73, %struct.ib_fmr_pool** %12, align 8
  %74 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %12, align 8
  %75 = call i64 @IS_ERR(%struct.ib_fmr_pool* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %47
  %78 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %12, align 8
  %79 = call i32 @PTR_ERR(%struct.ib_fmr_pool* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @iser_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %96

82:                                               ; preds = %47
  %83 = load %struct.iser_page_vec*, %struct.iser_page_vec** %10, align 8
  %84 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %11, align 8
  %85 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store %struct.iser_page_vec* %83, %struct.iser_page_vec** %86, align 8
  %87 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %12, align 8
  %88 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %11, align 8
  %89 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store %struct.ib_fmr_pool* %87, %struct.ib_fmr_pool** %90, align 8
  %91 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %11, align 8
  %92 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %91, i32 0, i32 0
  %93 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %9, align 8
  %94 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %93, i32 0, i32 0
  %95 = call i32 @list_add(i32* %92, i32* %94)
  store i32 0, i32* %4, align 4
  br label %104

96:                                               ; preds = %77
  %97 = load %struct.iser_page_vec*, %struct.iser_page_vec** %10, align 8
  %98 = call i32 @kfree(%struct.iser_page_vec* %97)
  br label %99

99:                                               ; preds = %96, %44
  %100 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %11, align 8
  %101 = bitcast %struct.iser_fr_desc* %100 to %struct.iser_page_vec*
  %102 = call i32 @kfree(%struct.iser_page_vec* %101)
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %99, %82, %31
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.iser_page_vec* @kzalloc(i32, i32) #1

declare dso_local %struct.iser_page_vec* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_fmr_pool* @ib_create_fmr_pool(i32, %struct.ib_fmr_pool_param*) #1

declare dso_local i64 @IS_ERR(%struct.ib_fmr_pool*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_fmr_pool*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.iser_page_vec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
