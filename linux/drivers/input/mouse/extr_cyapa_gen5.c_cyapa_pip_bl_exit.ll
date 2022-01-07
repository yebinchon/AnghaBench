; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_bl_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_bl_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }

@__const.cyapa_pip_bl_exit.bl_gen5_bl_exit = private unnamed_addr constant [13 x i32] [i32 4, i32 0, i32 11, i32 0, i32 64, i32 0, i32 1, i32 59, i32 0, i32 0, i32 32, i32 199, i32 23], align 16
@cyapa_sort_pip_bl_exit_data = common dso_local global i32 0, align 4
@PIP_BL_FAIL_EXIT_RESP_LEN = common dso_local global i32 0, align 4
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_BL_RESP_REPORT_ID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_pip_bl_exit(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca [13 x i32], align 16
  %5 = alloca [11 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %8 = bitcast [13 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([13 x i32]* @__const.cyapa_pip_bl_exit.bl_gen5_bl_exit to i8*), i64 52, i1 false)
  store i32 44, i32* %6, align 4
  %9 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %10 = getelementptr inbounds [13 x i32], [13 x i32]* %4, i64 0, i64 0
  %11 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 0
  %12 = load i32, i32* @cyapa_sort_pip_bl_exit_data, align 4
  %13 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %9, i32* %10, i32 52, i32* %11, i32* %6, i32 5000, i32 %12, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PIP_BL_FAIL_EXIT_RESP_LEN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %24 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PIP_BL_RESP_REPORT_ID, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %18
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %43

31:                                               ; preds = %22
  %32 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %43

40:                                               ; preds = %35, %31
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %39, %28, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i32*, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
