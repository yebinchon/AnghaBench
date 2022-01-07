; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_init_nn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_init_nn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ICP_QAT_UCLO_MAX_CTX = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [24 x i8] c"QAT: write neigh error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qat_hal_init_nn(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i16 %3, i16* %10, align 2
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i8, i8* %9, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %51

20:                                               ; preds = %5
  store i8 0, i8* %13, align 1
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i8, i8* %13, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @ICP_QAT_UCLO_MAX_CTX, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load i8, i8* %13, align 1
  %29 = bitcast i8* %9 to i64*
  %30 = call i32 @test_bit(i8 zeroext %28, i64* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %47

33:                                               ; preds = %27
  %34 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %7, align 8
  %35 = load i8, i8* %8, align 1
  %36 = load i8, i8* %13, align 1
  %37 = load i16, i16* %10, align 2
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @qat_hal_put_rel_nn(%struct.icp_qat_fw_loader_handle* %34, i8 zeroext %35, i8 zeroext %36, i16 zeroext %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %51

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i8, i8* %13, align 1
  %49 = add i8 %48, 1
  store i8 %49, i8* %13, align 1
  br label %21

50:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %42, %17
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @test_bit(i8 zeroext, i64*) #1

declare dso_local i32 @qat_hal_put_rel_nn(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i16 zeroext, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
