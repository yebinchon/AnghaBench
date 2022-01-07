; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32 }
%struct.fsi_msg = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@FSI_CRC_ERR_RETRIES = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error %d sending command\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ECRC retry %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*, i32, %struct.fsi_msg*, i64, i8*)* @fsi_master_acf_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_acf_xfer(%struct.fsi_master_acf* %0, i32 %1, %struct.fsi_msg* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.fsi_master_acf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsi_msg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fsi_msg* %2, %struct.fsi_msg** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* %9, align 8
  %16 = shl i64 %15, 3
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %52, %5
  %18 = load i32, i32* %12, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @FSI_CRC_ERR_RETRIES, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %17
  %23 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %24 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @send_request(%struct.fsi_master_acf* %23, %struct.fsi_msg* %24, i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ESHUTDOWN, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %36 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  br label %61

41:                                               ; preds = %22
  %42 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @handle_response(%struct.fsi_master_acf* %42, i32 %43, i64 %44, i8* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %61

52:                                               ; preds = %41
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  %55 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %56 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = call i32 @msleep(i32 1)
  br label %17

61:                                               ; preds = %51, %40, %17
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @send_request(%struct.fsi_master_acf*, %struct.fsi_msg*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @handle_response(%struct.fsi_master_acf*, i32, i64, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
