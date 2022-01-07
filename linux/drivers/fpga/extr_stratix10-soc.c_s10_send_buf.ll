; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_send_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_send_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.s10_priv* }
%struct.s10_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@NUM_SVC_BUFS = common dso_local global i64 0, align 8
@SVC_BUF_LOCK = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SVC_BUF_SIZE = common dso_local global i64 0, align 8
@COMMAND_RECONFIG_DATA_SUBMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error while sending data to service layer (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, i8*, i64)* @s10_send_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s10_send_buf(%struct.fpga_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpga_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.s10_priv*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %15 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %14, i32 0, i32 0
  %16 = load %struct.s10_priv*, %struct.s10_priv** %15, align 8
  store %struct.s10_priv* %16, %struct.s10_priv** %8, align 8
  %17 = load %struct.s10_priv*, %struct.s10_priv** %8, align 8
  %18 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %9, align 8
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %37, %3
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @NUM_SVC_BUFS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32, i32* @SVC_BUF_LOCK, align 4
  %27 = load %struct.s10_priv*, %struct.s10_priv** %8, align 8
  %28 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @test_and_set_bit_lock(i32 %26, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %13, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %13, align 8
  br label %21

40:                                               ; preds = %35, %21
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @NUM_SVC_BUFS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @ENOBUFS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %91

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @SVC_BUF_SIZE, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  br label %55

53:                                               ; preds = %47
  %54 = load i64, i64* @SVC_BUF_SIZE, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %11, align 8
  %57 = load %struct.s10_priv*, %struct.s10_priv** %8, align 8
  %58 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load %struct.s10_priv*, %struct.s10_priv** %8, align 8
  %69 = load i32, i32* @COMMAND_RECONFIG_DATA_SUBMIT, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @s10_svc_send_msg(%struct.s10_priv* %68, i32 %69, i8* %70, i64 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %55
  %76 = load %struct.device*, %struct.device** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @SVC_BUF_LOCK, align 4
  %80 = load %struct.s10_priv*, %struct.s10_priv** %8, align 8
  %81 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @clear_bit_unlock(i32 %79, i32* %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %4, align 4
  br label %91

88:                                               ; preds = %55
  %89 = load i64, i64* %11, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %75, %44
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @s10_svc_send_msg(%struct.s10_priv*, i32, i8*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
