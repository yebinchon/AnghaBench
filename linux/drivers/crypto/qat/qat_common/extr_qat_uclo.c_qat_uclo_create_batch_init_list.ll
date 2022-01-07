; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_create_batch_init_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_create_batch_init_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }
%struct.icp_qat_uof_initmem = type { i32, i64 }
%struct.icp_qat_uof_batch_init = type { i32, i32, %struct.icp_qat_uof_batch_init*, i32*, i64 }
%struct.icp_qat_uof_memvar_attr = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*, i32, %struct.icp_qat_uof_batch_init**)* @qat_uclo_create_batch_init_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_create_batch_init_list(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_uof_initmem* %1, i32 %2, %struct.icp_qat_uof_batch_init** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %7 = alloca %struct.icp_qat_uof_initmem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.icp_qat_uof_batch_init**, align 8
  %10 = alloca %struct.icp_qat_uof_batch_init*, align 8
  %11 = alloca %struct.icp_qat_uof_batch_init*, align 8
  %12 = alloca %struct.icp_qat_uof_batch_init*, align 8
  %13 = alloca %struct.icp_qat_uof_batch_init*, align 8
  %14 = alloca %struct.icp_qat_uof_memvar_attr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %6, align 8
  store %struct.icp_qat_uof_initmem* %1, %struct.icp_qat_uof_initmem** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.icp_qat_uof_batch_init** %3, %struct.icp_qat_uof_batch_init*** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %18 = ptrtoint %struct.icp_qat_uof_initmem* %17 to i64
  %19 = add i64 %18, 16
  %20 = inttoptr i64 %19 to %struct.icp_qat_uof_memvar_attr*
  store %struct.icp_qat_uof_memvar_attr* %20, %struct.icp_qat_uof_memvar_attr** %14, align 8
  %21 = load %struct.icp_qat_uof_batch_init**, %struct.icp_qat_uof_batch_init*** %9, align 8
  %22 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %21, align 8
  store %struct.icp_qat_uof_batch_init* %22, %struct.icp_qat_uof_batch_init** %10, align 8
  %23 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %10, align 8
  %24 = icmp ne %struct.icp_qat_uof_batch_init* %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.icp_qat_uof_batch_init* @kzalloc(i32 32, i32 %26)
  store %struct.icp_qat_uof_batch_init* %27, %struct.icp_qat_uof_batch_init** %10, align 8
  %28 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %10, align 8
  %29 = icmp ne %struct.icp_qat_uof_batch_init* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %122

33:                                               ; preds = %25
  %34 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %10, align 8
  %35 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %10, align 8
  %37 = load %struct.icp_qat_uof_batch_init**, %struct.icp_qat_uof_batch_init*** %9, align 8
  store %struct.icp_qat_uof_batch_init* %36, %struct.icp_qat_uof_batch_init** %37, align 8
  store i32 1, i32* %16, align 4
  br label %38

38:                                               ; preds = %33, %4
  %39 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %10, align 8
  store %struct.icp_qat_uof_batch_init* %39, %struct.icp_qat_uof_batch_init** %13, align 8
  br label %40

40:                                               ; preds = %45, %38
  %41 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %13, align 8
  %42 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %41, i32 0, i32 2
  %43 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %42, align 8
  %44 = icmp ne %struct.icp_qat_uof_batch_init* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %13, align 8
  %47 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %46, i32 0, i32 2
  %48 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %47, align 8
  store %struct.icp_qat_uof_batch_init* %48, %struct.icp_qat_uof_batch_init** %13, align 8
  br label %40

49:                                               ; preds = %40
  %50 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %13, align 8
  store %struct.icp_qat_uof_batch_init* %50, %struct.icp_qat_uof_batch_init** %11, align 8
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %97, %49
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %54 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %51
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.icp_qat_uof_batch_init* @kzalloc(i32 32, i32 %58)
  store %struct.icp_qat_uof_batch_init* %59, %struct.icp_qat_uof_batch_init** %12, align 8
  %60 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %12, align 8
  %61 = icmp ne %struct.icp_qat_uof_batch_init* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %101

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %12, align 8
  %66 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %7, align 8
  %68 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.icp_qat_uof_memvar_attr*, %struct.icp_qat_uof_memvar_attr** %14, align 8
  %71 = getelementptr inbounds %struct.icp_qat_uof_memvar_attr, %struct.icp_qat_uof_memvar_attr* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %12, align 8
  %75 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load %struct.icp_qat_uof_memvar_attr*, %struct.icp_qat_uof_memvar_attr** %14, align 8
  %77 = getelementptr inbounds %struct.icp_qat_uof_memvar_attr, %struct.icp_qat_uof_memvar_attr* %76, i32 0, i32 0
  %78 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %12, align 8
  %79 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %78, i32 0, i32 3
  store i32* %77, i32** %79, align 8
  %80 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %12, align 8
  %81 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %12, align 8
  %83 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %82, i32 0, i32 2
  store %struct.icp_qat_uof_batch_init* null, %struct.icp_qat_uof_batch_init** %83, align 8
  %84 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %12, align 8
  %85 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %11, align 8
  %86 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %85, i32 0, i32 2
  store %struct.icp_qat_uof_batch_init* %84, %struct.icp_qat_uof_batch_init** %86, align 8
  %87 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %12, align 8
  store %struct.icp_qat_uof_batch_init* %87, %struct.icp_qat_uof_batch_init** %11, align 8
  %88 = call i64 (...) @qat_hal_get_ins_num()
  %89 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %10, align 8
  %90 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  %95 = load %struct.icp_qat_uof_memvar_attr*, %struct.icp_qat_uof_memvar_attr** %14, align 8
  %96 = getelementptr inbounds %struct.icp_qat_uof_memvar_attr, %struct.icp_qat_uof_memvar_attr* %95, i32 1
  store %struct.icp_qat_uof_memvar_attr* %96, %struct.icp_qat_uof_memvar_attr** %14, align 8
  br label %97

97:                                               ; preds = %63
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %51

100:                                              ; preds = %51
  store i32 0, i32* %5, align 4
  br label %122

101:                                              ; preds = %62
  br label %102

102:                                              ; preds = %105, %101
  %103 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %13, align 8
  %104 = icmp ne %struct.icp_qat_uof_batch_init* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %13, align 8
  %107 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %106, i32 0, i32 2
  %108 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %107, align 8
  store %struct.icp_qat_uof_batch_init* %108, %struct.icp_qat_uof_batch_init** %12, align 8
  %109 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %13, align 8
  %110 = call i32 @kfree(%struct.icp_qat_uof_batch_init* %109)
  %111 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %12, align 8
  store %struct.icp_qat_uof_batch_init* %111, %struct.icp_qat_uof_batch_init** %13, align 8
  br label %102

112:                                              ; preds = %102
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.icp_qat_uof_batch_init**, %struct.icp_qat_uof_batch_init*** %9, align 8
  %117 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %116, align 8
  %118 = call i32 @kfree(%struct.icp_qat_uof_batch_init* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %119, %100, %30
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.icp_qat_uof_batch_init* @kzalloc(i32, i32) #1

declare dso_local i64 @qat_hal_get_ins_num(...) #1

declare dso_local i32 @kfree(%struct.icp_qat_uof_batch_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
