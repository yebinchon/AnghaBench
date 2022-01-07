; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_batch_wr_lm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_batch_wr_lm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.icp_qat_uof_batch_init = type { i32, i8, i32, i32*, %struct.icp_qat_uof_batch_init* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qat_hal_batch_wr_lm(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, %struct.icp_qat_uof_batch_init* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.icp_qat_uof_batch_init*, align 8
  %8 = alloca %struct.icp_qat_uof_batch_init*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.icp_qat_uof_batch_init* %2, %struct.icp_qat_uof_batch_init** %7, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %7, align 8
  %18 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %17, i32 0, i32 4
  %19 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %18, align 8
  store %struct.icp_qat_uof_batch_init* %19, %struct.icp_qat_uof_batch_init** %8, align 8
  %20 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %7, align 8
  %21 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %25 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %23, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %32 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %30, %3
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @kmalloc_array(i32 %37, i32 4, i32 %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %96

45:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %49, %45
  %47 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %8, align 8
  %48 = icmp ne %struct.icp_qat_uof_batch_init* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %8, align 8
  %51 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 4
  store i8 %52, i8* %6, align 1
  %53 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %8, align 8
  %54 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %14, align 4
  %56 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %8, align 8
  %57 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %15, align 8
  %59 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %8, align 8
  %60 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %16, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = call i64 @qat_hal_concat_micro_code(i32* %62, i32 %63, i32 %64, i32 %65, i32* %66)
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %8, align 8
  %73 = getelementptr inbounds %struct.icp_qat_uof_batch_init, %struct.icp_qat_uof_batch_init* %72, i32 0, i32 4
  %74 = load %struct.icp_qat_uof_batch_init*, %struct.icp_qat_uof_batch_init** %73, align 8
  store %struct.icp_qat_uof_batch_init* %74, %struct.icp_qat_uof_batch_init** %8, align 8
  br label %46

75:                                               ; preds = %46
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 65536, i32* %86, align 4
  %87 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %88 = load i8, i8* %6, align 1
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @qat_hal_exec_micro_init_lm(%struct.icp_qat_fw_loader_handle* %87, i8 zeroext %88, i32 0, i32* %12, i32* %89, i32 %90)
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %81, %78, %75
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @kfree(i32* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %42
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @qat_hal_concat_micro_code(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @qat_hal_exec_micro_init_lm(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
