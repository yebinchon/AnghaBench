; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_init_comp_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_init_comp_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_admin_queue = type { i32, i64*, i64*, i64, i32, i32 }
%struct.efa_comp_ctx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_com_admin_queue*)* @efa_com_init_comp_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_com_init_comp_ctxt(%struct.efa_com_admin_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efa_com_admin_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.efa_comp_ctx*, align 8
  %7 = alloca i64, align 8
  store %struct.efa_com_admin_queue* %0, %struct.efa_com_admin_queue** %3, align 8
  %8 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %9 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %14 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  store i64 %17, i64* %5, align 8
  %18 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %19 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kzalloc(i32 %20, i64 %21, i32 %22)
  %24 = bitcast i8* %23 to i64*
  %25 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %26 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %25, i32 0, i32 1
  store i64* %24, i64** %26, align 8
  %27 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %28 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(i32 %29, i64 %30, i32 %31)
  %33 = bitcast i8* %32 to i64*
  %34 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %35 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %34, i32 0, i32 2
  store i64* %33, i64** %35, align 8
  %36 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %37 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %42 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %62, label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %47 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %50 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @devm_kfree(i32 %48, i64* %51)
  %53 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %54 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %57 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = call i32 @devm_kfree(i32 %55, i64* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %96

62:                                               ; preds = %40
  store i64 0, i64* %7, align 8
  br label %63

63:                                               ; preds = %87, %62
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %66 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %63
  %71 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call %struct.efa_comp_ctx* @efa_com_get_comp_ctx(%struct.efa_com_admin_queue* %71, i64 %72, i32 0)
  store %struct.efa_comp_ctx* %73, %struct.efa_comp_ctx** %6, align 8
  %74 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %6, align 8
  %75 = icmp ne %struct.efa_comp_ctx* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %6, align 8
  %78 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %77, i32 0, i32 0
  %79 = call i32 @init_completion(i32* %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %83 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %81, i64* %86, align 8
  br label %87

87:                                               ; preds = %80
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %63

90:                                               ; preds = %63
  %91 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %92 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %91, i32 0, i32 4
  %93 = call i32 @spin_lock_init(i32* %92)
  %94 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %3, align 8
  %95 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %90, %45
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i8* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i32 @devm_kfree(i32, i64*) #1

declare dso_local %struct.efa_comp_ctx* @efa_com_get_comp_ctx(%struct.efa_com_admin_queue*, i64, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
